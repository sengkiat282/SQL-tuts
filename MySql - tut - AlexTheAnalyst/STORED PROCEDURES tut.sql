SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 40000;
END $$
DELIMITER ;

CALL large_salaries2();

DELIMITER $$
CREATE PROCEDURE large_salaries3(employee_id_x INT)
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE employee_id = employee_id_x;
END $$
DELIMITER ;

CALL large_salaries3(1);