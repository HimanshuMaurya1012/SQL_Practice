# Write your MySQL query statement below
select w.id
from weather w
join weather v
on datediff(w.recordDate,v.recordDate)=1
where w.temperature > v.temperature;
