
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select d.*
from  {{ ref('model_d') }} d
join  {{ ref('model_e') }} e using(complaint_id, planet_id)

