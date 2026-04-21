{{config(materialized = 'table', schema ='iceberg_schema' , table_type ='iceberg')}}

select * from {{source('glue_src','emp_s3_details')}}