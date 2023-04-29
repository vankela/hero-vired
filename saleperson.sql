 create table salesperson(sales_id int primary key not null,name 
   varchar(30) not null,city varchar(50) not null,commission real not null);
   
   INSERT Into salesperson values(5001,"james hoog","new york",0.15),(5002,"Nail Knite","parsis",0.13),
   (5005,"pit Alex","London",0.11),(5006,"Mc Lyon","parsis",0.14);
   Insert into salesperson values(5007,"Paul adam","Rome",0.13),(5003,"Lauson Hen","san Jose",0.12);
   select distinct name,commission from salesperson;
