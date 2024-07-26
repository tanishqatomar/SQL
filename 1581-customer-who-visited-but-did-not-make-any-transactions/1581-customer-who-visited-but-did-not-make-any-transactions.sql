# Write your MySQL query statement below
SELECT VISITS.customer_id, COUNT(VISITS.visit_id) as count_no_trans
FROM VISITS 
LEFT JOIN TRANSACTIONS AS T USING (visit_id)    #all values from VISITS will included, even if there is no matching record in TRANSACTIONS 
WHERE T.transaction_id IS NULL  #keeps only visits without transactions
GROUP BY 1;