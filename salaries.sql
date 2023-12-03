create database data;
use data;
show tables;
select * from salaries;
-- 1 Show all columns and rows in the table.
select * from salaries;

-- 2 Show only the employeename and jobtitle columns.
select employeename,jobtitle from salaries;

-- 3 Show the number of employees in the table
select count(*) from salaries;

-- 4 Show the unique job title in the table.
select distinct(jobtitle) from salaries;

-- 5 Show the job title and overtime pay for all employees with overtime pay greater than 50000.
select jobtitle,overtimePay from salaries 
where overtimepay>50000;
 
 -- 6 Show the average base pay for all employees.
 select AVG(basepay) from salaries;
 
 -- 7 Show the top 10 highest paid employees.
 select employeename,totalpay from salaries 
 order by Totalpay desc 
 limit 10; 
 
 -- 8 Show the average of Basepay,Overtimepay, and Otherpay from each employee.
 select employeename,(basepay + Overtimepay + Otherpay)/3 as avg_bp_otp_op from salaries;
 
 -- 9 Show all employees who have the word "Manager" in ther job title.
 select employeename,jobtitle from salaries 
 where jobtitle like '%Manager%';
 
 -- 10 show all employees with a job title not equal to "manager".
 select employeename,jobtitle from salaries
 where jobtitle !='manager';
 
 -- 11 Show all employees with a total pay between 50,000 and 75,000. 
 select * from salaries 
 where totalpay between 50000 and 75000;
 
 -- 12 Show all employees with base pay less than 50,000 or a total pay greter than 1,00,000. 
 select * from salaries
 where basepay < 50000 and totalpay > 100000;
 
 -- 13 show all employees with a totalpay benefits value between 125,000 and 150,000 and a job title containing the word "director". 
 select * from salaries 
 where totalpaybenefits between 125000 and 150000 
 and jobtitle like "%director%";
 
 -- 14 Show all employees ordered by their total pay benefits in descending order. 
 select * from salaries
 order by totalpaybenefits desc;
 
 -- 15 Show all job titles with an average base pay of at least 100,000 and order them by the average base pay in descending order. 
 select jobtitle,avg(basepay) as "avg_basepay" from salaries 
 group by jobtitle 
 having avg(basepay) >=100000
 order by avg_basepay desc;
 
 -- 16 Delete the Notes column. 
 alter table salaries 
 drop column notes;
 
 -- End --
 