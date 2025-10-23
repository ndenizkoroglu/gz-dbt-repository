-- models/staging/raw/stg_raw__sales.sql

with source as (
  select * from {{ source('raw', 'sales') }}
),

-- NULL kayıtları ele
clean as (
  select
    date_date,
    orders_id,
    pdt_id as products_id,
    revenue,
    quantity
  from source
  where orders_id is not null
    and pdt_id  is not null
)

-- (İsteğe bağlı) duplicate varsa en güncel kaydı tutmak için aç:
-- ,dedup as (
--   select *
--   from clean
--   qualify row_number() over (
--     partition by orders_id, products_id
--     order by date_date desc
--   ) = 1
-- )

select * from clean;
-- duplicate temizleme istiyorsan: select * from dedup;






