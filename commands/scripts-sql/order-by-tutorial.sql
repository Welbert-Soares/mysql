-- Where Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
From employee_salary
WHERE salary < 50000
ORDER BY salary DESC
;


-- AND OR NOT --	Logical Operators

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = '44') OR age > 55

-- LIKE Statement
-- % and _

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'


-- Ordenation

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender

-- ORDER BY


SELECT * 
FROM employee_demographics
ORDER BY gender, age;



-- Having vs Where

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000



