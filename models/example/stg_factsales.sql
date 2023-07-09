-- The model that creates the staging table for FactSales

{{
    config(
        materialized='table',
        alias='FactSales'
    )
}}

SELECT i.InvoiceID,
        il.Description,
        c.CustomerID,
        il.StockItemId,
        il.Quantity,
        il.UnitPrice,
        i.SalesPersonPersonID AS EmployeeID,
        c.DeliveryCityID AS CityID,
        il.TaxRate,
        il.TaxAmount,
        il.LineProfit,
        il.ExtendedPrice,
        TO_NUMBER(REPLACE(i.InvoiceDate, '-', '')) AS InvoiceDateKey,
        TO_NUMBER(REPLACE(TO_CHAR(DATE(i.ConfirmedDeliveryTime)), '-', '')) AS DeliveryDateKey
FROM src.invoices AS i 
LEFT JOIN src.invoicelines AS il 
        ON i.invoiceid = il.invoiceid
LEFT JOIN src.customers AS c 
        ON i.CustomerID = c.CustomerID
