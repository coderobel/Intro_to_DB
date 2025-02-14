-- "CREATE DATABASE IF NOT EXISTS alx_book_store"
CREATE DATABASE alx_book_store;

USE alx_book_store;
-- "CREATE TABLE ", "Authors", "author_id ", "author_name"
CREATE TABLE Authors(
auhtor_id INT PRIMARY KEY,
author_name VARCHAR(215));

CREATE TABLE Books(
book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(auhtor_id));

CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT);

CREATE TABLE Orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));

CREATE TABLE Order_Details(
orderdetail_id INT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
-- "FOREIGN KEY (book_id) REFERENCES Books(book_id)"
FOREIGN KEY (book_id)  REFERENCES Books(book_id));

INSERT INTO customer(customer_id,customer_name,email,
address) VALUES 
(2,'Blessing Malik','bmalik@sandtech.com','124 Happiness  Ave.'),
(3,'Obed Ehoneah','eobed@sandtech.com','125 Happiness  Ave.'),
( 4,'Nehemial Kamolu','nkamolu@sandtech.com','126 Happiness  Ave.');

