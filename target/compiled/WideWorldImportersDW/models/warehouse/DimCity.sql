

SELECT *
FROM WideWorldImportersDW.stg.stgDimCity



    WHERE DateCreated > (SELECT MAX(DateCreated) FROM WideWorldImportersDW.dwh.DimCity)

