use ecommerce_db;
-- count total customer
SELECT COUNT(*) AS total_customers
FROM Customer;

-- Find the average price of all products
select avg(price) as average_price
from product;

-- Find the total sum of all payments
select sum(amount) total_payment
from payment; 

-- Get the highest product price
select max(price) as highest_price
from product; 
 
 -- Get the lowest product price
 select min(price) as lowest_price
 from product; 
 
 
-- Group customers by address 
select address, count(*) as customer_count
from customer
group by address;  

-- Count of payment methods used each day
select payment_date, count(method) as method_used
from payment
group by payment_date;

-- total quantity sold per product
SELECT product_id, SUM(quantity) AS total_sold
FROM OrderItem
GROUP BY product_id; 

-- Count of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM Product
GROUP BY category_id; 

--  Payment total by order ID
SELECT order_id, SUM(amount) AS total_paid
FROM Payment
GROUP BY order_id;




