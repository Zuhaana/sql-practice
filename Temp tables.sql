USE Parks_and_Recreation;

-- Creating temp table 

-- first way

create temporary table temp_table
(first_name varchar(50), last_name varchar(50),favorite_movie varchar(100));

select * from temp_table;
insert into temp_table values ('Alice','Thomas','Emily in paris');

-- second way

create temporary table salary_over_50k
select * from employee_salary where salary >=50000;

select * from salary_over_50k;



















