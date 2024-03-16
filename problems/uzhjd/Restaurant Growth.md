```mysql
# 1 (X)
-- select visited_on,
--        sum(amount) over (order by visited_on range between interval 6 day preceding and current row) as amount,
--        round(sum(amount) over(order by visited_on range between interval 6 day preceding and current row) / 7, 2) as average_amount
-- from (select sum(amount) as amount, visited_on, min(visited_on) OVER () AS first_date
--       from Customer
--       group by visited_on) days
-- where visited_on >= first_date + 6
-- order by visited_on asc;

# 2
WITH cte AS (
    SELECT DISTINCT visited_on, 
           SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount, 
           MIN(visited_on) OVER () AS first_date
    FROM Customer
)
SELECT visited_on, amount, ROUND(amount/7, 2) AS average_amount
FROM cte
WHERE visited_on >= first_date + 6;

# 3
SELECT visited_on, amount, ROUND(amount/7,2) as average_amount
FROM (SELECT DISTINCT visited_on, 
             SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW)amount, 
             MIN(visited_on) OVER() 1st_date 
      FROM Customer) t
WHERE visited_on >= 1st_date + 6;
```

[ 문제 ] https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50
