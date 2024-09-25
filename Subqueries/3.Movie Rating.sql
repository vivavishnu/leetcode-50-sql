(select name as "results" from MovieRating t1
left join Users t2
on t1.user_id = t2.user_id 
group by t1.user_id
order by count(*) desc , name asc limit 1)
union all
(select t2.title as "results" from MovieRating t1
left join Movies t2
on t1.movie_id = t2.movie_id
where created_at BETWEEN '2020-02-01' AND '2020-02-29'
group by t1.movie_id
order by avg(t1.rating) desc, t2.title asc limit 1)
