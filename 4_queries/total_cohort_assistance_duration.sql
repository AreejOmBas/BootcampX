/* 
Get the total duration of all assistance requests for each cohort.

Select the cohort's name and the total duration the assistance requests.
Order by total_duration.
Look at the ERD to see how to join the tables.

 */



SELECT cohorts.name as cohort , SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_assistance_duration
 FROM assistance_requests
 Join students ON  student_id = students.id
 JOIN cohorts ON  cohorts.id = cohort_id 
 GROUP BY cohorts.name
 ORDER BY total_assistance_duration;
