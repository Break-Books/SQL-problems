with each_day as(
    select
        visited_on,
        sum(amount) amount
    from
        customer
    group by
        visited_on
)

select
    c1.visited_on,
    sum(c2.amount) amount,
    round(avg(c2.amount), 2) average_amount
from
    each_day as c1
join
    each_day as c2 
on c2.visited_on <= c1.visited_on and
    datediff(c1.visited_on, c2.visited_on) < 7
group by
    c1.visited_on
having
    count(*) = 7
order by
    visited_on asc;
