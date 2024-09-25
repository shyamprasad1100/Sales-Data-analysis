select * from df_orders;

--find top 10 highest reveue generating products 
select top 10 product_id,sum(sale_price) as sales
from df_orders
group by product_id
order by sales desc;

--find top 5 highest selling products in each region
with cte as (select region,product_id, sum(sale_price) as sales
from df_orders
group by region, product_id)
select * from (select *, row_number() over (partition by region order by sales desc) as rn
from cte) A
where rn <= 5

--find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
select month(order_date) as order_month,
sum(case when year(order_date)=2022 then sale_price else 0 end)as sales_2022,
sum(case when year(order_date)=2023 then sale_price else 0 end)as sales_2023
from df_orders
group by month(order_date)
order by order_month

--for each category which month had highest sales
with cte as (
select category, format(order_date,'yyyyMM') as mon,
sum(sale_price) as sales
from df_orders
group by category,format(order_date,'yyyyMM'))
select * from ( 
select *, 
row_number() over (partition by category order by sales desc) as rn
from cte) A
where rn = 1

--which sub category had highest growth by profit in 2023 compare to 2022
with cte as (select sub_category,
sum(case when year(order_date)=2022 then profit else 0 end) as year_2022,
sum(case when year(order_date)=2023 then profit else 0 end) as year_2023
from df_orders
group by sub_category)
select top 1 *, (year_2023-year_2022) as growth
from cte
order by growth desc
