/* 
Calculate the average total duration of assistance requests for each cohort.

Use the previous query as a sub query to determine the duration per cohort.
Return a single row average_total_duration
 */

 
 
 
 SELECT AVG(total_assistance_duration) 
 FROM (SELECT cohorts.name as cohort , SUM(completed_at - started_at) as total_assistance_duration
 FROM assistance_requests
 Join students ON  student_id = students.id
 JOIN cohorts ON  cohorts.id = cohort_id 
 GROUP BY cohorts.name) AS total_assistance_duration;
 
 