create database if not exists ABC_inc;
use ABC_inc;
create table A_SQL (Employee_ID INT, Age INT, Proficiency INT);
create table B_Oracle (Employee_ID INT, Age INT, Proficiency INT);
create table C_HTML (Employee_ID INT, Age INT, Proficiency INT);
alter table B_Oracle rename to B_SQL;
truncate table B_SQL;
use ABC_inc;
drop table C_HTML;
drop table B_SQL;
alter table A_SQL rename to AB_SQL;

