


SELECT cohorts.name as cohort ,AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
 FROM assistance_requests
 Join students ON  student_id = students.id
 JOIN cohorts ON  cohorts.id = cohort_id 
 GROUP BY cohorts.name
 ORDER BY average_assistance_request_duration DESC 
 LIMIT 1;
