
  create or replace   view WideWorldImportersDW.dwh.src_Countries
  
   as (
    WITH countries AS (
    SELECT *
    FROM src.Countries
)

SELECT *
FROM countries
  );

