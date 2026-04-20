{{config(materialized = 'incremental',schema = 'iceberg_schema',table_type = 'iceberg')}}


select * from spectrum_schema.employees_3

