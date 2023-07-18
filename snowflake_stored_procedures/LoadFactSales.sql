CREATE OR REPLACE PROCEDURE WIDEWORLDIMPORTERSDW.DWH.LOADFACTSALES()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
INSERT INTO dwh.FactSales(
        CustomerKey,
        CityKey,
        StockItemKey,
        SalesPersonKey,
        InvoiceDateKey,
        DeliveryDateKey,
        InvoiceID,
        Description,
        Quantity,
        UnitPrice,
        TaxRate,
        TaxAmount,
        LineProfit,
        ExtendedPrice
)

SELECT c.CustomerKey,
        cy.CityKey,
        s.StockItemKey,
        e.EmployeeKey AS SalespersonKey,
        f.InvoiceDateKey,
        f.DeliveryDateKey,
        f.InvoiceID,
        f.Description,
        f.Quantity,
        f.UnitPrice,
        f.TaxRate,
        f.TaxAmount,
        f.LineProfit,
        f.ExtendedPrice
        
FROM stg.stgFactSales AS f
LEFT JOIN dwh.DimCustomer AS c
        ON f.CustomerID = c.CustomerID
LEFT JOIN dwh.DimCity AS cy
        ON f.CityID = cy.CityID
LEFT JOIN dwh.DimStockItems AS s
        ON f.StockItemID = s.StockItemID
LEFT JOIN dwh.DimEmployee AS e
        ON f.EmployeeID = e.EmployeeID;';