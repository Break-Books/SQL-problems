```mysql
(select name as results
from MovieRating r join Users u on r.user_id = u.user_id
group by r.user_id
order by count(r.user_id) desc, name
limit 1)

union all

(select title as results
from MovieRating r join Movies m on r.movie_id = m.movie_id
where date_format(created_at, "%Y-%m") = '2020-02'
group by r.movie_id
order by avg(rating) desc, title
limit 1);
```

[ 문제 ] https://leetcode.com/problems/movie-rating/?envType=study-plan-v2&envId=top-sql-50
