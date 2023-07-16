
  create or replace   view WideWorldImportersDW.src.src_StockItems
  
   as (
    

WITH stockitems AS(
    SELECT *
    FROM src.StockItems
)

SELECT *
FROM stockitems
  );

