-- The model that creates the staging table for DimEmployee

SELECT p.PersonID AS EmployeeID,
        p.FullName AS EmployeeName,
        p.PreferredName,
        p.IsSalesPerson,
        p.Photo
FROM src.people AS p
WHERE IsEmployee = TRUE