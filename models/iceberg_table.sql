{{config(materialized = 'table', schema ='iceberg_schema' , table_type ='iceberg')}}

select * from {{ref('dep_dbt')}}