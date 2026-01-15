


select complaint_id, 
sum(repair_cost_usd) as total_amount
from  {{ ref('model_c') }} 
group by 1 
having total_amount < 0

