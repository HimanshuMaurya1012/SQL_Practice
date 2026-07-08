# Write your MySQL query statement below
with first_visit as (select customer_id, min(order_date) as first_order
from delivery 
group by customer_id
)

select round(AVG(case when  customer_pref_delivery_date = order_date then 1 else 0 end)*100,2) as immediate_percentage 
from delivery d
join first_visit f
on d.customer_id = f.customer_id
and d.order_date = f.first_order