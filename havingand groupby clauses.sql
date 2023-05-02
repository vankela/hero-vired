create table car(car_number int primary key not null,car_name varchar(40) not null,
car_price int not null,car_quality int not null);

insert into car values(112,"tesla",12000,2),(113,"audi",25000,5)
,(114,"bmw",50000,8),(115,"tata",50000,9),(116,"kia",25000,8);
select*from car;

select count(car_name),car_price from car group by car_price;
select count(car_name) as count_number,car_price from car group by car_price;-- alias name replace car name to count_number

select count(car_name) from car group by car_price having car_price >12000;

select count(*) from car group by car_price having car_price >12000;

create table visit(entry_date date,entry_price int,duration int);
insert into visit values("2023-04-27",1000,5),("2023-04-28",2000,6),
("2023-04-29",5000,7),("2023-05-01",6000,7),("2023-04-28",3000,9),
("2023-04-29",8000,23);

select *from visit;
select entry_date,count(*) from visit group by entry_date;
select duration,count(*) from visit group by duration;

-- Extract 

select extract(year from entry_date)as year,
extract(month from entry_date)as month,
round(avg(entry_price),2)  from visit group by extract(year from entry_date)
,extract(month from entry_date);-- round function round the decimal point upto 2 2 decimal 


select extract(year from entry_date)as year,
extract(month from entry_date)as month,
round(avg(entry_price),2)  from visit 
group by extract(year from entry_date),extract(month from entry_date)-- round function round the decimal point upto 2 2 decimal 
order by extract(year from entry_date),extract(month from entry_date);

select extract(year from entry_date)as year,
extract(month from entry_date)as month,
extract(day from entry_date)as day,
round(avg(entry_price),2)  from visit 
group by extract(year from entry_date),extract(month from entry_date),-- round function round the decimal point upto 2 2 decimal 
extract(day from entry_date)
order by extract(year from entry_date),extract(month from entry_date);

select entry_date,round(avg(entry_price)) as avg_Price from visit group by entry_date having count(*)!=1 order by entry_date ;
select entry_date,round(avg(entry_price)) as avg_Price from visit group by entry_date having count(*)>1 order by entry_date ;
select entry_date,round(avg(entry_price)) as avg_Price from visit group by entry_date having count(*)<>1 order by entry_date;
select entry_date,round(avg(entry_price)) as avg_Price from visit group by entry_date having count(*)>=1 order by entry_date ;
select entry_date,round(avg(entry_price)) as avg_Price from visit group by entry_date having count(*)>2 order by entry_date ;

select entry_date,round(avg(entry_price)) as avg_Price from visit where duration>5 group by entry_date having count(*)>1 order by entry_date ;
select *from visit;
select *from customer;

create table employee(employee_id int primary key,name varchar(30), age int,country varchar(30));
insert into employee values(200,"pooja",20,"india"),
(201,"preethi",19,"us"),(203,"loki",23,"london"),
(300,"radhika",24,"india"),(402,"sailakshmi",25,"us"),
(400,"sai",12,"india");
select *from employee;
select count(country),country from employee group by country having count(country)>=2;
select country,count(country) from employee group by country having min(age)>=20;
select country,count(country) from employee group by country having max(age)>=20;

create table manager1(id int,name varchar(40),gender varchar(30),salary int);
create table manager1(id int,name varchar(40),gender varchar(30),age int ,salary int);
insert into manager1 values(400,"pranitha","female",20,40000),
(402,"vamsi","male",20,70000),(403,"namitha","female",19,80000),
(500,"bunny","male",19,60000),(405,"pardhu","female",19,100000),
(900,"pani","male",23,90000),(700,"pani","male",26,9000);

select *from manager1;

select name,sum(salary) as total_salary from manager1 group by name having sum(salary)>10000 order by name;

select age from manager1 group by age having count(age)>1;
select gender,min(salary) as max_salary from manager1 group by gender having min(salary)>20000;
