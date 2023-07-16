{{
    config(schema='src')
}}

WITH packagetypes AS(
    SELECT *
    FROM src.PackageTypes
)

SELECT *
FROM packagetypes