USE Parks_and_Recreation;

-- Subquery

-- ? select everything where the emp id have dept id =1

select * from employee_demographics where employee_id in (select employee_id from employee_salary where dept_id=1) ;

-- ? Lets see employees salary is above or below the average of the salary

select first_name,last_name,salary,(select avg(salary) as average_salary from employee_salary) from employee_salary;

select avg(max_age) as avg_age from (select gender, max(age) as max_age from employee_demographics group by gender)as agg_table;

-- can be done using CTC and temp table