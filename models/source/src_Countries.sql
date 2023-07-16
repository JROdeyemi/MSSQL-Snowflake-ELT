{{
    config(schema='src')
}}

WITH countries AS (
    SELECT *
    FROM src.Countries
)

SELECT *
FROM countries