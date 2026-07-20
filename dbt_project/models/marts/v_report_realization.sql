select
    coalesce(sale_dt, rr_dt) as date, -- обрабатываем дату продажи
    barcode,
    nm_id,
    gi_id,
    rrd_id,
    subject_name as subject,
    brand_name as brand,
    doc_type_name,
    quantity,
    retail_price,
    retail_amount,
    sale_percent,
    commission_percent,
    ppvz_sales_commission,
    delivery_rub,
    ppvz_reward,
    ppvz_vw,
    ppvz_vw_nds
from {{ ref('stg_sales_report') }}