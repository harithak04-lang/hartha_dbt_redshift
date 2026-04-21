{{config(materialized = 'table', schema ='iceberg_schema' , table_type ='iceberg')}}

select d.dept_id,d.dept_name,d.location,e.emp_id,e.emp_name,e.email,e.salary,e.hire_date from  dep_dbt d
join  emp_dbt e on d.dept_id = e.dept_id