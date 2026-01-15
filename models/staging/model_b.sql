
-- Use the `ref` function to select from other models
{{ config(
    materialized='view'
 ) 
}}
select *
from  {{ source('my_source', 'src_planets') }}
join  {{ source('my_source', 'src_complaints') }} using(planet_id)

