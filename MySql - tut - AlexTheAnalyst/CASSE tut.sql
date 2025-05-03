SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 and 50 THEN 'EXPERIENCED'
END AS age_bracket
FROM employee_demographics;

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
	WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.1
END AS bonus
FROM employee_salary;