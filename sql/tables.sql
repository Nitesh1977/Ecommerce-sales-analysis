create database ecommerce_project;
use ecommerce_project;





show tables;
select * from customers ; 
select * from orders ; 
CREATE TABLE order_items (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    price DOUBLE
);
SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE 'C:\Users\nites\OneDrive\Desktop\projects\sql +excel\E-commerce Sales Analysis using SQL and Excel/order_items.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(order_id, product_id, price);