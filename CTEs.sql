USE Parks_and_Recreation;

-- CTEs

with cte_example as 
(
select gender,avg(salary) avg_salary,max(salary) avg_max,min(salary) avg_min,count(salary) avg_count from employee_demographics dem join employee_salary sal 
on dem.employee_id = sal.employee_id group by gender
)
select * from cte_example;

-- Joining more than 1 CTEs

with cte_example as 
(
select employee_id,gender birth_date from employee_demographics where birth_date > '1985-01-01'
),
cte_example2 as
(
select employee_id,salary from employee_salary where salary > 50000
)
select * from cte_example join cte_example2 on cte_example.employee_id = cte_example2.employee_id;

-- Instead of aliasing we can do this

with cte_example(gender,avg_salary,avg_max,avg_min,avg_count) as 
(
select gender,avg(salary),max(salary),min(salary),count(salary) from employee_demographics dem join employee_salary sal 
on dem.employee_id = sal.employee_id group by gender
)
select * from cte_example;





