select t1.customer_id,count(t1.customer_id) as "count_no_trans" from Visits t1
left join Transactions t2
on t1.visit_id = t2.visit_id
where t2.transaction_id is null --transaction_id !important
group by t1.customer_id 

