{{
    config(schema='src')
}}

WITH people AS(
    SELECT *
    FROM src.People
)

SELECT *
FROM people