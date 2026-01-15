
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select *
from  {{ ref('model_b') }} b
join  {{ ref('model_c') }} c using(complaint_id)

