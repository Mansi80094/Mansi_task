USE EmployeeRecord;
SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary DESC
LIMIT 3;

SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary ASC
LIMIT 3;


SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary ASC
LIMIT 1 OFFSET 1;


SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;


SELECT FirstName, LastName, Salary
FROM employee
ORDER BY salary ASC
LIMIT 1 OFFSET 2;


SELECT FirstName, LastName, Email, Salary
FROM employee
WHERE salary BETWEEN 65000 AND 80000
ORDER BY FirstName DESC
LIMIT 3;
