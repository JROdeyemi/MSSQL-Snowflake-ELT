
  create or replace   view WideWorldImportersDW.dwh.stgFactSales
  
   as (
    -- The model that creates the staging table for FactSales
WITH invoices AS(
        SELECT *
        FROM WideWorldImportersDW.dwh.src_invoices
),

invoicelines AS(
        SELECT *
        FROM WideWorldImportersDW.dwh.src_invoicelines
),

customers AS(
        SELECT *
        FROM WideWorldImportersDW.dwh.src_Customers
)

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
FROM invoices AS i 
LEFT JOIN invoicelines AS il 
        ON i.invoiceid = il.invoiceid
LEFT JOIN customers AS c 
        ON i.CustomerID = c.CustomerID
  );

