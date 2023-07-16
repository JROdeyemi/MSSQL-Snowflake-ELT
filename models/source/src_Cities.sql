{{
    config(schema='src')
}}

WITH cities AS(
    SELECT *
    FROM src.Cities
)

SELECT *
FROM cities