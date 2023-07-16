
  create or replace   view WideWorldImportersDW.src.src_Customers
  
   as (
    

WITH customers AS(
    SELECT *
    FROM src.Customers
)

SELECT *
FROM customers
  );

