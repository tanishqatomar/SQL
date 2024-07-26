# Write your MySQL query statement below
SELECT TODAY.ID 
FROM WEATHER AS TODAY
LEFT JOIN WEATHER AS YESTERDAY 
ON (DATE_SUB(Today.recordDate, INTERVAL 1 DAY) = Yesterday.recordDate) 
WHERE TODAY.temperature > YESTERDAY.temperature;
