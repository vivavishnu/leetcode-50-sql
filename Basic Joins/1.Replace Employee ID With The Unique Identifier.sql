select t1.unique_id,t2.name from EmployeeUNI t1
right join Employees t2
on t1.id = t2.id
