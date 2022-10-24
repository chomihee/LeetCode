# Write your MySQL query statement below

select product_id, product_name 
from Product 
where product_id in (

select product_id 
from Sales  
where product_id not in (
    select product_id 
    from Sales 
    where date_format(sale_date, '%Y-%m-%d') > date_format('2019-03-31', '%Y-%m-%d')
    or date_format(sale_date, '%Y-%m-%d') < date_format('2019-01-01', '%Y-%m-%d')
)
    )