
# first of all we import pandas and numpy to clean the data 
import pandas as pd


# read raw data file with help of pandas and put data into 'df1' dataframe
df1 = pd.read_csv(r"C:\Users\jatin\OneDrive\Documents\vikas\custmor_behavior\customer-trends-data-analysis-SQL-Python-PowerBI-main\customer_shopping_behavior.csv", encoding='latin')


# print some data to look data is loaded or not 
print(df1.head())


# make a copy of dataframe 'df1'
df = df1.copy()

print("df data is")
print(df.head(6))



# to look the columns. is all columns are in same formate
print(df.columns)



# columns are not in same formate

# to remove blank space 
df.columns = df.columns.str.strip()


# to convert all columns into lower case
df.columns = df.columns.str.lower()


# to reolace blank space by _
df.columns = df.columns.str.replace(' ','_')


# to look the columns
print(df.columns)

# to rename the columns which has special character
df = df.rename(columns={'ï»¿customer_id':'customer_id',
                        'purchase_amount_(usd)': 'purchade_amount'})

print(df.columns)


# to get the information of data
print(df.info())


# to get the statistics of numeric column of data
print(df.describe())


# to check the null values in columns
print(df.isnull().sum())


# to fill the null values of review_rating columns by median of review_rating by category wise
df["review_rating"] = df["review_rating"].fillna(df.groupby("category")["review_rating"].transform("median"))


# to look is more null values are present in data
print(df.isnull().sum())


# create a new column age_group
group = [ 'young adult','adult','middle aged','senior']
df['age_group'] = pd.qcut(df['age'], q=4, labels=group)


# to look data of new group
print(df[['age','age_group']])


# create a new column purchase_frequency_days
frequency_mappig = {'Fortnightly' : 14,
                    'Weekly' : 7,
                    'Monthly' : 30,
                    'Quarterly' : 90,
                    'Bi-Weekly' : 14,
                    'Annually' : 365,
                    'Every 3 Months' : 90}

df['purchase_frequency_days'] = df['frequency_of_purchases'].map(frequency_mappig)
print(df[['purchase_frequency_days', 'frequency_of_purchases']])


# store cleaned data in customr_shoping_cleaned_data.csv file
df.to_csv(r'C:\Users\jatin\OneDrive\Documents\vikas\custmor_behavior\customer_shoping_cleaned_data.csv', index=False)


print('cleaned data is sucessfully stored in given file')