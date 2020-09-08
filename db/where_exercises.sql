USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Find all employees whose last name starts with 'E' — 7,330 rows.
-- Find all employees hired in the 90s — 135,214 rows.
-- Find all employees born on Christmas — 842 rows.
-- Find all employees with a 'q' in their last name — 1,873 rows.

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';


SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

