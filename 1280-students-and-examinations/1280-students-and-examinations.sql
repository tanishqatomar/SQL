# Write your MySQL query statement below
SELECT STU.student_id,STU.student_name,SUB.subject_name,
COUNT(EXM.student_id) AS attended_exams
FROM Students AS STU
CROSS JOIN Subjects AS SUB
LEFT JOIN Examinations AS EXM
  ON (
    STU.student_id = EXM.student_id
    AND SUB.subject_name = EXM.subject_name)
GROUP BY 1, 2, 3
ORDER BY STU.student_id,SUB.subject_name; 