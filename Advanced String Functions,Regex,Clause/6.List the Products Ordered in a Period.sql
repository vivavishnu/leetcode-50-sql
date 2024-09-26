select t2.product_name,sum(t1.unit) as "unit" from Orders t1
join Products t2
on t1.product_id = t2.product_id
where order_date between "2020-02-01" and "2020-02-29"
group by t1.product_id
having sum(t1.unit)>=100
