use sql_class;
create table salary (
    s_id int primary key,
   srange int
);
insert into salary values(1,10),(2,20),(3,30),(4,40);

create table emp (
    emp_id int primary key,
    ename varchar(50),
    salaryid int,
    foreign key(salaryid) references salary(s_id)
);
insert into emp values(1,'aaa',1),(2,'bbb',2),(3,'ccc',3),(4,'ddd',4),(5,'eee',2);

create table empdetails (
    sno int primary key,
    dept varchar(20),
    age int,
    empid int,
    foreign key (empid) references emp (emp_id)
);
insert into empdetails values(1,'IT',25,5),(2,'ECE',30,4),(3,'CSE',41,3),(4,'TRE',51,2),(5,'HR',41,1);

select * from empdetails;
select * from emp;

-- joins
select a.sno, a.dept,a.age,b.ename,c.srange from empdetails as a 
inner join emp as b on a.empid= b.emp_id
cross join salary as c on c.s_id = b.salaryid;

select a.sno, a.dept,a.age,b.ename,c.srange from empdetails as a 
right join emp as b on a.empid= b.emp_id
right join salary as c on c.s_id = b.salaryid;

select a.sno, a.dept,a.age,b.ename,c.srange from empdetails as a 
left join emp as b on a.empid= b.emp_id
left join salary as c on c.s_id = b.salaryid;

-- create view sampleview1 as 
-- select * from offices where salary between 40000 and 60000 
-- update sampleview1 set empname ="iyswarya" where rollno=110
-- drop vie sampleview1
-- delete * from sampleview1 where rollno =110
-- select * from sampleview1