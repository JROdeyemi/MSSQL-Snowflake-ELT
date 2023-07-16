-- The model that creates the staging table for DimEmployee
{{
    config(
        schema='stg',
        materialized='table'
    )
}}


WITH people AS (
        SELECT *
        FROM {{ ref('src_people')}}
)

SELECT PersonID AS EmployeeID,
        FullName AS EmployeeName,
        PreferredName,
        IsSalesperson,
        Photo,
        ValidFrom AS DateCreated

FROM people
WHERE IsEmployee = 1