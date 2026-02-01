USE Parks_and_Recreation;

-- case statement
select first_name,last_name,age ,
case when age <= 30 then 'Young'
when age between 31 and 50 then 'Old'
when age >=51 then 'On death door' end as age_bracket
from employee_demographics;

-- Pawnee council sent out a memo of their bonus and pay increase for end of year and we need to follow it and determine people's end of year salary or the salary going into the 
-- new year and if they got bonus how much was it?

-- pay increase and bonus

select first_name ,last_name,salary, 
case when salary < 50000 then salary*1.05 when salary > 50000 then salary*1.07 end as new_salary ,
case when dept_id = 6 then salary * 1.10 end as Bonus from employee_salary; 
