
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select *
from  {{ source('my_source', 'src_costs') }} 

