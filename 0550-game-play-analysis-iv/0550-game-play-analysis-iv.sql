# Write your MySQL query statement below
with first_date as(
select min(event_date) as firstdate,player_id
from activity
group by player_id
)

select round(count(case when datediff(a.event_date,f.firstdate)= 1 then a.player_id end)/count(distinct(a.player_id)),2) as fraction
from first_date f 
left join activity a
on f.player_id = a.player_id