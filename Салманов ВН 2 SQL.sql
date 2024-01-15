1.
select project_name, titel_name, AVG(positions.salary) AS salary
from positions 
INNER JOIN
projects ON projects.project_id=positions.project_id and project_name='ослвд'
INNER JOIN 
titles ON titles.id=positions.title_id and titel_name='qa engineer' 
group by   projects.project_name, titles.titel_name

2.
SELECT CONCAT(employee.last_name,' ',employee.first_name) AS employee, titles.titel_name 
FROM positions
INNER JOIN employee ON employee.employee_id=positions.employee_id 
INNER JOIN  titles ON titles.id=positions.title_id  
INNER JOIN  projects ON projects.project_id=positions.project_id
GROUP BY  titles.titel_name, employee
HAVING (COUNT(positions.employee_id)>1)