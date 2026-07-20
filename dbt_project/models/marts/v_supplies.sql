select
    date,
    income_id,
    dag_date as supply_date,
    date_close,
    lastChangeDate,
    barcode,
    nm_id,
    supplier_article,
    quantity,
    total_price,
    status,
    warehouse_name
from {{ ref('stg_supplies') }}