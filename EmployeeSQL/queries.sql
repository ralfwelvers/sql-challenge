-- Ralf Welvers
-- Homework 9
-- SQL queries for data analysis

-- 1) 
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee e
inner join salary s on e.emp_no = s.emp_no;

-- 2)
select e.first_name, e.last_name, e.hire_date
from employee e
where date_part('YEAR',e.hire_date) = 1986;

-- 3)
select e.emp_no, e.first_name, e.last_name, dm.dept_no, dt.dept_name
from dept_manager dm
inner join employee e on dm.emp_no = e.emp_no
inner join department dt on dm.dept_no = dt.dept_no;

-- 4)
select e.emp_no, e.first_name, e.last_name, de.dept_no, dt.dept_name
from employee e
inner join dept_emp de on e.emp_no = de.emp_no
inner join department dt on de.dept_no = dt.dept_no;

-- 5)
select e.first_name, e.last_name, e.sex
from employee e
where e.first_name = 'Hercules' and e.last_name like 'B%';

-- 6)
select e.emp_no, e.first_name, e.last_name
from employee e
inner join dept_emp de on e.emp_no = de.emp_no
inner join department dt on de.dept_no = dt.dept_no
where dt.dept_no = 'd007';

-- 7)
select e.emp_no, e.first_name, e.last_name, dt.dept_name
from employee e
inner join dept_emp de on e.emp_no = de.emp_no
inner join department dt on de.dept_no = dt.dept_no
where dt.dept_no in ('d007','d005');

-- 8)
select e.last_name, count(e.last_name) as last_name_count
from employee e
group by e.last_name
order by last_name_count desc;

