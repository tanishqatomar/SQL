# Write your MySQL query statement below
SELECT e.name as employee
FROM Employee e
JOIN Employee m ON e.managerID = m.id
WHERE e.salary > m.salary;
