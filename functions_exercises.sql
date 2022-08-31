# example of concat
select e.birth_date,
       year(e.birth_date),
       month(e.birth_date),
       day(e.birth_date),
       concat(month(e.birth_date), '/', day(e.birth_date), '/', year(e.birth_date)) as freedom_date
from employees as e
order by e.birth_date;
# now(), dated-iff() examples
# This shows the today's date and tomorrows date
select now(), date_add(now(),interval 1 day);
# another examples:
select now(), date_add(now(), interval -1 week) as one_week_ago,
       datediff(now(),date_add(now(), interval -1 week )) as num_days;



# Exercises
# Use concat() to combine their first and last name together as a single column in your results.
select concat(first_name, ' ', last_name) as Full_Name
from employees
where last_name like '%E%'
order by first_name;
# Find all employees born on Christmas — 842 rows.
select birth_date
from employees
where month(birth_date) = 12
and day (birth_date) = 25;

#Find all employees hired in the 90s and born on Christmas — 362 rows.
select birth_date, hire_date
from employees
where year(hire_date) between 1990 and 1999
    and month(birth_date) = 12
    and day (birth_date) = 25
order by hire_date;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
select first_name, last_name, birth_date, hire_date
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day (birth_date) = 25
order by hire_date desc;

#For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
select datediff(curdate(), hire_date),
       concat(curdate(),'  /  ',hire_date) as Employee_Information,
       concat(first_name, ' ', last_name) as Employee_Name
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day (birth_date) = 25
order by hire_date desc;