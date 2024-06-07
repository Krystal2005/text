--BAI 1
SELECT DISTINCT  CITY 
FROM STATION
WHERE ID%2=0
--BAI 2
select count(city) - count(distinct city) from station
--BAI 4
SELECT  
ROUND 
(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) 
AS MEAN
FROM items_per_order;
--BAI 5
SELECT candidate_id
FROM candidates
where skill in ('Python', 'Tableau','PostgreSQL')
Group by candidate_id
Having COUNT(skill)=3
--BAI 6
SELECT USER_ID, 
DATE (MAX(post_date))- date(MIN(post_date)) AS days_between
FROM posts
WHERE post_date>='2021-01-01' and post_date <'2022-01-01'
GROUP BY USER_ID
HAVING COUNT (post_id)>=2
--BAI 7
SELECT card_name, 
MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
Group by card_name
order by difference
--BAI 8
SELECT manufacturer, 
Count(drug) as drug_count,
ABS (sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
where total_sales<cogs
Group by manufacturer
Order by total_loss desc
--BAI 9
Select * from cinema 
where id%2>0
and description not like 'boring'
order by rating desc
--BAI 10
SELECT teacher_id, 
COUNT (DISTINCT subject_id) as cnt
from Teacher 
Group by teacher_id
--BAI 11
SELECT USER_ID,
COUNT (DISTINCT(FOLLOWER_ID)) AS FOLLOWERS_COUNT 
FROM FOLLOWERS 
GROUP BY USER_ID
--BAI 12
SELECT CLASS
FROM COURSES 
GROUP BY CLASS
HAVING COUNT(STUDENT)>=5
