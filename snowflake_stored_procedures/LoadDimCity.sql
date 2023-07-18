CREATE OR REPLACE PROCEDURE WIDEWORLDIMPORTERSDW.DWH.LOADDIMCITY()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
MERGE INTO dwh.DimCity AS t
USING stg.stgDimCity AS s
ON t.CityID = s.CityID
WHEN MATCHED THEN
        UPDATE SET
        t.CityName = s.CityName,
        t.StateProvinceName = s.StateProvince,
        t.CountryName = s.Country,
        t.Continent = s.Continent,
        t.Region = s.Region,
        t.SubRegion = s.SubRegion,
        t.SalesTerritory = s.SalesTerritory

WHEN NOT MATCHED THEN 
        INSERT (CityID, CityName, StateProvinceName, CountryName, Continent, Region,SubRegion, SalesTerritory)
        VALUES (s.CityID, s.CityName, s.StateProvince, s.Country, s.Continent, s.Region, s.SubRegion, s.SalesTerritory);';