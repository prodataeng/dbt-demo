
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select *, 'True' as active
from  {{ ref('seed_1') }}  

