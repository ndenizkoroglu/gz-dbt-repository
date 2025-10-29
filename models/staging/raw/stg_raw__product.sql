-- stg_raw__product.sql
SELECT
    CAST(parcel_id AS string)       AS products_id,
    CAST(qty AS numeric)           AS purchase_price,
    CAST(model_name AS string)     AS product_name
FROM `deniz-challenge1.course15.circle_parcel_product`

