
  create or replace   view WideWorldImportersDW.dwh.src_PackageTypes
  
   as (
    WITH packagetypes AS(
    SELECT *
    FROM src.PackageTypes
)

SELECT *
FROM packagetypes
  );

