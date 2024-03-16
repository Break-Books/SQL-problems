```mysql
with p as (select product_id, new_price as price
           from Products
           where (change_date, product_id) in (select max(change_date), product_id
                                               from Products
                                               where change_date <= '2019-08-16'
                                               group by product_id))

select *
from p
union
select distinct product_id, 10
from Products
where product_id not in (select product_id
                         from p);
```

[ 문제 ] https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50
