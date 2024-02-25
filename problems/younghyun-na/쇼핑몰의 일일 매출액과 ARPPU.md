```mysql
select date(a.order_purchase_timestamp) as dt,
    count(distinct a.customer_id) as pu,
    round(sum(b.payment_value), 2) as revenue_daily,
    round(sum(b.payment_value) / count(distinct a.customer_id), 2) as arppu
from olist_orders_dataset a
join olist_order_payments_dataset b on a.order_id = b.order_id
where a.order_purchase_timestamp >= '2018-01-01'
group by dt
order by dt
```