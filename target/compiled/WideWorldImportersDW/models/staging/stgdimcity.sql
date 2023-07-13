-- The model that creates the staging table for DimCity

SELECT  ci.CityID,
        ci.CityName,
        s.StateProvinceName,
        co.CountryName,
        co.Continent,
        co.Region,
        co.SubRegion,
        s.SalesTerritory

FROM src.cities AS ci
LEFT JOIN src.stateprovinces AS s 
        ON ci.StateProvinceID = s.StateProvinceID
LEFT JOIN src.countries AS co 
        ON s.CountryID = co.CountryID