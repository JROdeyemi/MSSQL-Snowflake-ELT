
  create or replace   view WideWorldImportersDW.dwh.src_stateprovinces
  
   as (
    WITH stateprovinces AS(
    SELECT *
    FROM src.StateProvinces
)

SELECT *
FROM stateprovinces
  );

