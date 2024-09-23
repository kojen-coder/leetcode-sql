with cats as(
select unnest(string_to_array(categories, ';')) as category, review_count
from yelp_business
)

select
category, sum(review_count) as review_cnt
from cats
group by category
order by review_cnt desc
;