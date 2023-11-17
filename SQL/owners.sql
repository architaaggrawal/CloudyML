use pets;

create table owners(owner_id int,name varchar(40),gender varchar(10),occupation varchar(30),age int,city varchar(20),state_ varchar(30));

insert into owners values(5168,'Aarti Yadav','female','student',14,'Navi Mumbai','Maharashtra'),
(5508,'Hasan Ansari','male','chef',22,'Jaipur','Rajasthan'),
(3086,'Mayank Kamble','male','gamer',25,'Kolkata','West Bengal'),
(7908,'Atharva Thube','male','doctor',37,'Mumbai','Maharashtra'),
(4378,'Tanishka Ahire','female','teacher',33,'Nagpur','Maharashtra'),
(7581,'Brijesh Chaudhari','male','swimming coach',28,'Jodhpur','Uttar Pradesh'),
(7343,'Stanley Dsouza','male','lawyer',30,'Kanpur','Uttar Pradesh'),
(2700,'Aditya Varma','male','teacher',34,'Hyderabad','Andhra Pradesh'),
(7606,'Uzma Shaikh','female','chef',26,'Kochi','Kerala'),
(1319,'Raj Shah','male','cyber security analyst',26,'Navi Mumbai','Maharashtra'),
(1132,'Mehul Jain','male','student',18,'Kolkata','West Bengal'),
(7846,'Vijay Bhosale','male','police inspector',29,'Mumbai','Maharashtra'),
(7847,'Seema Jamdade','female','police subinspector',27,'Mumbai','Maharashtra'),
(9037,'Gagan Sharma','male','businessman',46,'Kanpur','Uttar Pradesh'),
(9850,'Geet Kaur','female','doctor',32,'Jaipur','Rajasthan'),
(6102,'Rajat Chabra','male','youtuber',24,'Hyderabad','Andhra Pradesh'),
(1122,'Khushboo Singh','female','fashion designer',25,'Kolkata','West Bengal'),
(3344,'Khushi Gada','female','student',19,'Surat','Gujarat'),
(4567,'Preeti Varma','female','lawyer',48,'Jodhpur','Uttar Pradesh');

select * from owners;

create table vet(vet_id int,name varchar(30),clinic_name varchar(40),pet_id int,disease varchar(30),treatment_date date);

insert into vet values(1,'Dr.Tanvi Ahuja','SuperPets',102,'Ear Infection','2023-05-12');
insert into vet values(1,'Dr.Tanvi Ahuja','SuperPets',105,'Skin Infection','2023-05-13');
insert into vet values(1,'Dr.Tanvi Ahuja','SuperPets',111,'Diarrhea','2023-05-12');
insert into vet values(1,'Dr.Tanvi Ahuja','SuperPets',107,'Skin Infection','2023-05-13');
insert into vet values(2,'Dr.Rahul Nene','K-9',104,'Injury','2023-05-14');
insert into vet values(2,'Dr.Rahul Nene','K-9',113,'Diarrhea','2023-05-14');
insert into vet values(2,'Dr.Rahul Nene','K-9',103,'Injury','2023-05-15');
insert into vet values(2,'Dr.Rahul Nene','K-9',115,'Dental Disease','2023-05-15');
insert into vet values(3,'Dr.Karan Malhotra','PetZone',114,'Ear Infection','2023-05-14');
insert into vet values(3,'Dr.Karan Malhotra','PetZone',112,'Eye Infection','2023-05-13');
insert into vet values(3,'Dr.Karan Malhotra','PetZone',106,'Injury','2023-05-14');
insert into vet values(3,'Dr.Karan Malhotra','PetZone',110,'Obesity','2023-05-15');

select * from vet;

select pet_id,name from pets 
where pet_id in(select pet_id from vet);

select name,occupation from owners 
where owner_id in(select owner_id from pets 
where pet_id in(select pet_id from vet 
where disease='Ear Infection' or disease='Skin Infection'));

select name,kind,age from pets 
where age=(select avg(age) from pets);




