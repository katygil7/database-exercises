# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select emp_no, first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

# Find all employees whose last name starts with 'E' — 7,330 rows.
select *
from employees
where last_name like 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
select *
from employees
where last_name like '%q%';




