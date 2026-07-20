with source as (
    select * from {{ source('raw_sources', 'raw_stock') }}
)

select
    id,
    cast("lastChangeDate" as timestamp) as lastChangeDate,
    "supplierArticle" as supplier_article,
    "techSize" as tech_size,
    cast("barcode" as bigint) as barcode,
    cast("quantity" as integer) as quantity,
    cast("isSupply" as boolean) as is_supply,
    cast("isRealization" as boolean) as is_realization,
    cast("quantityFull" as integer) as quantity_full,
    cast("quantityNotInOrders" as integer) as quantity_not_in_orders,
    warehouse,
    "warehouseName" as warehouse_name,
    cast("inWayToClient" as integer) as in_way_to_client,
    cast("inWayFromClient" as integer) as in_way_from_client,
    cast("nmId" as integer) as nm_id,
    "subject",
    "category",
    cast("daysOnSite" as integer) as days_on_site,
    "brand",
    "SCCode" as sc_code,
    cast("Price" as numeric) as price,
    cast("Discount" as numeric) as discount,
    cast("dag_date" as date) as dag_date
from source