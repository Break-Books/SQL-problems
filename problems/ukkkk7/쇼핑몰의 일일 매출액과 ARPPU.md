```sql
SELECT
  date(oo.order_purchase_timestamp) as dt,
  count(DISTINCT oo.customer_id) as pu,
  round(sum(op.payment_value),2) as revenue_daily,
  round(sum(op.payment_value)/count(DISTINCT(oo.customer_id)),2) as arppu
FROM olist_orders_dataset oo
  LEFT JOIN olist_order_payments_dataset op
    ON oo.order_id = op.order_id
WHERE oo.order_purchase_timestamp > '2018-01-01'
  GROUP BY dt
  ORDER BY dt;
```


문제: https://solvesql.com/problems/daily-arppu/
