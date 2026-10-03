-- AMAZON RETAIL SALES & BUSINESS PERFORMANCE ANALYSIS
-- SQL Analysis using PostgreSQL

--1. DATASET & TABLE SETUP

create table amazon (
in_dex serial primary key,
Order_ID varchar (30),
Da_te date,
Ye_ar integer,
Mo_nth integer,
Status varchar (50),	
Fulfilment varchar(20),
Sales_channel varchar (50),
ship_service_level varchar (50),
Category varchar(30),
Si_ze varchar(20),	
Courier_Status varchar(30),	
Qty integer,
currency varchar (10),
Amount	numeric (10,2),
ship_city varchar (30),	
ship_state varchar (30),
ship_postal_code numeric (10,2),	
ship_country varchar(20),	
B2B boolean,	
fulfilled_by varchar(20)
);

--2. DATA CLEANING & PREPARATION

-- Increase ship_city length
ALTER TABLE amazon
ALTER COLUMN ship_city TYPE VARCHAR(100);


-- Convert amount from text to numeric
ALTER TABLE amazon
ALTER COLUMN amount TYPE NUMERIC
USING CAST(REPLACE(amount, ',', '') AS NUMERIC);


-- What is the total sales amount generated?

select sum(amount) as total_sale_amount from
amazon;

-- How did sales perform month by month?

SELECT
    mo_nth,
    SUM(amount) AS total_sales
FROM amazon
GROUP BY mo_nth
ORDER BY mo_nth;

-- How many unique orders were placed?

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM amazon;

-- What is the average order value?

SELECT
    SUM(amount) / COUNT(DISTINCT order_id) AS average_order_value
FROM amazon;

-- Which categories generate the highest sales?

SELECT
    category,
    SUM(amount) AS total_sales
FROM amazon
GROUP BY category
ORDER BY total_sales DESC;

-- Which states generate the highest sales?

SELECT
    ship_state,
    SUM(amount) AS total_sales
FROM amazon
where amount is not null
GROUP BY ship_state
ORDER BY total_sales DESC;

-- Which fulfilment method handles the most orders?

SELECT
    fulfilment,
    COUNT(DISTINCT order_id) AS total_orders
FROM amazon
GROUP BY fulfilment
ORDER BY total_orders DESC;
-- What percentage of orders were cancelled?

SELECT
    COUNT(DISTINCT CASE
        WHEN status = 'Cancelled' THEN order_id
    END) * 100.0 / COUNT(DISTINCT order_id) AS cancellation_rate
FROM amazon;

-- How do B2B and B2C sales compare?

SELECT
    b2b,
    SUM(amount) AS total_sales
FROM amazon
GROUP BY b2b
ORDER BY total_sales DESC;

-- Which order status has the highest number of orders??

SELECT
    status,
    COUNT(DISTINCT order_id) AS total_orders
FROM amazon
GROUP BY status
ORDER BY total_orders DESC;