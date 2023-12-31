
  create or replace   view WideWorldImportersDW.dwh.stgEmployee
  
   as (
    -- The model that creates the staging table for DimEmployee
WITH people AS (
        SELECT *
        FROM WideWorldImportersDW.src.src_people
)

SELECT PersonID AS EmployeeID,
        FullName AS EmployeeName,
        PreferredName,
        IsSalesperson,
        Photo

FROM people
WHERE IsEmployee = 1
  );

