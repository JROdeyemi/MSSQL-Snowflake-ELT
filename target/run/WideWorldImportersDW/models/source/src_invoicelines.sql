
  create or replace   view WideWorldImportersDW.dwh.src_invoicelines
  
   as (
    WITH invoicelines AS(
    SELECT *
    FROM src.Invoicelines
)

SELECT *
FROM invoicelines
  );

