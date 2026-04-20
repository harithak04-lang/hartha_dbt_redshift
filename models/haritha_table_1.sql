{{config(materialized = 'table')}}


select id,name from {{source('my_source','table_test')}}