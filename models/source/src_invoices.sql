{{
    config(schema='src')
}}

WITH invoices AS (
    SELECT *
    FROM src.invoices
)

SELECT *
FROM invoices