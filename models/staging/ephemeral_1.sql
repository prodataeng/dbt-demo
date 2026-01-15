
-- Use the `ref` function to select from other models
{{ config(
    materialized='ephemeral'
 ) 
}}
SELECT distinct  planet_id, hero FROM {{ source('my_source', 'src_complaints') }} 