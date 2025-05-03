SELECT gender, AVG(salary) as avg_salary
FROM parks_and_recreation.employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id
GROUP BY gender;

SELECT gender, AVG(salary) OVER(PARTITION BY gender)
FROM parks_and_recreation.employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM parks_and_recreation.employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.last_name, gender, SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM parks_and_recreation.employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) as row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) as rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) as dense_rank_num
FROM parks_and_recreation.employee_demographics dem
JOIN employee_salary sal
	ON  dem.employee_id = sal.employee_id;