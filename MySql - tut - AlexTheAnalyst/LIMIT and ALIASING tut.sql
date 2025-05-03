SELECT * FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3; #x, y means start at position x, go down y rows

-- ALIASING
SELECT gender, AVG(age) as avg_age FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40