select
    date,
    barcode,
    nm_id,
    supplier_article,
    subject,
    brand,
    category,
    warehouse_name,
    oblast,
    quantity,
    total_price,
    discount_percent,
    is_cancel,
    cancel_date,
    odid,
    g_number
from {{ ref('stg_orders') }}