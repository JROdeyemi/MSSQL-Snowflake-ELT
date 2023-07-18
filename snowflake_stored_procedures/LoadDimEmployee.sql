CREATE OR REPLACE PROCEDURE WIDEWORLDIMPORTERSDW.DWH.LOADDIMEMPLOYEE()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
MERGE INTO dwh.DimEmployee AS t
USING stg.stgDimEmployee AS s
    ON t.EmployeeID = s.EmployeeID
WHEN MATCHED THEN   
    UPDATE SET
        t.EmployeeName = s.EmployeeName,
        t.PreferredName = s.PreferredName,
        t.IsSalesperson = s.IsSalesperson,
        t.Photo = s.Photo

WHEN NOT MATCHED THEN
    INSERT(EmployeeID, EmployeeName, PreferredName, IsSalesperson, Photo)
    VALUES(s.EmployeeID, s.EmployeeName, s.PreferredName, s.IsSalesperson, s.Photo);';