```sql
select a.item_id, a.item_name
from ITEM_INFO a
join ITEM_TREE b on a.item_id = b.item_id
where b.parent_item_id is null
order by a.item_id
```