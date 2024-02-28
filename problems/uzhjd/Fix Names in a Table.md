```mysql
SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1,1)), LOWER(SUBSTR(name, 2))) 
AS name
FROM users
ORDER BY user_id ASC
```

[ 문제 ] https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50
