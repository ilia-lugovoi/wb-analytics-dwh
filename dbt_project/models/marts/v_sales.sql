select
    date,
    barcode,
    nm_id,
    supplier_article,
    subject,
    brand,
    warehouse_name,
    region_name,
    quantity,
    total_price,
    for_pay,
    finished_price,
    is_storno,
    is_realization
from {{ ref('stg_sales') }}