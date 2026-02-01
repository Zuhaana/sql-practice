USE Parks_and_Recreation;

-- length
select first_name,length(first_name) from employee_demographics order by 2;

-- upper
select first_name,upper(first_name) from employee_demographics order by 2;

-- lower
select first_name,lower(first_name) from employee_demographics order by 2;

-- ltrim and rtrim
select ltrim('               Leslie                ');
select rtrim('               Leslie                ');

-- substring
select first_name,left(first_name,4),right(first_name,4),substring(first_name,3,2) ,birth_date,substring(birth_date,6,2) month from employee_demographics;

-- replace
select replace(first_name,'a','z') from employee_demographics;

-- locate
select first_name,locate('an',first_name) from employee_demographics;

-- concatination
select first_name,last_name ,concat(first_name,' ',last_name) as full_name from employee_demographics;

