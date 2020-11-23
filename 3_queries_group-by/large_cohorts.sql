/* 
Get all cohorts with 18 or more students.

Select the cohort name and the total students.
Order by total students from smallest to greatest.
 */
SELECT cohorts.name , count(students.id) as total_students
From cohorts
JOIN students on cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id);

