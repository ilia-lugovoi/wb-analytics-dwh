with source as (
    select * from {{ source('raw_sources', 'raw_supplies') }}
)

select
    id,
    cast("incomeId" as bigint) as income_id,
    cast("date" as timestamp) as date,
    cast("lastChangeDate" as timestamp) as lastChangeDate,
    "supplierArticle" as supplier_article,
    "techSize" as tech_size,
    cast("barcode" as bigint) as barcode,
    cast("quantity" as integer) as quantity,
    cast("totalPrice" as numeric) as total_price,
    cast("dateClose" as timestamp) as date_close,
    "warehouseName" as warehouse_name,
    cast("nmId" as integer) as nm_id,
    "status",
    cast("dag_date" as date) as dag_date
from source