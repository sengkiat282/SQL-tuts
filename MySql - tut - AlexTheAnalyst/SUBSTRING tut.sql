SELECT first_name, Length(first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, UPPER(first_name)	#opposite is LOWER
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3 , 2), 	#from 3rd char, display first 2 chars
birth_date,
SUBSTRING(birth_date, 6 , 2) as birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name, 
CONCAT(first_name, ' ', last_name) as full_name 
FROM employee_demographics;