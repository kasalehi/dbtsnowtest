{{config(schema='marts', materialized='view')}}

select 
signup_date as _LOADED_AT,
count(customer_id) as customer_count,
country
from {{ ref('dim_customers') }}
group by country, signup_date
