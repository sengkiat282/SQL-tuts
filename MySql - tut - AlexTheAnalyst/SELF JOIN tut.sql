-- SELF JOIN
SELECT * FROM parks_and_recreation.employee_salary as sal1
JOIN parks_and_recreation.employee_salary as sal2
	ON sal1.employee_id = sal2.employee_id;

SELECT sal1.employee_id as Santa,
sal1.first_name, sal1.last_name, 
sal2.employee_id as Receiver,
sal2.first_name, sal2.last_name
FROM parks_and_recreation.employee_salary as sal1
JOIN parks_and_recreation.employee_salary as sal2
	ON sal1.employee_id + 1 = sal2.employee_id;
    
-- MULTI TABLE JOIN 
SELECT *
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
	 ON sal.dept_id = pd.department_id
;