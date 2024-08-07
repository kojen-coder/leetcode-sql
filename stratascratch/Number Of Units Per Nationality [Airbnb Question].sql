select
    h.nationality,
    count(distinct u.unit_id) as apartment_count
from
    airbnb_hosts h
    inner join airbnb_units u on h.host_id = u.host_id
where h.age < 30 AND unit_type = 'Apartment'
group by h.nationality
order by apartment_count desc
;