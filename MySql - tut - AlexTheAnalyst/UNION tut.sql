-- UNIONS

SELECT first_name, last_name FROM employee_demographics
UNION	#distinct by default
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'old man' as Label FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'high pay' as Label FROM employee_salary
WHERE salary > 70000
ORDER BY  first_name, last_name;