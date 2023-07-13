
  create or replace   view WideWorldImportersDW.dwh.src_customercategories
  
   as (
    WITH customercategories AS (
    SELECT *
    FROM src.CustomerCategories
)

SELECT *
FROM customercategories
  );

