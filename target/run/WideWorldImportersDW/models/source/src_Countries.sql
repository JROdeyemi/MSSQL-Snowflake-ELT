
  create or replace   view WideWorldImportersDW.src.src_Countries
  
   as (
    

WITH countries AS (
    SELECT *
    FROM src.Countries
)

SELECT *
FROM countries
  );

