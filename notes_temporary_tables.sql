use kalpana_1813;

drop table if exists my_numbers;

CREATE TEMPORARY TABLE my_numbers(
	n INT UNSIGNED NOT NULL,
    name VARCHAR(10) NOT NULL
);

select * from my_numbers;

# insert data in my_numbers
INSERT INTO my_numbers(n, name) VALUES (1, 'a'), (2, 'b'), (3, 'c'), (4, 'd'), (5, 'e');

# delete rows based on some condition
DELETE FROM my_numbers WHERE n >4;


----------
use employees;

select * from employees e
join dept_emp de using (emp_no)
join salaries s using (emp_no)
join departments d using (dept_no)
join titles t using (emp_no)
where de.to_date > NOW() AND s.to_date > NOW()
and t.to_date > NOW() and dept_name = 'Customer Service';

select emp_no, dept_no, first_name, last_name, salary, title, birth_date, hire_date
from employees e
join dept_emp de using (emp_no)
join salaries s using (emp_no)
join departments d using (dept_no)
join titles t using (emp_no)
where de.to_date > NOW() AND s.to_date > NOW()
and t.to_date > NOW() and dept_name = 'Customer Service';



CREATE TEMPORARY TABLE kalpana_1813.salary_info AS (
	select emp_no, dept_no, first_name, last_name, salary, title, birth_date, hire_date
	from employees e
	join dept_emp de using (emp_no)
	join salaries s using (emp_no)
	join departments d using (dept_no)
	join titles t using (emp_no)
	where de.to_date > NOW() AND s.to_date > NOW()
	and t.to_date > NOW() and dept_name = 'Customer Service');
    
select * from kalpana_1813.salary_info;

# What is the average salary for current employees in Customer Service?
select avg(salary) from kalpana_1813.salary_info;


# What is the std dev for salary in Customer Service?
select std(salary) from kalpana_1813.salary_info;


# Add two new columns in my temp table

ALTER TABLE kalpana_1813.salary_info ADD avg_salary float;
ALTER TABLE kalpana_1813.salary_info ADD std_salary float;
ALTER TABLE kalpana_1813.salary_info ADD greater_than_average INT;

# Update the std dev and avg_salary in salary_info

UPDATE kalpana_1813.salary_info SET avg_salary = 67000;
UPDATE kalpana_1813.salary_info SET std_salary = 16000;
UPDATE kalpana_1813.salary_info SET greater_than_average = salary > avg_salary;

select * from kalpana_1813.salary_info;



