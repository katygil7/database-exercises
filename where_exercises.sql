use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select first_name, last_name, gender
from employees
where first_name = 'Irena'
    or first_name =  'Vidya'
    or first_name = 'Maya'
order by gender;

# Find all employees whose last name starts with 'E' — 7,330 rows.
select *
from employees
where last_name like 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
select *
from employees
where last_name like '%q%';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
select first_name, last_name,gender
from employees
where  gender = 'M'
         and first_name in ('Irena' ,'Vidya', 'Maya');

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select *
from employees
where last_name like 'E%'
like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select *
from employees
where last_name like '%q%'
and not last_name like '%qu%';