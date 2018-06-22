/*
Udemy Course Practice 

Course : SQL - MySQL for Data Analytics and Bussiness Inteligence
365 Careers

Benedict Aryo

*/

/* Create Database sales */
/* Using "IF NOT EXISTS"*/

create database	if not exists sales;
/* Select sales database as a working area */

use sales;

/* Create table sales Tutorial :*/

CREATE TABLE sales
(
purchase_number INT NOT NULL PRIMARY KEY auto_increment,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL
);

/* Create Table "customers" exercise */

CREATE TABLE customers
(
customer_id INT NOT NULL PRIMARY KEY auto_increment,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255),
number_of_complaints INT
);





