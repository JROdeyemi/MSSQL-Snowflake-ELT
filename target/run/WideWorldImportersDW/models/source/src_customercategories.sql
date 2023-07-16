
  create or replace   view WideWorldImportersDW.src.src_customercategories
  
   as (
    

WITH customercategories AS (
    SELECT *
    FROM src.CustomerCategories
)

SELECT *
FROM customercategories
  );

