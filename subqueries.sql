select name,hiring_charge from minion where minion_id in
(
	select minion_id from involved_in where mission_id in
(select mission_id from mission where estimate>2000)
	);



select name from minion where minion_id in
(
select minion_id from involved_in where mission_id in
(
select mission_id from payment where currency_id in
(	
select currency_id from currency where name='INR'
)
)
);



select m.name,m.hiring_charge from minion as m 
group by m.hiring_charge,m.name
having m.hiring_charge>(select avg(n.hiring_charge) from minion as n) ;





select name,minion_id from minion where minion_id in (
select minion_id from involved_in
where minion_id in (select trainer from training) 
 group by minion_id,mission_id having mission_id=503
	);
 






select name 
from
(
select * from minion where minion_id in 
  (
	  select minion_id from takes_training where training_id in
	          (
				  select training_id from training where trainer in
				  (
					  select minion_id from minion where name='Steve' or name='Mike'
				  )
			  )

    )

)as a
where nationality='India';






select name,m_type from
(
select name,master_id,m_type from master where master_id in
	(
select master_id from involved_in where mission_id in
		(
	select mission_id from mission where (status='completed' and not(country='India'))
	)
	)
	)as m
	where m_type='cartoon';



select name from minion where minion_id in
(
select minion_id from involved_in where mission_id in
(
	select mission_id from mission where estimate>
(select avg(estimate) as avg from mission)
	)
	);


select training_id from training
where DATE_PART('day', AGE(from_date, to_date))>any(
select DATE_PART('day', AGE(from_date, to_date)) from training
	);