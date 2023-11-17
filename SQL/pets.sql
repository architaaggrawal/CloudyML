select * from pets;
insert into pets values(101,'Blackie','Dog','male',11,5168),
(102,'Roomba','Cat','male',9,5508),
(103,'Simba','Cat','male',1,3086),
(104,'Keller','Parrot','female',2,7908),
(105,'Cuddles','Dog','male',13,4378),
(106,'Vuitton','Parrot','female',11,7581),
(107,'Priya','Cat','female',7,7343),
(108,'Simba','Cat','male',0,2700),
(109,'Cookie','Cat','female',8,7606),
(110,'Heisenberg','Dog','male',3,1319),
(111,'Stowe','Cat','female',15,1132),
(112,'Scout','Dog','female',2,7846),
(113,'Lily','Dog','female',3,7846),
(114,'Danger','Dog','male',9,9037),
(115,'Scooter','Dog','male',9,9850),
(116,'Bandit','Parrot','male',11,6102);


--from

select * from pets;

--where
select name from pets where kind='Dog';
select name,kind,age from pets where age>5;

--group by
select kind,count(*) from pets where kind='Cat' group by kind;
select kind,avg(age) as average_age from pets group by kind;
select gender,min(age),max(age) from pets group by gender;


--having
select kind,count(*) from pets group by kind having count(*)>3;
select kind,avg(age) as average_age from pets group by kind having avg(age)=7;

--select

--order by
select name from pets order by name;
select kind,sum(age) as total_age from pets group by kind order by sum(age) desc;

--top
select top 10 * from pets;
select top 5 name,age from pets order by age desc;