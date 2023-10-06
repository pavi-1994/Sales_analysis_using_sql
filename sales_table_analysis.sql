create database salesdb; 

create table sales(
transaction_id int primary key auto_increment,
product_id int,
quantity int,
price_per_unit int,
transaction_date date
);


insert into sales (transaction_id,product_id,quantity,price_per_unit,transaction_date)
values( 1,101, 5,  8.75, '2023-09-01'),
    ( 2,104, 6,28.50, '2023-09-02'),
    (3,105, 9, 5.5, '2023-08-23'),
    (4 ,107, 32, 6.35, '2023-09-22'),
    (5, 108, 31, 4.25, '2023-09-21'),
    (6, 102, 53, 18.05, '2023-09-28'),
    (7, 103, 34, 12.00, '2023-07-21'),
    ( 8,105, 13, 5.5, '2023-08-12'),
    (9, 106, 32, 8.75, '2023-05-26'),
    ( 10,107, 72,  6.35, '2023-06-06'),
    (11, 101, 67, 8.75, '2023-05-01'),
    ( 12,102, 30, 18.05, '2023-06-17'),
    ( 13,106, 25, 82.75, '2023-05-27'),
    ( 14,108, 56, 4.25, '2023-09-30'),
    ( 15,109, 100, 3.75, '2023-08-28'),
    ( 16,110, 58, 11.75, '2023-09-08'),
    ( 17,104, 67, 28.50, '2023-05-02'),
    (18, 105, 73, 5.5, '2023-09-04'),
    (19, 101, 38, 8.75, '2023-08-13'),
    ( 20,103, 23, 12.00, '2023-07-02'),
    ( 21,108, 30, 4.25, '2023-06-11'),
    ( 22,104, 93, 28.50, '2023-09-15'),
    ( 23,106, 56, 82.75, '2023-07-06'),
    ( 24,109, 52, 3.75, '2023-08-19'),
    (25, 103, 11, 12.00, '2023-06-24'),
    (26, 102, 2, 18.05, '2023-07-22'),
    ( 27,107, 78,  6.35, '2023-09-12'),
    ( 28,108, 32, 4.25, '2023-06-02'),
    ( 29,109, 63, 3.75, '2023-07-18'),
    ( 30,110, 33, 11.75, '2023-09-02'),
    ( 31,101, 6, 8.75, '2023-08-21'),
    ( 32,102, 9, 18.05, '2023-08-02'),
    ( 33,103, 7, 12.00, '2023-09-30');
-- -------------------------------------------------------------------   
    
SELECT 
    *
FROM
    sales;
-- -------------------------------------------------------------------  

-- Total Revenue: 
 SELECT 
    SUM(quantity * price_per_unit) AS total_revenue
FROM
    sales;
-- -------------------------------------------------------------------      
-- Total Quantity Sold:    
 SELECT 
    SUM(quantity )AS total_quantity
FROM
    sales;
 -- -------------------------------------------------------------------     
 -- total quantity sold based on product
     
-- Total Quantity Sold:    
 SELECT 
 product_id,
    SUM(quantity )AS total_quantity
FROM
    sales
    group by product_id
    order by total_quantity desc;
-- -------------------------------------------------------------------      
-- product on high demand
 SELECT 
 product_id,
    SUM(quantity )AS total_quantity
FROM
    sales
    group by product_id
    order by total_quantity desc
    limit 1;
-- -------------------------------------------------------------------     
-- product which is on low demand
 SELECT 
    product_id, SUM(quantity) AS total_quantity
FROM
    sales
GROUP BY product_id
ORDER BY total_quantity 
LIMIT 1; 
-- -------------------------------------------------------------------  
-- Total Sales by Product

SELECT 
    product_id, (quantity * price_per_unit) AS total_sales
FROM
    sales
GROUP BY product_id
ORDER BY total_sales DESC;
-- -------------------------------------------------------------------  
-- Sales by by date

select  transaction_date ,sum(quantity * price_per_unit) AS total_sales_by_date
from 
sales
group by transaction_date
order by total_sales_by_date desc;
-- -------------------------------------------------------------------  
-- Sales by by month

select  Month(transaction_date) ,sum(quantity * price_per_unit) AS total_sales_by_month
from 
sales
group by month(transaction_date)
order by total_sales_by_month desc;
-- -------------------------------------------------------------------  

-- month with highest sale

select  Month(transaction_date) ,sum(quantity * price_per_unit) AS total_sales_by_month
from 
sales
group by month(transaction_date)
order by total_sales_by_month desc
limit 1;

-- Month with lowest sales
select  Month(transaction_date) ,sum(quantity * price_per_unit) AS total_sales_by_month
from 
sales
group by month(transaction_date)
order by total_sales_by_month 
limit 1;
-- -------------------------------------
-- Average Order Value
-- Top 5
SELECT 
    product_id,
    ROUND(AVG(quantity * price_per_unit), 2) AS average_order_value
FROM
    sales
GROUP BY product_id
ORDER BY average_order_value DESC
limit 5;
-- -------------------------------------------------------------------  
-- bottom 5
SELECT 
    product_id,
    ROUND(AVG(quantity * price_per_unit), 2) AS average_order_value
FROM
    sales
GROUP BY product_id
ORDER BY average_order_value 
limit 5;
-- ------------------------------------------------------------------- 
-- product with Highest revenue
SELECT 
    product_id,
    sum(quantity * price_per_unit) AS revenue_value
FROM
    sales
GROUP BY product_id
ORDER BY revenue_value DESC
limit 1; 
-- -----------------------------------------------------
-- product with lowest revenue
SELECT 
    product_id,
    sum(quantity * price_per_unit) AS revenue_value
FROM
    sales
GROUP BY product_id
ORDER BY revenue_value 
limit 1; 
-- ---------------------------------------------------
-- Maximum and minimum transaction
SELECT 
    MAX(quantity * price_per_unit) AS maximum_transaction_value,
    MIN(quantity * price_per_unit) AS minimum_transaction_value
FROM
    sales;
-- ------------------------------------------------------
-- Percentage of Total Revenue by Product:
SELECT 
    product_id,
    (sum(quantity * price_per_unit)/(select sum(quantity * price_per_unit) from sales)*100)
    AS percentage_revenue_value
FROM
    sales
GROUP BY product_id
ORDER BY percentage_revenue_value desc; 
-- ------

