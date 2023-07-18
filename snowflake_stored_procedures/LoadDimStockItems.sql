CREATE OR REPLACE PROCEDURE WIDEWORLDIMPORTERSDW.DWH.LOADDIMSTOCKITEMS()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
MERGE INTO dwh.DimStockItems AS t
USING stg.stgDimStockItem AS s
    ON t.StockItemID = s.StockItemID
WHEN MATCHED THEN
    UPDATE SET
        t.StockItemName = s.StockItemName,
        t.ColorName = s.Color,
        t.UnitPackage = s.UnitPackage,
        t.OuterPackage = s.OuterPackage,
        t.Brand = s.Brand,
        t.Size = s.Size,
        t.LeadTimeDays = s.LeadTimeDays,
        t.QuantityPerOuter = s.QuantityPerOuter,
        t.IsChillerStock = s.IsChillerStock,
        t.BarCode = s.BarCode,
        t.TaxRate = s.TaxRate,
        t.UnitPrice = s.UnitPrice,
        t.RecommendedRetailPrice = s.RecommendedRetailPrice,
        t.TypicalWeightPerUnit = s.TypicalWeightPerUnit,
        t.Photo = s.Photo

WHEN NOT MATCHED THEN
    INSERT(StockItemID, StockItemName, ColorName, UnitPackage, OuterPackage, Brand, Size, LeadTimeDays, QuantityPerOuter, IsChillerStock, BarCode, TaxRate, UnitPrice, RecommendedRetailPrice, TypicalWeightPerUnit, Photo)
    VALUES(s.StockItemID, s.StockItemName, s.Color, s.UnitPackage, s.OuterPackage, s.Brand, s.Size, s.LeadTimeDays, s.QuantityPerOuter, s.IsChillerStock, s.BarCode, s.TaxRate, s.UnitPrice, s.RecommendedRetailPrice,s.TypicalWeightPerUnit, s.Photo);';