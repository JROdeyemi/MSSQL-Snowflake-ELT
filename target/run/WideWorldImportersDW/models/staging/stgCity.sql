
  create or replace   view WideWorldImportersDW.dwh.stgCity
  
   as (
    -- The model that creates the staging table for DimCity

WITH stateprovinces AS (
        SELECT * 
        FROM WideWorldImportersDW.dwh.src_stateprovinces
),

cities AS(
        SELECT *
        FROM WideWorldImportersDW.dwh.src_Cities
),

countries AS(
        SELECT *
        FROM WideWorldImportersDW.dwh.src_Countries
)


SELECT c.CityID,
        c.CityName,
        s.StateProvinceName AS StateProvince,
        co.CountryName AS Country,
        co.Continent,
        co.Region,
        co.SubRegion,
        s.SalesTerritory

FROM cities AS c
LEFT JOIN stateprovinces AS s 
        ON c.StateProvinceID = s.StateProvinceID
LEFT JOIN countries AS co 
        ON s.CountryID = co.CountryID
  );

