# example fir aliases (as)
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE length(CONCAT(first_name, ' ', last_name))>20
ORDER BY full_name
LIMIT 25;
# In order to use (full_name) having can be used
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
HAVING length(full_name)>20
ORDER BY full_name
LIMIT 25;

#Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
select concat(last_name, ' ', first_name) as full_name
from employees
limit 10;
#Add the date of birth for each employee as 'DOB' to the query.
select concat(last_name, ' ', first_name) as full_name, birth_date as DOB
from employees
limit 10;
# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
select concat( emp_no, ' - ', last_name, ' ', first_name) as full_name, birth_date as DOB
from employees
limit 10;