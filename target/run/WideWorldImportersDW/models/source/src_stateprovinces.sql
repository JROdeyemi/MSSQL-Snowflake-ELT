
  create or replace   view WideWorldImportersDW.src.src_stateprovinces
  
   as (
    

WITH stateprovinces AS(
    SELECT *
    FROM src.StateProvinces
)

SELECT *
FROM stateprovinces
  );

