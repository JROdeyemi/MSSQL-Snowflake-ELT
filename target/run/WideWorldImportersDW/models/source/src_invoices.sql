
  create or replace   view WideWorldImportersDW.dwh.src_invoices
  
   as (
    WITH invoices AS (
    SELECT *
    FROM src.invoices
)

SELECT *
FROM invoices
  );

