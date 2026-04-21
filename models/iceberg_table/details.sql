{{config(materialized = 'table', schema ='iceberg_schema' ,table_type ='iceberg')}}


select e.employee_id,
       concat(e.first_name , e.last_name) as full_name, 
       h.emp_name as name  ,
       e.email,
       e.hire_date,
        e.salary, 
        e.department_id ,
        h.salary as hr_salary 
from  {{ref('employe_details_iceberg')}} e
      left join  {{ref('hr_emp_iceberg') }} h on e.employee_id = h.emp_id
      order by e.employee_id