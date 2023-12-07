-- Define the source data
WITH source AS (
    SELECT *
    FROM {{ source('thelook_ecommerce', 'order_items') }}
)

-- Select the desired columns
SELECT
    -- IDs
    id AS order_item_id,
    order_id,
    user_id,
    product_id,
    inventory_item_id,

    -- Timestamps
    created_at,
    shipped_at,
    delivered_at,
    returned_at,

    -- Quantities
    sale_price,

    -- Status
    status
FROM source