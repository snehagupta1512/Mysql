create database detail;
show databases;
use detail;
create table employeeinfo(
emp_id int not null primary key,
f_name varchar(30),
l_name char(50),
department varchar(100),
project char(20),
address varchar(100),
dob date,
gender char(20)
);
desc employeeinfo;
insert into employeeinfo 
(emp_id,f_name,l_name,department,project,address,dob,gender)values
(1,"sanjay","mehra","hr","p1","hyderabad(hyd)","1976-12-01","m"),
(2,"ananya","mishra","admin","p2","delhi(del)","1968-05-02","f"),
(3,"rohan","diwan","account","p3","mumbai(bom)","1980-01-01","m"),
(4,"sonia","kulkarni","hr","p1","hyderabad(hyd)","1992-05-02","f"),
(5,"ankit","kapoor","admin","p2","delhi(del)","1994-07-03","m");
select * from employeeinfo;
create table employeeposition123(
empid int not null,
empPosition varchar(50),
dateofjoining date,
salary int
);
desc employeeposition123;
insert into employeeposition123
(empid,empPosition,dateofjoining,salary)values
(1,"manager","2022-05-01",500000),
(2,"executive","2022-05-02",75000),  
(3,"manager","2022-05-01",90000),
(2,"lead","2022-05-02",85000),
(1,"manager","2022-05-01",500000);
select * from employeeposition123;


-- Q1. Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.
select upper(f_name) from employeeinfo as empname;

-- Q2. Write a query to fetch the number of employees working in the department ‘HR’.
select count(*) from employeeinfo where department="hr";

-- Q3. Write a query to get the current date.
select sysdate();

-- Q4. Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
select substring(l_name,1,4) from employeeinfo;

-- Q5. Write a query to create a new table which consists of data and structure copied from the other table.
create table newtable as select * from employeeinfo;

-- Q6. Write q query to find all the employees whose salary is between 50000 to 100000.
select empid,salary from employeeposition123 where salary between 50000 and 100000;

-- Q7. Write a query to find the names of employees that begin with ‘S’
select f_name from employeeinfo where f_name like "s%";

-- Q8. Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
select emp_id,concat(f_name," ",l_name) as fullname from employeeinfo;

-- Q9. Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 and are grouped according to gender
select count(*),gender from employeeinfo where dob between "1970-05-02" and "1975-12-31" group by gender;

-- Q10. Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
select * from employeeinfo order by l_name desc, department asc;

-- Q11. Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
select * from employeeinfo  where l_name like '%a';

-- Q12. Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
select * from employeeinfo where f_name not in ("sanjay","sonia");

-- Q13. Write a query to fetch details of employees with the address as “DELHI(DEL)”.
select * from employeeinfo where address="delhi(del)";
select * from employeeinfo where address like "delhi(del)";

-- Q14. Write a query to fetch all employees who also hold the managerial position.
select * from employeeposition123;
select employeeinfo.f_name,employeeinfo.l_name,employeeinfo.emp_id,employeeposition123.empposition,employeeposition123.empid from employeeinfo
inner join employeeposition123 
on
employeeinfo.emp_id=employeeposition123.empid
and 
employeeposition123.empposition in ('manager');

-- Q15. Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.
select department,count(emp_id) from employeeinfo group by department order by department asc;

-- END--

  
 
