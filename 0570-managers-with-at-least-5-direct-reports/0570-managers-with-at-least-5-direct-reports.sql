# Write your MySQL query statement below
SELECT Manager.name
FROM Employee 
JOIN Employee AS Manager
    ON (Employee.managerId = Manager.id)
GROUP BY Manager.id 
HAVING COUNT(*) >= 5; #counts the total number of rows in each group