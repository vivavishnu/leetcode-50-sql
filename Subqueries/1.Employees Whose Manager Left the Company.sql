select employee_id from Employees 
where salary < 30000 and manager_id is not null and employee_id not in 
(select t1.employee_id from Employees t1
join Employees t2
on t1.manager_id = t2.employee_id)
order by employee_id
