
  create or replace   view WideWorldImportersDW.src.src_Colors
  
   as (
    

WITH colors AS(
    SELECT *
    FROM src.Colors
)

SELECT *
FROM colors
  );

