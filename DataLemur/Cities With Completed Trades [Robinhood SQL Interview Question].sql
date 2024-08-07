SELECT u.city, count(*) as total_orders
FROM trades t inner join users u on t.user_id = u.user_id
where status = 'Completed'
group by u.city
order by total_orders desc
limit 3
;