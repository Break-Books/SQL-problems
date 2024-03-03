```mysql
select distinct l1.num as ConsecutiveNums
from logs l1 join logs l2 on l1.id = l2.id+1
     join logs l3 on l1.id = l3.id + 2
where l1.num = l2.num and l2.num = l3.num;
```

[문제] https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50
