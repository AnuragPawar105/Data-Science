 Create database if not exists Car_shop;
 use Car_shop;
 Create table car_sales (Salesperson varchar(100), Customer varchar(100), Orders_recieved int);
 Drop table car_sales;
 Drop table sys.car_sales;
 Use car_shop;
 Create table car_sales (Sales_ID INT, First_Name varchar(100), City varchar(100), Commission_Rate int);
 Truncate car_sales;
 insert into car_sales (Sales_ID, First_Name, City, Commission_Rate) values (1002, 'Peter', 'LONDON', 12),(1002, 'Peter', 'LONDON', 12), (1003, 'Rifkin', 'Barcelona', 15), (1004, 'Judith', 'LONDON', 11), (1008, 'John', 'LONDON', 0), (1009, 'Charles', 'Florida', NULL), (1009, 'Charles', 'Florida', NULL), (1004, 'Judith', 'LONDON', 11), (1004, 'Judith', 'LONDON', 11), (1003, 'Rifkin', 'Barcelona', 15), (1003, 'Rifkin', 'Barcelona', 15), (1003, 'Rifkin', 'Barcelona', 15), (1001, 'Serres', 'San Jose', 13), (1001, 'Serres', 'San Jose', 13), (1009, 'Charles', 'Florida', NULL), (1008, 'John', 'LONDON', 0), (1008, 'John', 'LONDON', 0), (1008, 'John', 'LONDON', 0); 
 Select * FROM car_shop.car_sales;
 
 
 