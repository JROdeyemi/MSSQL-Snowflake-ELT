
  create or replace   view WideWorldImportersDW.dwh.src_Buyinggroups
  
   as (
    WITH buyinggroups AS (
    SELECT *
    FROM src.buyinggroups
)

SELECT *
FROM buyinggroups
  );

