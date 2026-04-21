{{config(materialized = 'table', schema ='iceberg_schema' ,table_type ='iceberg')}}

select * from {{source('my_source','hr_employees')}}