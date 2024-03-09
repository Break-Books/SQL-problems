select
  user_id, 
  concat(upper(left(name,1)), lower(substr(name,2))) as name 
from Users
order by user_id;

출처: https://leetcode.com/problems/fix-names-in-a-table/submissions/1191293739/?envType=study-plan-v2&envId=top-sql-50
