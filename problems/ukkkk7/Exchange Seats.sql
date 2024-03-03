select
case 
  when mod(id, 2) = 0 then id-1
  when id = (select max(id) from seat) then id
  else id +1 end as id,
  student
from seat 
order by id;

//조건문을 생각하지 못해 헤맨 문제
출처: https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50
