
# Triggers 

Delimiter $$

create trigger employee_insert
	after insert on employee_salary
	for each row
begin
	insert into employee_demographics(employee_id,first_name,last_name) values (new.employee_id,new.first_name,new.last_name);
end $$

Delimiter ;

insert into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id) values(13,'Alice','Thomas','Entertainer',50000,null);

select * from employee_salary;
select * from employee_demographics;

-- Events

-- Pawnee council comes with new legislation that they need to save money because of we spending more or they spending more and to retire people whos is over 60 and 
-- give them lifetime pay 
--  so we need to check the day and month and delete the employee over 60 ,thats our event

Delimiter $$
create event delete_employee1
ON SCHEDULE EVERY 30 SECOND
do
begin
	delete from employee_demographics where age>=60;
end $$
Delimiter ;















