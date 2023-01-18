SELECT first_name, last_name
FROM employee
WHERE city LIKE 'Calgary';

SELECT MAX(birth_date) FROM employee;
SELECT MIN(birth_date) FROM employee;



SELECT * FROM employee
WHERE reports_to = (
    SELECT employee_id FROM employee
    WHERE first_name = 'Nancy'
);