select name from MASTER where Nationality='USA';

select name from MASTER where Nationality='England' and m_type='fictional';

select Level,Description from EVILNESS ORDER BY Level DESC limit 1;

select name from MINION INNER JOIN EVILNESS ON MINION.Evilness= EVILNESS.Evil_Id
where MINION.Gender='M' and EVILNESS.Level>=2;

select name from MINION INNER JOIN EVILNESS ON MINION.Evilness= EVILNESS.Evil_Id
where MINION.Hiring_Charge>95 and EVILNESS.Level=3;

select name from MINION ORDER BY Age DESC limit 1;

select Name from MINION ORDER BY Age ASC limit 1;

SELECT AVG(Hiring_Charge) FROM MINION;

select name from MINION INNER JOIN TRAINING ON MINION.Minion_Id= TRAINING.Trainer 
where TRAINING.Level=1;

select Country,Estimate from MISSION where Mission_Id =501;

select count(*) from MISSION where Status ='underway';

select Country from MISSION where Mission_Id=504;

select DISTINCT(master.name) from INVOLVED_IN INNER JOIN MASTER ON MASTER.Master_Id=INVOLVED_IN.Master_Id
where Mission_Id=502;


select count(*) from (select * from INVOLVED_IN I INNER JOIN MINION M ON M.Minion_Id=I.Minion_Id
where Mission_Id=502) as COUNT;
select name from INVOLVED_IN I INNER JOIN MINION M ON M.Minion_Id=I.Minion_Id
where Mission_Id=502;



select name from TRAINING T INNER JOIN TAKES_TRAINING TT ON T.Training_Id=TT.Training_Id INNER JOIN MINION M ON TT.Minion_Id=M.Minion_Id
where TT.Training_Id=403;
select name from TRAINING T INNER JOIN TAKES_TRAINING TT ON T.Training_Id=TT.Training_Id INNER JOIN MINION M ON T.Trainer=M.Minion_Id
where TT.Training_Id=403;


select * from mission where From_Date>='2016-01-10' and To_Date<='2016-01-31' ;


select distinct(name) from INVOLVED_IN I INNER JOIN MASTER M ON M.Master_Id=I.Master_Id;


select name from CURRENCY where Country ='England';

select name from CURRENCY ORDER BY B_Currency DESC LIMIT 1;

select name from INVOLVED_IN I INNER JOIN MINION M ON M.Minion_Id=I.Minion_Id where Mission_Id=501;