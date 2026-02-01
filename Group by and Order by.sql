USE Parks_and_Recreation;

-- Group by

select gender from employee_demographics group by gender;

select gender,avg(age) from employee_demographics group by gender;

select occupation,salary from employee_salary group by occupation,salary;

select gender,avg(age),min(age),max(age),count(age) from employee_demographics group by gender;

-- Order by

select * from employee_demographics order by first_name asc;

select * from employee_demographics order by gender , age desc;
