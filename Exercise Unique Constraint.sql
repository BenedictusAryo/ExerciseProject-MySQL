
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
 


-- UNIQUE COnstraint - exercise
drop table if exists customers;
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
-- ---------------------------------
-- Exercise DEFAULT Key
-- ---------------------------------
-- ---------------------------------
drop table if exists companies;
create table companies (
 company_id varchar(255),
 company_name varchar(255) default 'X',
 headquarters_phone_number int(12),
 unique key (headquarters_phone_number)
 );
 
 drop table if exists companies;
 

########################################################## 
 /*
 SECTION :
 NOT NULL Constraint
 */
##########################################################

 -- NOT NULL Constraint 
 
# 				  Primary Key | Unique Key
-- 				   -------------------------
#   Null Values       No      |    Yes

CREATE TABLE companies 
(
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY (company_id)
);

# Drop Not Null Constraint
alter table companies
modify column company_name varchar(255) null; 

# Change to Not Null
alter table companies
change column company_name company_name varchar(255) not null;

#Check the not null constraint
insert into companies (headquarters_phone_number,company_name) 
values ('+1 (202) 555-0196','Company A')
;

-- Exercise
alter table companies
modify headquarters_phone_number varchar(255) null;

alter table companies
change column headquarters_phone_number headquarters_phone_number varchar(255) not null;



