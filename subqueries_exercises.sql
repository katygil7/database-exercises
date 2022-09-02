# exercise
# Find all the employees with the same hire date as employee 101010 using a subquery.
select first_name, hire_date
from employees
where hire_date in (
    select hire_date
    from employees where emp_no = '101010'
    );
# Find all the titles held by all employees with the first name Aamod.
select  title
from titles
where emp_no in (
    select emp_no
    from  employees where first_name = 'Aamod'
    );
#  6 unique titles
select distinct title
from titles
where emp_no in (
    select emp_no
    from employees where first_name = 'Aamod'
    );
# Find all the current department managers that are female.
select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager where gender = 'F' and to_date = '9999-01-01'
    );

