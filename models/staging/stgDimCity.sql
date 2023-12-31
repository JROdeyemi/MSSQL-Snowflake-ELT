-- The model that creates the staging table for DimCity
{{
    config(
        schema='stg',
        materialized='table'
    )
}}


WITH stateprovinces AS (
        SELECT * 
        FROM {{ ref('src_stateprovinces')}}
),

cities AS(
        SELECT *
        FROM {{ ref('src_Cities')}}
),

countries AS(
        SELECT *
        FROM {{ ref('src_Countries')}}
)


SELECT c.CityID,
        c.CityName,
        s.StateProvinceName AS StateProvince,
        co.CountryName AS Country,
        co.Continent,
        co.Region,
        co.SubRegion,
        s.SalesTerritory,
        c.ValidFrom AS DateCreated

FROM cities AS c
LEFT JOIN stateprovinces AS s 
        ON c.StateProvinceID = s.StateProvinceID
LEFT JOIN countries AS co 
        ON s.CountryID = co.CountryID
