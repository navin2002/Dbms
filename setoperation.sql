(select distinct(name) from minion as m1 )
except 
(select distinct(name) from minion as m3  join takes_training as t
on m3.minion_id =t.minion_id);




(select name from master as m   where m.nationality='Japan')
intersect
(
select name from master as m  join involved_in as i
on m.master_id =i.master_id
);




select minion.name,master.name from minion join master on  Master.nationality= Minion.nationality;



select count(*)
from

     ((select distinct (minion_id)  from minion) except (select trainer  from training) )as t;




(select name,minion_id from minion natural join  training
where minion_id = trainer)
intersect
(select name,minion_id from minion as m  natural join  involved_in as i
where i.minion_id = m.minion_id);




select avg(hiring_charge)  from minion as m  join takes_training as t
on  m.minion_id=t.minion_id;




select description from evilness as e1 , minion as m1  
where ( m1.age=8 )
intersect
(
	select description from evilness
where level=3
	union
	select description from evilness
where level=4
	);



select description from evilness as e1 join minion as m2 on e1.evil_id=m2.evilness
where age>7 ;



select mission_id from mission
except
select distinct(mission_id) from involved_in;












select distinct(mission_id) from involved_in;










select distinct(mission_id) from payment;










select m1.name from minion as m1
where m1.gender='F'
intersect
select m1.name from minion as m1, (involved_in as i join payment as p on  i.mission_id= p.mission_id) as t
where m1.minion_id=t.minion_id;



select m1.name from minion as m1
where m1.gender='F'
intersect
select m1.name from minion as m1, (involved_in as i join payment as p on  i.mission_id<> p.mission_id) as t
where m1.minion_id=t.minion_id;






select count(*),gender from minion as m1 natural join involved_in as i 
where mission_id not in
(select mission_id from payment)
	
group by gender
;




select name from minion as m1 natural join involved_in as i

except 
(
select name from minion as m1 natural join takes_training as t 

	);












