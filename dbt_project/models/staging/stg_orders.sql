with source as (
    select * from {{ source('raw_sources', 'raw_orders') }}
)

select
    -- Переименовываем и преобразуем типы в соответствии с ожиданиями Power BI
    id,
    number,
    cast("date" as timestamp) as date,
    cast("lastChangeDate" as timestamp) as lastChangeDate,
    "supplierArticle" as supplier_article,
    "techSize" as tech_size,
    cast("barcode" as bigint) as barcode,
    cast("quantity" as integer) as quantity,
    cast("totalPrice" as numeric) as total_price,
    cast("discountPercent" as integer) as discount_percent,
    "warehouseName" as warehouse_name,
    "oblast",
    cast("incomeID" as bigint) as income_id,
    cast("odid" as bigint) as odid,
    cast("nmId" as integer) as nm_id,
    "subject",
    "category",
    "brand",
    cast("isCancel" as boolean) as is_cancel,
    cast("cancel_dt" as timestamp) as cancel_date,
    "gNumber" as g_number,
    "sticker",
    cast("dag_date" as date) as dag_date
from source