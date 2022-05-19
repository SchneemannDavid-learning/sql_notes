use fruits_db;
show tables;

select * from fruits;

SELECT
	name, quantity
from
	fruits;
    
# return number of rows in the table
select count(*) from fruits;

# how many unique fruits are in the table

select count(distinct(name)) from fruits;


select * from fruits; 

select *, quantity * 100 * 2 +5 as some_calculation from fruits;

# give back all rows where name is apple
select * from fruits
where name = 'apple';

# give back all rows where id = 5
select * from fruits
where id = 5;

select * from fruits
where name like '%berry%';

select * from fruits
where quantity > 10;


select * from fruits
where quantity between 5 and 20;

select 2+2;

select 2 > 1 as boolean_flag;

select 'I am output!' as info;
