```mysql
select (case when mod(id, 2) = 0 then id - 1
                   when len = id then id
                   else id + 1
                   end) as id,
        student
from Seat, (select count(*) as len from Seat) as cnt
order by id asc;
```

[문제] https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50
