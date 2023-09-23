select * from pizza_sales

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_sales

select sum(quantity) as Total_Pizza_Sales From pizza_sales

select count(distinct order_id) as Total_Orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2))  / 
cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) from pizza_sales

select datename(DW, order_date) as order_day, count(distinct order_id) as Total_orders
from pizza_sales
group by DATENAME(DW, order_date)

select datename(MONTH, order_date) as Month_Name, Count(distinct order_id)
from pizza_sales
group by DATENAME(Month, order_date)

select pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 / (select sum(total_price) from pizza_sales where MONTH(order_date) = 1)  as PCT
from pizza_sales
where MONTH(order_date) = 1 -- its for month of jan
group by pizza_category

select pizza_size, sum(total_price) as Total_Sales, sum(total_price) * 100 / (select sum(total_price) from pizza_sales where datepart(quarter, order_date) = 1)  as PCT
from pizza_sales
where datepart(quarter, order_date) = 1
group by pizza_size
order by PCT DESC