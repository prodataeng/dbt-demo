
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select e.*
from  {{ ref('model_e') }} e
join  {{ ref('seed_stg') }} s using(complaint_id)

