
  
    

        create or replace transient table WideWorldImportersDW.stg.dwh_dimcity  as
        (-- The model that creates the DimCity in the Data Warehouse


SELECT *
FROM stg.DimCity
        );
      
  