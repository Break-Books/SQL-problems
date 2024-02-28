```mysql
select s.user_id, round(avg(IF (action = 'confirmed', 1, 0)), 2) as confirmation_rate
from Signups s left join Confirmations c on s.user_id = c.user_id
group by s.user_id;
```
[ 문제 ] https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
