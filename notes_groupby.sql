use employees;

select *
from salaries;

select emp_no, salary, from_date, to_date
from salaries;

select avg(salary) from salaries;

select min(salary) from salaries;

select salary, avg(salary) from salaries;

select avg(salary) from salaries
where emp_no = 10001;
## a better solution...:

select emp_no, avg(salary) from salaries
GROUP BY emp_no;

SELECT emp_no, MAX(salary), MIN(salary), AVG(salary)
FROM salaries
GROUP BY emp_no;

SELECT emp_no, MAX(salary), MIN(salary), AVG(salary)
FROM salaries
WHERE to_date > NOW()
GROUP BY emp_no;

SELECT emp_no, 
	from_date,
    to_date,
	MAX(salary), 
	MIN(salary), 
    AVG(salary)
FROM salaries
WHERE to_date > NOW()
GROUP BY emp_no,
		from_date,
        to_date
ORDER BY emp_no ASC;


USE employees;

select * from employees LIMIT 5;

# silly example:
SELECT gender, last_name, AVG(emp_no)
FROM employees
GROUP BY gender,
		last_name
ORDER BY last_name ASC;

SELECT gender, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY gender;

SELECT gender, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY gender;
-- M : 71144
-- F : 47051

SELECT gender, COUNT(*)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY gender;

SELECT last_name, COUNT(*) AS 'number_with_same_last_name'
FROM employees
WHERE last_name NOT LIKE '%a%'
GROUP BY last_name
HAVING number_with_same_last_name < 150;

SELECT COUNT(DISTINCT first_name)
FROM employees;
-- 1275

SELECT DISTINCT(COUNT(first_name))
FROM employees;
-- 300024
## only one value (one count), so one number returned

SELECT DISTINCT(first_name)
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name;

-- ----------
select first_name, count(DISTINCT(first_name))
from employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT last_name, count(*) AS n_same_last_name
FROM employees
GROUP BY last_name
HAVING n_same_last_name < 150;

SELECT concat(first_name, " ", last_name) AS full_name, count(*) AS n_same_full_name
FROM employees
GROUP BY full_name
HAVING n_same_full_name >= 5;
