CREATE OR REPLACE PROCEDURE WIDEWORLDIMPORTERSDW.DWH.LOADDIMCUSTOMER()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
MERGE INTO dwh.DimCustomer AS t
USING stg.stgDimCustomer AS s
ON t.CustomerID = s.CustomerID
WHEN MATCHED THEN
    UPDATE SET
      t.CustomerName = s.CustomerName,
      t.BillToCustomer = s.BillToCustomer,
      t.Category = s.Category,
      t.BuyingGroup = s.BuyingGroup,
      t.PrimaryContact = s.PrimaryContact,
      t.PostalCode = s.PostalCode

WHEN NOT MATCHED THEN
    INSERT(CustomerID, CustomerName, BillToCustomer, Category, BuyingGroup, PrimaryContact, PostalCode)
    VALUES(s.CustomerID, s.CustomerName, s.BillToCustomer, s.Category, s.BuyingGroup, s.PrimaryContact, s.PostalCode);';