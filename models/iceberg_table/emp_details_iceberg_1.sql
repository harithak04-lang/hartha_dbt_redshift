{{config(materialized = 'table', table_type ='iceberg')}}

select * from {{source('my_source','Employees')}}