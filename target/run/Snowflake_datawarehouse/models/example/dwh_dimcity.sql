
  
    

        create or replace transient table WideWorldImportersDW.stg_dwh.DimCity  as
        (-- The model that creates the DimCity in the Data Warehouse



MERGE INTO dwh.DimCity AS t
USING stg.DimCity AS s
ON t.CityID = s.CityID
WHEN MATCHED THEN
        UPDATE SET
        t.CityName = s.CityName,
        t.StateProvinceName = s.StateProvinceName,
        t.CountryName = s.CountryName,
        t.Continent = s.Continent,
        t.Region = s.Region,
        t.SubRegion = s.SubRegion,
        t.SalesTerritory = s.SalesTerritory

WHEN NOT MATCHED THEN 
        INSERT (CityID, CityName, StateProvinceName, CountryName, Continent, Region,SubRegion, SalesTerritory)
        VALUES (s.CityID, s.CityName, s.StateProvinceName, s.CountryName, s.Continent, s.Region, s.SubRegion, s.SalesTerritory)
        );
      
  