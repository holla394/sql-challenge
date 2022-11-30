--Question 1
select 
e.emp_no, 
e.last_name, 
e.first_name,
e.sex,
s.salary
from employees as e
join salaries as s on s.emp_no = e.emp_no;

--Question 2
select
first_name,
last_name,
hire_date
from employees
where extract(year from hire_date) = 1986;

--Question 3
select
d.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on dm.emp_no = e.emp_no;

--Question 4
select
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from employees as e
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no;

--Question 5
select
first_name,
last_name,
sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--Question 6
select
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from departments as d 
join dept_emp as de on de.dept_no = d.dept_no
join employees as e on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

--Question 7
select
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from departments as d 
join dept_emp as de on de.dept_no = d.dept_no
join employees as e on e.emp_no = de.emp_no
where d.dept_name = 'Sales'
	or d.dept_name = 'Development';
	
--Question 8
select
last_name,
count(last_name)
from employees
group by last_name
order by count(last_name) desc;