--checking count of employees by emp_no
select count(distinct emp_no) from employees;
select count(*) from employees;
--since it is the same number (300024) as records in the 
--employees table, no need for a unique ID other than emp_no

--checking count of distinct employees in other tables:
select count(distinct emp_no) from salaries; --equals 300024, creating an id column anyways
select count(distinct emp_no) from dept_emp; --equals 300024, creating an id column anyways
select count(*) from titles; --7 records
select count(distinct title_id) from titles; --7 unique title_id's, no id needed

--checking count of distinct departents in dept_manager
select count(*) from departments; --only 9 departments
select count(distinct emp_no) from dept_manager; --equals 24, creating a unique id