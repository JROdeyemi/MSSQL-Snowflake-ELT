
  
    

        create or replace transient table WideWorldImportersDW.stg.stgDimEmployee
         as
        (-- The model that creates the staging table for DimEmployee



WITH people AS (
        SELECT *
        FROM WideWorldImportersDW.src.src_people
)

SELECT PersonID AS EmployeeID,
        FullName AS EmployeeName,
        PreferredName,
        IsSalesperson,
        Photo,
        ValidFrom AS DateCreated

FROM people
WHERE IsEmployee = 1
        );
      
  