
  create or replace   view WideWorldImportersDW.dwh.src_Customers
  
   as (
    WITH customers AS(
    SELECT *
    FROM src.Customers
)

SELECT *
FROM customers
  );

