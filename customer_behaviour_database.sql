create database if not exists customer_behaviour;

use customer_behaviour;

create table customer_data (
customer_id int ,
age int not null,
gender text not null,
item_purchased text not null,
category text not null,
purchade_amount int not null,
location  text not null,
size text not null,
color text not null,
season text not null,
review_rating float not null,
subscription_status text not null,
shipping_type text not null,
discount_applied text not null,
promo_code_used text not null,
previous_purchases int not null,
payment_method text not null,
frequency_of_purchases text not null,
age_group text not null,
purchase_frequency_days int not null,
primary key(customer_id) ); 

