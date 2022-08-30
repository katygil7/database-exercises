use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

select *
from employees
where last_name like '%E%'
order by emp_no;

select *
from employees
where last_name like '%E%'
order by emp_no desc;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name desc, last_name desc;