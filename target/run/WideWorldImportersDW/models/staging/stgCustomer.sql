
  create or replace   view WideWorldImportersDW.dwh.stgCustomer
  
   as (
    -- The model that creates the staging table for DimCustomer

WITH customers AS (
        SELECT *
        FROM WideWorldImportersDW.dwh.src_Customers
),

customercategories AS (
        SELECT *
        FROM WideWorldImportersDW.dwh.src_customercategories
),

buyinggroups AS (
        SELECT *
        FROM WideWorldImportersDW.dwh.src_Buyinggroups
),

people AS (
        SELECT *
        FROM WideWorldImportersDW.dwh.src_people
)

SELECT c.CustomerID,
        c.CustomerName,
        c2.CustomerName AS BillToCustomer,
        cc.CustomerCategoryName AS Category,
        b.BuyingGroupName AS BuyingGroup,
        p.FullName AS PrimaryContact,
        c.PostalPostalCode AS PostalCode


        
FROM customers AS c 
LEFT JOIN customers AS c2
        ON c.BillToCustomerID = c2.CustomerID
LEFT JOIN customercategories AS cc 
        ON c.CustomerCategoryID = cc.CustomerCategoryID
LEFT JOIN buyinggroups AS b 
        ON c.BuyingGroupID = b.BuyingGroupID
LEFT JOIN people AS p 
        ON c.PrimaryContactPersonID = p.PersonID
  );

