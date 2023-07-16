{{
    config(schema='src')
}}

WITH stateprovinces AS(
    SELECT *
    FROM src.StateProvinces
)

SELECT *
FROM stateprovinces