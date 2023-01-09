USE HR;
select count(employee_id) as Number_of_Employees from employees;
select count(employee_id) as Number_of_Employees, department_id from employees group by department_id;
select first_name, salary from employees where salary > 6000;
select count(employee_id) from employees where salary > 20000;
select count(employee_id) from employees where salary > 6000 AND department_id= 60;
use hr;
alter table employees add annual_ctc decimal(9,2) after salary;

select employee_id, first_name, commission_pct from employees where commission_pct > 0;
select concat(concat(first_name,' '), last_name) as full_name from employees where commission_pct =0 or commission_pct = null;
select first_name, last_name, email, phone_number, employee_id from employees where commission_pct > 0;
select first_name, last_name, employee_id, department_id from employees group by department_id order by salary desc limit 3;
select department_id, department_name from employees join departments using (department_id)group by department_id order by employees.salary desc limit 3;
select * from employees where job_id like '%clerk%';
select count(employee_id), avg(salary) from employees where job_id like '%clerk%';
select count(employee_id), department_id from employees group by department_id;
select avg(salary), department_id from employees group by department_id;
select department_id, count(employee_id) from employees where salary > 7000.00 and salary < 10000.00 group by department_id;
select first_name, last_name, (current_date-hire_date)/365 as experience_today, salary from employees order by salary desc;

