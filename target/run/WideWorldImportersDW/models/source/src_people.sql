
  create or replace   view WideWorldImportersDW.dwh.src_people
  
   as (
    WITH people AS(
    SELECT *
    FROM src.People
)

SELECT *
FROM people
  );

