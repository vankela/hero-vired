create table student(student_id int,student_name varchar(30),student_marks int);
INSERT INTO student values(102,"praneetha",70),(103,"lakshmi",97),
(104,"preethi",96),(105,"radhika",99),(106,"loki",95),
(107,"namitha",94),(108,"pardhu",100),(109,"sravani",60),
(110,"pavani",80),(101,"vasudha",85);
select *from student where student_id>=80;

select *from student where student_marks!=80;

select *from student where student_marks<>95;
select *from student where student_marks BETWEEN 70 and 90;
-- ---- ascending order--  
select *from student where student_marks between 70 and 100 order by student_marks; 

-- ---- ascending order-- 
select *from student where student_marks between 70 and 100 order by student_marks ASC; 
-- desending order
select *from student where student_marks between 70 and 100 order by student_marks DESC; 

select *from student where not student_marks=99;
select *from rgm;
SELECT DISTINCT address from rgm;

 select count(DISTINCT address) from rgm;
 
 select count(DISTINCT student_marks) from student;
 
 select *from student;
 
 select *from student where not student_marks=80 and not student_marks=94;
 
 select *from rgm LIMIT 3;
 
 select * from rgm where address="badvel" limit 2;
 select * from rgm where address="badvel" limit 2;
 select * from rgm ORDER BY address ="kadapa" limit 2;
 
  select count(address),address from rgm group by address;
  
  select *from rgm where college="rgmcet" order by contact_number limit 5;
   create table dob(date1 DATE not null);
   -- yyyy-mm-dd--  
   INSERT INTO dob values("2023-04-28");
   select *from dob;
   