
-- Use the `ref` function to select from other models
{{ config(
    materialized='incremental'
 ) 
}}
select *
from  {{ ref('model_i') }}

