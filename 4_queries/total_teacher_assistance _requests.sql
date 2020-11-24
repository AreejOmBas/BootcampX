/* 

Get the total number of assistance_requests for a teacher.

Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.
 */

 SELECT name , COUNT (assistance_requests.*) as total_assistance_requests
 From teachers 
 Join assistance_requests ON  teacher_id = teachers.id
 where name = 'Waylon Boehm'
 GROUP BY name;
 