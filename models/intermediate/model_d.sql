
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select m1.*
from  {{ ref('model_a') }} m1
join  {{ ref('ephemeral_1') }}  e1 on m1.planet_id = e1.planet_id 

