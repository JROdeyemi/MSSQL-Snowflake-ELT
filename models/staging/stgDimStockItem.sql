-- The model that creates the staging table for DimStockItems
{{
    config(
        schema='stg',
        materialized='table'
    )
}}

WITH stockitems AS(
        SELECT *
        FROM {{ ref('src_StockItems')}}
),

colors AS(
        SELECT *
        FROM {{ ref('src_Colors')}}
),

packagetypes AS(
        SELECT *
        FROM {{ ref('src_PackageTypes')}}
)

SELECT s.StockItemID,
        s.StockItemName,
        c.ColorName AS Color,
        p.PackageTypeName AS UnitPackage,
        p2.PackageTypeName AS OuterPackage,
        s.Brand,
        s.Size,
        s.LeadTimeDays,
        s.QuantityPerOuter,
        s.IsChillerStock,
        s.Barcode,
        s.TaxRate,
        s.UnitPrice,
        s.RecommendedRetailPrice,
        s.TypicalWeightPerUnit, 
        s.Photo,
        s.ValidFrom AS DateCreated

FROM stockitems AS s
LEFT JOIN colors AS c
        ON s.ColorID = c.ColorID 
LEFT JOIN packagetypes AS p 
        ON s.UnitPackageID = p.PackageTypeID
LEFT JOIN packagetypes AS p2
        ON s.OuterPackageID = p2.PackageTypeID 






