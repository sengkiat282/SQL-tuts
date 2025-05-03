SELECT * FROM employee_demographics
WHERE employee_id IN 
	(SELECT employee_id 	#1 column only
		FROM parks_and_recreation.employee_salary
		WHERE dept_id = 1);

SELECT first_name, salary, 
(SELECT AVG(salary) FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(AGE), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM
(SELECT gender, AVG(age) as avg_age, MAX(age) as max_age, MIN(AGE) as min_age, COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table;