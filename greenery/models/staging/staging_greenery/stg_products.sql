{{
  config(
    materialized='view'
  )
}}

with products as (
    select
      product_id,
      name as product_name,
      price as price_usd,
      inventory as product_inventory
    from {{ source('greenery', 'products') }}
)

select *
from products

