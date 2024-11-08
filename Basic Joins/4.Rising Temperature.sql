select id from (
select *, lag(temperature) over(order by id) as "next"
from Weather) t
where t.temperature > t.next and t.next is not null
