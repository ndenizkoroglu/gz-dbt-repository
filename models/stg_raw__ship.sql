-- stg_raw__ship.sql
SELECT
    CAST(parcel_id AS int64) AS orders_id,
    CAST(date_shipping AS date) AS date_date,
    NULL AS shipping_fee,
    NULL AS log_cost,
    NULL AS ship_cost
FROM `deniz-challenge1.course15.circle_parcel`





