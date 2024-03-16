>>> 더 빠름
```mysql
delete from Person
where id not in (select sub.sub_id
                 from (select min(id) as sub_id
                       from Person
                       group by email
                       order by id) sub);
```

```mysql
delete p1 from Person p1 join Person p2 on p1.email = p2.email
where p1.id > p2.id;
```

[ 문제 ] https://leetcode.com/problems/delete-duplicate-emails/?envType=study-plan-v2&envId=top-sql-50
