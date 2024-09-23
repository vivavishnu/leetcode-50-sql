select t1.employee_id,t1.name,t2.reports_count,t2.average_age from Employees t1
join
(select reports_to,count(reports_to) as "reports_count",round(avg(age)) as "average_age" from Employees t1
where reports_to is not null
group by reports_to) t2
on t2.reports_to = t1.employee_id
order by t1.employee_id
