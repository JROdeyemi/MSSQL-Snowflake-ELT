
  create or replace   view WideWorldImportersDW.dwh.src_Cities
  
   as (
    WITH cities AS(
    SELECT *
    FROM src.Cities
)

SELECT *
FROM cities
  );

