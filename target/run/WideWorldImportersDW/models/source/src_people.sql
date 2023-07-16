
  create or replace   view WideWorldImportersDW.src.src_people
  
   as (
    

WITH people AS(
    SELECT *
    FROM src.People
)

SELECT *
FROM people
  );

