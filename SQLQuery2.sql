select * from pizza_sales

select pizza_size, sum(total_price) as Total_Sales, sum(total_price) *100 / (select sum(total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_size
order by pct desc

-- top and bottom 5 

select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc

select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue asc

select top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc

select top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity asc

select top 5 pizza_name, count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders desc

select top 5 pizza_name, count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders asc

