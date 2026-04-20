{{config(materialized = 'table',schema = 'iceberg_schema',table_type = 'ice_berg')}}


select * from iceberg_schema.employees