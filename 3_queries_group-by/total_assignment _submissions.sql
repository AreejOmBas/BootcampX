/* 

Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.



SELECT SUM(assignment_submissions.duration) as total_duration
 FROM assignment_submissions 
 JOIN students ON students.id = student_id
 JOIN cohorts ON cohorts.id = students.cohort_id
 WHERE cohorts.name = 'FEB12';

 */

 SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions
 FROM assignment_submissions
 JOIN students ON students.id = student_id
 JOIN cohorts ON cohorts.id = students.cohort_id
 GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;