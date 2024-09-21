select query_name,round(avg(rating/position),2) as "quality", round(avg(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100,2) as "poor_query_percentage" 
from Queries
group by query_name 
having query_name is not null
