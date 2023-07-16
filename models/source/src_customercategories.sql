{{
    config(schema='src')
}}

WITH customercategories AS (
    SELECT *
    FROM src.CustomerCategories
)

SELECT *
FROM customercategories