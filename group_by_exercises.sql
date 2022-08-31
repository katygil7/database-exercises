# n your script, use DISTINCT to find the unique titles in the titles table.
select distinct title
from titles;

# Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
select last_name
from employees
where last_name like 'E%'
  and last_name like '%E'
group by last_name;

#Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
select last_name , first_name, count(*)
from employees
where last_name like 'E%'
  and last_name like '%E'
group by first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'
select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select distinct last_name, count(*)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

#Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
select first_name, last_name, gender, count(*)
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;



