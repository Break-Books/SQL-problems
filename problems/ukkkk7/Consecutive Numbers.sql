select
distinct(L1.num) as consecutiveNums 
from Logs L1
    left join Logs L2
        on L1.id+1 = L2.id     
    left join Logs L3
        on L2.id+1 = L3.id 
where L1.num = L2.num and L2.num = L3.num;

//기존 테이블 id에 + 1씩한 값을 활용하는 접근방식을 생각하지 못해 도움받아 해결,,

출처: https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50
