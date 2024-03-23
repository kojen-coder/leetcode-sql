select
round(avg(daily_percent) * 100, 2) as average_daily_percent
from(
    select
    a.action_date,
    count(distinct r.post_id) / count(distinct a.post_id) as daily_percent
    from actions a left join removals r
    on a.post_id=r.post_id
    where a.extra = 'spam'
    group by a.action_date
)a