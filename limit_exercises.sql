# List the first 10 distinct last name sorted in descending order.
select distinct last_name
from employees
order by last_name desc
limit 10;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table.
select distinct emp_no
from salaries
order by salary desc
limit 5;

# Update the previous query to find the tenth page of results.
select emp_no
from salaries
order by salary desc
limit 5 offset 45;
# (desired_page_number -1) * limit amount)
# (desired_page_number * limit_amount -limit_amount) 10 * 5 - 5 

