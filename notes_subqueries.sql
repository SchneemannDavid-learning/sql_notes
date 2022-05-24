SELECT avg(salary) from salaries;

SELECT emp_no from salaries
WHERE salary > (SELECT avg(salary) from salaries);

-- Get names of all current managers
SELECT emp_no FROM dept_manager
WHERE dept_manager.to_date > NOW();

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager
				WHERE dept_manager.to_date > NOW())


SELECT * FROM salaries
WHERE to_date > NOW();

------------------------------

SELECT salary, first_name, last_name FROM salaries
JOIN employees USING (emp_no)
WHERE salary > (SELECT AVG(salary) FROM salaries)
AND to_date > NOW()
LIMIT 10;


## get emp_no for dept managers

SELECT emp_no FROM dept_manager
WHERE to_date > NOW();

SELECT first_name, last_name, gender, birth_date
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager
WHERE to_date > NOW());


### Table Subqueris return an Entire Table

-- find all employees with first name starting with 'geor'.
-- then join with salary table and list first_name, last_name and salary

SELECT * FROM employees
WHERE first_name like 'geor%';

SELECT first_name, last_name, salary
FROM (SELECT * FROM employees
WHERE first_name like 'geor%') AS table1
JOIN salaries USING (emp_no);


# subquery in select statement example

SELECT *, (select 2+2) as four
FROM salaries
limit 100;

-----
## this would give an error
SELECT emp_no, salary, avg(salary)
FROM salaries
LIMIT 100;

#subqueries allow us to 
SELECT emp_no, salary, (select avg(salary) from salaries where to_date > NOW())
FROM salaries
LIMIT 100;
