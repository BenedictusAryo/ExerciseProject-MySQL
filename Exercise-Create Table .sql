/*
Udemy Course Practice 

Course : SQL - MySQL for Data Analytics and Bussiness Inteligence
365 Careers

Benedict Aryo

*/

/* 
Create Database sales
Using "IF NOT EXISTS" */

create database	if not exists sales;

-- Select sales database as a working area
use sales;

--Create table sales Tutorial :

CREATE TABLE sales
(
purchase_number INT NOT NULL PRIMARY KEY auto_increment,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL
);

--Create Table "customers" exercise

CREATE TABLE customers
(
customer_id INT NOT NULL PRIMARY KEY auto_increment,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255),
number_of_complaints INT
);

/*
CONSTRAINTS PRIMARY key

*/

-- Exercise Select Table
select * from sales.sales;

-- Exercise Delete table sales
drop table sales;

-- Another way to select Primary key column :
CREATE TABLE sales
(
 purchase_number INT NOT NULL auto_increment,
 date_of_purchase DATE NOT NULL,
 customer_id INT,
 item_code VARCHAR(10) NOT NULL,
primary key (purchase_number)
);


-- Exercise Primary key constraint :
drop table customers;

-- Exercise Create Table Constraint Primary Key
create table customers
(
 customer_id int,
 first_name varchar(255),
 last_name varchar(255),
 email_address varchar(255),
 number_of_complaints int,
primary key(customer_id)
);

drop table if exists items;

create table items
(
 item_id varchar(255),
 item varchar(255),
 unit_price numeric(10,2),
 company_id varchar(255),
primary key(item_id)
 );
  
drop table if exists companies;

create table companies
(
 company_id varchar(255),
 company_name varchar(255),
 headquarter_phone_number int(12),
primary key(company_id)
 );
 
 /*
 Exercise FOREIGN KEY Constraint
 
 */
 
 -- FOREIGN KEY Constraint 

drop table sales;

CREATE TABLE sales
(
 purchase_number INT NOT NULL auto_increment,
 date_of_purchase DATE NOT NULL,
 customer_id INT,
 item_code VARCHAR(10) NOT NULL,
primary key (purchase_number),
foreign key (customer_id) references customers(customer_id) on delete cascade
);

-- Cara kedua :

alter table sales
add foreign key (customer_id) references customers(customer_id) on delete cascade;





