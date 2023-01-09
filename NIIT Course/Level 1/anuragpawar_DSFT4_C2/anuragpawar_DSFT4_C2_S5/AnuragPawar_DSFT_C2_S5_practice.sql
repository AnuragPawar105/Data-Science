-- TASK 1
use car_sales;
select s.first_name from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where Order_ID is not null;
-- TASK 2
select distinct(concat(c.first_name,' ',c.last_name)), s.first_name from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID;
-- TASK 3
select s.first_name from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID group by c.cust_ID having count(c.cust_ID>0);
-- TASK 4
select s.first_name, count(o.Order_ID) from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID  group by(o.Order_ID) order by(count(o.Order_ID)) desc;
-- TASK 5
select s.first_name, o.Order_ID from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where s.first_name= 'Judith';
-- TASK 6
select s.first_name from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where c.city != any(select city from salesperson);
-- TASK 7
select s.first_name from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where s.city=c.city;
-- TASK 8
select o.Order_ID from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where c.city != any(select city from salesperson);
-- TASK 9
select s.first_name, s.commission_rate from salesperson s where s.city ='LONDON';
-- TASK 10
select * from salesperson where commission_rate> 12;
-- TASK 11
select s.first_name, s.Sales_ID from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID  where c.city != any(select city from salesperson);
-- TASK 12
select s.first_name, o.Order_date from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where o.Order_date not between '2020-03-10' and '2020-05-10';
-- TASk 13
select count(s.Sales_ID) from salesperson s join customers c on s.Sales_ID = c.Sales_ID join orders o on c.cust_ID=o.cust_ID where Order_ID is not null;
-- TASK 14
-- INCOMPLETE Select s.firstname
-- TASK 15
select upper(first_name), Sales_ID, city, commission_rate from salesperson;
