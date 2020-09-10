USE employees;

# write a query that shows each department along with the name of the current manager for that department.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';


# Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY  dept_name;

SHOW TABLES;
SELECT * FROM departments;
SELECT DISTINCT TITLE FROM TITLES;
select * from dept_manager;
select * from dept_emp;
select * from employees;
select * from salaries;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.titles, COUNT()
FROM employees as e
         JOIN title as t
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date d009 = '9999-01-01' AND e.gender = 'F' ORDER BY  dept_name;

FROM salary as s
s.salary
