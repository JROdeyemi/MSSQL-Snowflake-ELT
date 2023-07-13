
  create or replace   view WideWorldImportersDW.dwh.src_Colors
  
   as (
    WITH colors AS(
    SELECT *
    FROM src.Colors
)

SELECT *
FROM colors
  );

