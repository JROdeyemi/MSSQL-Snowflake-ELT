{{
    config(schema='src')
}}

WITH customers AS(
    SELECT *
    FROM src.Customers
)

SELECT *
FROM customers 