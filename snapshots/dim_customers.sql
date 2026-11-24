{% snapshot dim_customers %}

{{
    config(
      target_schema='marts',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='_LOADED_AT'
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}