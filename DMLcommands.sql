show databases;
select *from rgm;

update rgm set name="pooja" where contact_number="456789";-- updating single values 
update rgm set name="pooja",college="rgm" where contact_number="456789";-- updating multiples values

select * from student;
select *from salesperson;

create table test(student_id int primary key not null,student_name varchar(30),student_contact int,student_dept varchar(30));
select *from test;

insert into test select *from student;-- copy the student data into test table

truncate table test;-- delete the data but not table 

delete from student where student_name="sai";

drop table test;

ALTER TABLE student RENAME COLUMN name To student_name;-- remane the column name 
select * from student;

ALTER TABLE student RENAME TO rgmstudent; -- RENAME TABLE NAME

SELECT * FROM rgmstudent;

CREATE DATABASE sai;

SHOW DATABASES;

DROP DATABASE sai; -- TO DROP THE DATABASE

ALTER TABLE rgmstudent ADD address VARCHAR(30); -- ADD COLUMN TO TABLE

UPDATE rgmstudent SET ADDRESS = 'kadapa' WHERE STUDENT_ID=103; -- ADD DATA TO NEW COLUMN

ALTER TABLE rgmstudent MODIFY COLUMN address VARCHAR(50); -- ALTER COLUMN DATATYPE OR SIZE

ALTER TABLE rgmstudent DROP COLUMN address; -- DROP PARTICULAR COLUMN
alter table rgmstudent drop column name, drop column marks; -- to drop multiple columns in single command


delete from rgmstudent;-- delete all data in table









