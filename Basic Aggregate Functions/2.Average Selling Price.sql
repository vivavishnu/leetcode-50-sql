select t1.product_id,IFNULL(round(sum(t1.price*t2.units)/sum(t2.units),2) , 0) as "average_price" from Prices t1
left join UnitsSold t2
on (t2.purchase_date between t1.start_date and t1.end_date) and t1.product_id = t2.product_id 
group by t1.product_id 

