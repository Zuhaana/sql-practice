
-- Stored procedure

create procedure large_salaries()
select * from employee_salary where salary > 50000;

call large_salaries();

DELIMITER $$

CREATE PROCEDURE large_salaries2()
BEGIN
    SELECT * FROM employee_salary WHERE salary >= 50000;
    SELECT * FROM employee_salary WHERE salary >= 10000;
END $$

DELIMITER ;

call large_salaries2;

-- passing through parameters

DELIMITER $$	
CREATE PROCEDURE large_salaries3(p_emp_id INT)
BEGIN
	SELECT salary FROM employee_salary WHERE employee_id = p_emp_id;
END $$
DELIMITER ;

call large_salaries3(1);















