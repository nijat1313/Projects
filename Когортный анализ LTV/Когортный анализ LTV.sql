with a as(
select 
	customer_id,
	datetime,
	first_value(to_char(datetime, 'YYYY-MM')) over(partition by customer_id order by datetime) as cohort,
	(datetime - first_value(datetime) over(partition by customer_id order by datetime)) as diff,
	sum(quantity * price) as summ
from online_retail or2 
group by 1, 2
order by 3
)
select 
	cohort,
	count(distinct customer_id),
	round(sum(case when diff = 0 then summ end) / count(distinct customer_id), 2) as "0",
	case when max(diff) > 0 then round(sum(case when diff < 30 then summ end) / count(distinct customer_id), 2) end as "30",
	case when max(diff) > 30 then round(sum(case when diff < 60 then summ end) / count(distinct customer_id), 2) end as "60",
	case when max(diff) > 60 then round(sum(case when diff < 90 then summ end) / count(distinct customer_id), 2) end as "90",
	case when max(diff) > 90 then round(sum(case when diff < 180 then summ end) / count(distinct customer_id), 2) end as "180",
	case when max(diff) > 180 then round(sum(case when diff < 300 then summ end) / count(distinct customer_id), 2) end as "300"
from a
group by 1
	