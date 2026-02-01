USE Parks_and_Recreation;

-- Where

select * from employee_demographics where first_name = 'Leslie';

select * from employee_salary where salary >= 50000;

select * from employee_demographics where gender !='Female';

select * from employee_demographics where birth_date = "1986-07-27";

select * from employee_demographics where birth_date > "1986-07-27" and gender='Male';

select * from employee_demographics where birth_date > "1986-07-27" or gender='Male';

select * from employee_demographics where birth_date > "1986-07-27" or not gender='Male';

select * from employee_demographics where (first_name = 'Leslie' and age = 44) or age >55;

select * from employee_demographics where first_name like 'Jer%';

select * from employee_demographics where first_name like '%er%';

select * from employee_demographics where first_name like 'A%';

select * from employee_demographics where first_name like 'a__';

select * from employee_demographics where first_name like 'a__%';

select * from employee_demographics where birth_date like '1987%';

