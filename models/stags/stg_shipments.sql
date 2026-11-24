{{ config(schema='stg') }}


select * from {{ source('raw', 'shipments') }}