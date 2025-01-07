SELECT cohorts.name AS name, avg(completed_at - started_at) AS average_assistance_time 
FROM students
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY avg(completed_at - started_at);