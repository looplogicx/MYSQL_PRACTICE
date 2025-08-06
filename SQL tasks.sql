use sql_class;
create table employees (
    emp_id int primary key,
    name varchar(50),
    department varchar(20),
    salary int,
    age int
);

insert into Employees (emp_id, name, department, salary, age) values
(1, 'Aditi Singh', 'HR', 40000, 28),
(2, 'Raj Mehta', 'IT', 75000, 32),
(3, 'Sneha Reddy', 'Sales', 55000, 30),
(4, 'Karan Verma', 'IT', 80000, 35),
(5, 'Priya Nair', 'HR', 45000, 26),
(6, 'Ravi Kumar', 'Sales', 60000, 29),
(7, 'Mohit Jain', 'IT', 90000, 40),
(8, 'Pooja Shah', 'HR', 38000, 25);

select * from employees;

-- task 1
select * from employees where department in ('hr', 'sales');
select * from employees where salary > 50000;
update employees set salary = salary * 1.10 where department = 'it';
select * from employees where emp_id in (2, 4, 7);
select * from employees where salary <= 45000;
delete from employees where age > 38;

-- task 2
select * from employees where department = 'it' and salary > 70000;
select * from employees where department in ('hr', 'it', 'sales') and salary > 60000;
delete from employees where department = 'sales' and age < 28;

-- task 3
update employees set salary = salary + 5000 where department = 'sales' and salary < 60000;
select * from employees where department != 'hr' and age != 30;
select count(*) from employees;
select max(salary) as max_salary, min(salary) as min_salary from employees;
select sum(salary) as total_it_salary from employees where department = 'it';

-- task 4
delete from employees where age between 25 and 27;
select * from employees where salary between 40000 and 70000;
select * from employees where name like '%it%';
select * from employees where name like 'r%' and age between 25 and 35;
select distinct * from offices;
select * from offices order by salary desc;
select count(rollno), salary from offices group by salary having count(rollno) >= 3;

-- task 5
select department, count(*) as employee_count from employees group by department;
select department, avg(salary) as average_salary from employees group by department;
select department from employees group by department having count(*) > 2;
select department from employees group by department having avg(salary) > 60000;
select * from employees order by department, salary desc;
select distinct department from employees;
select department from employees where salary > 50000 group by department having count(*) > 1;

-- task 6
