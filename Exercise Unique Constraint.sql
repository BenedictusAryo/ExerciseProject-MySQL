
########################################################## 
 /*
 SECTION :
Unique Key 
 */
##########################################################

 -- UNIQUE KEY Constraint 
 
use sys;
drop database sales;
create database sales;
use sales;
drop table if exists customers;

create table customers (
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
 primary key (customer_id),
 unique key (email_address)
 );
 
-- Cara kedua
 alter table customers
 add unique key(email_address);
 
-- Delete unique key ( dengan cara drop index)
 alter table customers
 drop index email_address;
 
 -- Exercise
drop table customers;

create table customers (
 customer_id int auto_increment,
 first_name varchar(255),
 last_name varchar(255),
 email_address varchar(255),
 number_of_complaints int,
primary key (customer_id)
);

-- Add Column Gender 
alter table customers
add column gender enum('M','F') after last_name;

-- Insert Value
insert into customers (first_name, last_name, gender, email_address, number_of_complaints)
values('John','Mackinley','M','john.mckinley@365careers.com', 0);

select * from customers;


########################################################## 
 /*
 SECTION :
 Exercise DEFAULT KEY Constraint
 */
##########################################################

 -- DEFAULT KEY Constraint 
 # When customers first create account default value for 'number_of_complaints'
 # should be 0, this can also be assigned when creating a table
 
 drop table if exists customers;
 
 create table customers (
  customer_id int auto_increment,
  first_name varchar(255),
  last_name varchar(255),
  email_address varchar(255),
  number_of_complaints int default 0,
primary key (customer_id)
);

-- Cara kedua
Alter table customers
change column number_of_complaints number_of_complaints int default 0;

-- Insert values to check number_of_complaints default values
insert into customers (first_name, last_name, gender)
values ('Peter', 'Figaro', 'M');

select * from customers;

-- to drop default value 
alter table customers
alter column number_of_complaints drop default;

-- ---------------------------------
-- Exercise DEFAULT Key
-- ---------------------------------
drop table if exists companies;
create table companies (
 company_id varchar(255),
 company_name varchar(255) default 'X',
 headquarters_phone_number int(12),
 unique key (headquarters_phone_number)
 );
 
 insert into companies (company_id, headquarters_phone_number)
 values ('C_1', 1231234)
 values ('C_2', 1234568);
 
 select * from companies;
 