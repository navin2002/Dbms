
create or replace  view view1 as 
select c,trainer from
(
select count(minion_id) as c,trainer
from
training as t join takes_training as tt on t.training_id=tt.training_id
group by trainer
	)
	as it
where c>1;


create or replace  view view2 as 
select name as cname,b_currency from currency
order by b_currency desc 
limit 3;

create  or replace view  view3  as 
select name as mname from minion
where minion_id in 
(
select minion_id from involved_in
)
 and gender='M' and (nationality='Japan' or nationality='England');


create  or replace view view4 as 
select hiring_charge,description
FROM minion join evilness on minion.evilness = Evilness.evil_id;



create or replace view view5 as 
select m.name as mname ,ma.name  as maname
from minion m inner join involved_in i on i.minion_id=m.minion_id inner join master ma on i.master_id=ma.master_id;


create or replace view view6 as 
select name as maname from master where master_id in
(
select distinct(master_id) from involved_in where mission_id in
(
select mission_id from mission where status='completed'
	)
	);



begin;
savepoint a;





select * from training;
select * from view1;


 insert into training(training_id,trainer,level,from_date,to_date) values (405,309,1,'2017-01-05','2017-01-09');

insert into takes_training(training_id,minion_id)  values (405,302),(405,304);

select * from training;
select * from view1;


/*inference:note minion with minion id 309 is added as well earlier there was no 309 hence changes in original table  are reflected in views*/




select * from mission;
select * from minion;
select * from view3;


 insert into minion(minion_id,evilness,name,gender,age,nationality,hiring_charge) values (313,203,'david','M',30,'Japan',140);
insert into mission(mission_id, pre_req, minion_count, country ,estimate, status, from_date, to_date) values(506, 3, 1, 'Japan' ,1200,'underway', '2017=04-03', '2017-05-03');
insert into involved_in(minion_id,mission_id,master_id) values(313,506,110);
 

select * from mission;
select * from minion;
select * from view3;
/*inference :earlier only bob was there now both bob and david are there ,changes made in original table are reflected in views*/







create or replace view view7 as
select * from payment;

insert into view7(mission_id, payment_id,currency_id, amount, date) values (504, 7314, 601,765, '2016-12-27');
select * from payment;
/* inference: here changes made in view are reflected in table ,payment id 7314 is added */






