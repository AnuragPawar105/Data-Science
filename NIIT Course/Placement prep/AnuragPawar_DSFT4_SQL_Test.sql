create database prep;
use prep;
create table employee
(empid int primary key, fname char(20) not null, lname char(20), dept char(25), project char(10),
address char(40), dob date, gender char(1)
);
create table empdesig
(empid int not null, desig char(30), doj date, salary float, foreign key (empid) references employee 
(empid)
);
insert into employee values (1, 'Sanjay','Mehra','HR','P1','Hyderabad (HYD)',str_to_date('01 12 1976','%d %m %Y'),'M');
insert into employee values (2, 'Ananya','Mishra','Admin','P2','Delhi (DEL)',str_to_date('02 05 1968','%d %m %Y'),'F');
insert into employee values (3, 'Rohan', 'Diwan','Account','P3','Mumbai (BOM)',str_to_date('01 01 1980','%d %m %Y'),'M');
insert into employee values (4, 'Sonia','Kulkarni','HR','P1','Hyderabad (HYD)', str_to_date('02 05 1992','%d %m %Y'),'F');
insert into employee values (5, 'Ankit','Kapoor','Admin','P2','Delhi (DEL)',str_to_date('03 07 1994','%d %m %Y'),'M');
insert into employee values (6, 'Ankit','Kapoor','Admin','P2','Delhi (DEL)',str_to_date('01 05 1994','%d %m %Y'),'M');
select * from employee;
insert into empdesig values (1, 'Manager', str_to_date('01 05 2022','%d %m %Y'),500000);
insert into empdesig values (2, 'Executive', str_to_date('02 05 2022','%d %m %Y'),75000);
insert into empdesig values (3, 'Manager', str_to_date('01 05 2022','%d %m %Y'), 90000);
insert into empdesig values (2, 'Lead', str_to_date('02 05 2022','%d %m %Y'), 85000);
insert into empdesig values (1, 'Executive',str_to_date('01 05 2022','%d %m %Y'),300000);
select fname from empdesig;
# Question 1
select upper(fname) as EmployeeName from employee;
# Question 2
select count(empid) from employee where dept = 'HR';
# Question 3
select current_date();
# Question 4
select substring(lname, 1,4) from employee;
# Question 5
select substring_index(address, '(',1) address from employee;
# Question 6
create table employee_copy like employee;
insert into employee_copy select * from employee;
# Question 7
select * from empdesig d inner join employee e on d.empid=e.empid where d.salary> 50000 and d.salary< 100000;
# Question 8
select fname from employee where fname like 's%';
# Question 9
select * from employee limit 3;
# Question 10
select concat(fname,' ',lname) as Full_Name from employee;
# Question 11
select count(empid) No_of_emp, gender from employee where dob > 02/05/1970 and dob < 31/12/1975 group by gender;
# Question 12
select * from employee order by lname desc, dept asc;
# Question 13
select * from employee where fname not in ('Sanjay','Sonia');
# Question 14
select * from employee where fname not in ('Sanjay','Sonia');
# Question 15
select * from employee where address = 'Delhi (DEL)';
# Question 16
select e.fname from empdesig d inner join employee e on d.empid=e.empid where d.desig = 'Manager';
# Question 17
select count(empid) as No_of_emp, dept from employee group by dept order by No_of_emp;
# Question 18
select count(*) as 'even' from employee where empid % 2 = 0 ;
select count(*) as 'odd' from employee where empid % 2 != 0 ; 
# Question 19
select * from empdesig d inner join employee e on d.empid=e.empid order by doj;
# Question 20
select distinct salary from empdesig ed1 where 6 >= (select count(distinct salary) from empdesig ed2 where ed1.salary >= ed2.salary) order by ed1.salary desc limit 2;
select distinct salary from empdesig ed1 where 6 >= (select count(distinct salary) from empdesig ed2 where ed1.salary >= ed2.salary) order by ed1.salary asc limit 2;
# Question 21
select * from empdesig as t1 where (4) = (select count(distinct(t2.salary)) from empdesig as t2 where t2.salary >= t1.salary);
# Question 22
select * from employee group by fname having count(fname) > 1;
# Question 23
select fname, dept from employee order by dept;
# Question 24
select * from employee order by empid desc limit 3;
# Question 25
select * from empdesig order by salary desc limit 2,1;
# Question 26
(select * from employee limit 1) UNION (select * from employee order by empid desc limit 1);
# Question 27
select dept from employee group by dept having count(*) < 2;
# Question 28
alter table employee add Email varchar(20);
# Question 29
select sum(salary) as tot_sal, desig from empdesig group by desig;
# Question 30
select * from employee where empid <= (select count(empid)*0.5 from employee);