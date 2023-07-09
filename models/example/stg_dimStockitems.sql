-- The model that creates the staging table for DimStockItems

{{
    config(
        materialized='table',
        unique_key='StockItemID',
        alias='DimStockItem'
    )
}}

SELECT s.StockItemID,
        s.StockItemName,
        c.ColorName,
        p.PackageTypeName AS UnitPackage,
        p2.PackageTypeName AS OuterPackage,
        s.Brand,
        s.Size,
        s.LeadTimeDays,
        s.QuantityPerOuter,
        s.IsChillerStock,
        s.BarCode,
        s.TaxRate,
        s.UnitPrice,
        s.RecommendedRetailPrice,
        s.TypicalWeightPerUnit,
        s.Photo 
FROM src.StockItems AS s 
LEFT JOIN src.Colors AS c 
        ON s.ColorID = c.ColorID
LEFT JOIN src.PackageTypes AS p
        ON s.UnitPackageID = p.PackageTypeID
LEFT JOIN src.PackageTypes AS p2
        ON s.OuterPackageID = p2.PackageTypeID





