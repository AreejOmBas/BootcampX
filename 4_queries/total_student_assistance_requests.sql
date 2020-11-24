/* 
Get the total number of assistance_requests for a student.

Select the student's name and the total assistance requests.
Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.
 */

 SELECT COUNT (assistance_requests.*) as total_requests , students.name as student_name
 From assistance_requests 
 Join students ON  student_id = students.id
 where name = 'Elliot Dickinson'
 GROUP BY students.name;
 