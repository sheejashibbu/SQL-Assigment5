create table  country(Country_Id int primary key, Country_name varchar(100) not null, population_Area decimal);
INSERT INTO country (Country_Id,Country_name,population_Area) values(101,'India', '150000000.00'),
(102, 'USA', '2500000.00'),(103, 'UK', '2000000.00'),(104, 'Australia', '26000000.00'),(105, 'Canada', '1600000'),(106, 'Qatar', '1400000.00'),
(107, 'Bhutan', '1200000.00'), (108, 'Nepal', '26000000.00'),(109, 'France', '1600000.00'),(110, 'Germany', '3000000.00');

select* from country;
create table  Person(Person_Id int primary key, first_name varchar(100) , 
Last_name varchar(100),Population_Rating decimal, Country_Id int, Country_name varchar(100) );
INSERT INTO Person (Person_Id,first_name,Last_name,Population_Rating,Country_Id,Country_name) values(001,'Simi', 'Sujith',7.0,101,'India'),
(002,'Simth', 'Mark',5.0,104,'Australia'),(003,'George', 'Samual',4.5,105,'Canada'),(004,'Manu', 'Samual',5.5,109,'France'),
(005,'George', 'Simith',7.5,110,'Germany'),(006,'Mariyam', 'Mohammad',8.5,106,'Qatar'),(007,'smitha', 'Mathew',7.0,101,'India'),
(008,'Sanu', 'Singh',6.5,108,'Nepal'),(009,'George', 'Bush',8.5,102,'USA'),(010,'Samson', 'James',7.5,103,'UK');
SELECT SUBSTRING(Country_name, 1, 3) as country from country;
SELECT concat(first_name, " ",Last_name) as Name from person;
SELECT DISTINCT COUNT(Country_name) AS count from person;
SELECT MAX(population_Area)FROM country;
SELECT MIN(Population_Rating)FROM person;
 INSERT INTO Person (Person_Id,first_name,Last_name,Population_Rating,Country_Id,Country_name) values(011,'Sini', null,8.0,101,'India'),
(012,'Sumith', null,5.0,104,'Australia');
select*from person;
SELECT  COUNT(Last_name) AS count from person;
select  COUNT(*) AS row_num from person;
select  population_Area from country limit 3;
select * from country  order by rand() limit 3;
select* from person order by Population_Rating desc;
select sum(population_Area) as total from country;
select country_name from person group by  Country_name order by sum(Population_Rating) >5.0;
select count(Person_Id) from person group by Country_name  having count(Country_name)=2 order by avg(Population_Rating);
