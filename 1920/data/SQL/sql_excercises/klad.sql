SELECT e.last_name, e.department_id, d.department_name
FROM departments d
RIGHT OUTER JOIN employees e ON e.department_id = d.department_id
;

SELECT d.department_id, d.department_name, e.last_name||' '||e.first_name AS "NAME"
FROM departments d
FULL OUTER JOIN employees e ON d.department_id = e.department_id
;
