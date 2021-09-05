select name,ascii(name) from master;


select concat(nationality,name) from minion;

SELECT name,
       CASE 
	   WHEN (name like 'a%') or (name like  'e%') or (name like  'i%') or (name like  'u%')  THEN floor(b_currency)
       ELSE ceil(b_currency)
       END
    FROM currency;

SELECT repeat('ba ',12);

SELECT name,reverse(name) from minion;

SELECT distinct(upper(nationality)) from minion;

select current_time;


SELECT minion_id,name,hiring_charge FROM minion
WHERE
	hiring_charge = (
		SELECT MIN(hiring_charge)
                FROM minion
	);




SELECT MISSION_ID,ABS(from_date::date - to_date::date)/7 as weeks,from_date,to_date 
FROM MISSION WHERE MISSION_ID=504;




SELECT sum(ABS(from_date::date - to_date::date)) as sum_training_duration
from training;
