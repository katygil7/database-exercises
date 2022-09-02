# RIGHT JOIN to combine results from the users and roles tables as we did in the lesson
select r.name, u.name
from users as u
right join roles as r on u.role_id = r.id
# Employees Data exercises
# Find the name of all departments currently managed by women.
select d.dept_name, concat(e.first_name, ' ', e.last_name) as full_name
from employees as e
inner join dept_manager as dm on dm.dept_no = e.emp_no
inner join departments as d on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01' and e.gender = 'F';
# Find the current titles of employees currently working in the Customer Service department.


# Find the current salary of all current managers.