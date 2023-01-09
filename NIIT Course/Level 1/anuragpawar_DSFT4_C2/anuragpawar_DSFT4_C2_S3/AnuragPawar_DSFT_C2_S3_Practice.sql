drop database car_sales;
create database if not exists car_sales;
use car_sales;
create table Salesperson (Sales_ID INT primary key, first_name varchar(100) not null, city varchar(50), commission_rate int);
create table Customers (cust_ID INT primary key, first_name varchar(100) not null, last_name varchar(100)not null, city varchar(50) not null, rating INT not null, Sales_ID INT not null, foreign key (Sales_ID) references Salesperson (Sales_ID)on delete cascade);
create table Orders (Order_ID INT primary key, Amount INT not null, Order_date DATE not null, cust_ID int not null, foreign key (cust_ID) references customers (cust_ID)on delete cascade);
insert into Salesperson (Sales_ID, first_name, city, commission_rate) values (1002, 'Peter', 'LONDON', 12), (1003, 'Rifkin', 'Barcelona', 15), (1004, 'Judith', 'LONDON', 11), (1008, 'John', 'LONDON', 0), (1009, 'Charles', 'Florida', null);
insert into Customers (cust_ID, first_name, last_name, city, rating, Sales_ID) values (2001, 'hoffmaN', 'Anny', 'London', 100, 1008), (2002, 'GIovanNI', 'JeNNy', 'Rome', 200, 1003), (2003, 'Liu', 'wiLLiams', 'San Jose', 100, 1002), (2004, 'GraSS', 'HarrY', 'Berlin', 300, 1002), (2005, 'ClemeNS', 'JoHN', 'London', 200, 1008), (2006, 'cisneros', 'FannY','San Jose', 200, 1009), (2007, 'Pereira', 'JonaTHAN', 'Rome', 300, 1004);
insert into Orders (Order_ID, Amount, Order_date, cust_ID) values (3001, 123, '2020-02-01', 2005), (3003, 187, '2020-10-02', 2001), (3002, 100, '2000-07-30', 2007), (3005, 201, '2011-10-9', 2003), (3009, 145, '2012-10-10', 2005), (3007, 167, '2020-04-02', 2002), (3008, 189, '2020-03-06',2002), (3010, 200, '2012-02-23', 2006), (3011, 100, '2000-09-18', 2004);
/*TASK 8*/
delete from Orders where Order_ID = 3011;
/*TASK 9*/
delete from Salesperson where commission_rate = 0;
/*TASK 10*/
update Orders set Amount = 1.2 * Amount where Amount < 100;
alter table Customers add index rating_index (rating);
update  Salesperson set commission_rate = 28 where commission_rate = 26;
update Customers set rating= 150 where rating = 100;


