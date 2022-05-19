use employees;

select * from employees
where hire_date = '1985-01-01';

select min(emp_no) from employees;

# 5.19 Notes
# CLAUSES:
# WHERE

SELECT * FROM employees
where gender = 'M';
# where some condition is true;

### Pattern matching as a filtering condition
SELECT * FROM employees
where first_name like '%sus%';
	# '%' means artifact within it is found anywhere within the string

SELECT * FROM employees
where first_name like 'sus';
	# without '%' we are specifying that we are looking for sus at the beginning of the string

SELECT * FROM employees
where first_name like 'sus%';

SELECT * FROM employees
where first_name like '%sus';

SELECT * FROM employees
where last_name like '_aek';
	# '_' means any character fills it, we don't care which, as long as 'aek' follows it

SELECT * FROM employees
where first_name like '_____';
	# more underscores means we are searching for strings with exactly that many letters.. in this case, 5

SELECT * FROM employees
where first_name like '____' and 'some other condition';
	# we can add as many qualifiers as we like..;
    
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, title
FROM titles
WHERE to_date IS NOT NULL;


### Chaining WHERE clauses
	# We can chain together an IN clause with a LIKE clause, 
    # or any of the clauses, using AND and OR

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber','Baek')
  AND emp_no < 20000;
  
  # 1 == True, 0 == False
# True AND True ---> True
# True AND False --> False

# True OR False --> True
# True OR True ---> True

select 1 = 1;
select 1 = 2;

select 0 and 0 or 1;
select 0 and (0 or 1);


# NOT, NOT NULL, NOT LIKE

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name NOT IN ('Herber', 'Dredge', 'Lipner', 'Baek');


### ORDER BY clause

#SELECT column FROM table ORDER BY column_name [ASC|DESC];
SELECT emp_no, first_name, last_name
FROM employees 
ORDER BY first_name DESC;

SELECT emp_no, first_name, last_name
FROM employees 
ORDER BY first_name DESC, last_name ASC;







    
