{{config(materialized = 'table',schema = 'iceberg_schema',table_type = 'ice_berg')}}


select id,name from {{ref('haritha_table_1')}}