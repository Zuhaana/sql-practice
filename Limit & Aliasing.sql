USE Parks_and_Recreation;

-- Limit

select * from employee_demographics order by age desc limit 4;

select * from employee_demographics order by age desc limit 1,3; 
							-- OR
select * from employee_demographics order by age desc limit 3 offset 1;

-- Aliasing

select gender,avg(age) as avg_age from employee_demographics group by gender having avg_age >40;
                                   -- OR
select gender,avg(age) avg_age from employee_demographics group by gender having avg_age >40;