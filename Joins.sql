USE Parks_and_Recreation;

-- Joins

-- 1 Inner Join

select * from employee_demographics ed inner join employee_salary es on ed.employee_id = es.employee_id;

-- 2 Outer Join

select * from employee_demographics ed left join employee_salary es on ed.employee_id = es.employee_id;

select * from employee_demographics ed right join employee_salary es on ed.employee_id = es.employee_id;

-- 3 Self Join

select emp1.employee_id,emp1.first_name,emp1.last_name,emp2.employee_id,emp2.first_name,emp2.last_name from employee_salary emp1 join 
employee_salary emp2 on emp1.employee_id +1 = emp2.employee_id;

-- Joining multiple tables

select * from employee_salary emp1 join employee_salary emp2 on emp1.employee_id +1 = emp2.employee_id 
join parks_departments pd on emp2.dept_id = pd.department_id;








  