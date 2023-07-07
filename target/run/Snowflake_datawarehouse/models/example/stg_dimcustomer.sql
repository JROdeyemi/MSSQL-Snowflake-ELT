
  
    

        create or replace transient table WideWorldImportersDW.stg.DimCustomer  as
        (-- The model that creates the staging table for DimCustomer




SELECT c.CustomerID,
        c.CustomerName,
        c2.CustomerName AS BillToCustomer,
        cc.CustomerCategoryName AS Category,
        b.BuyingGroupName AS BuyingGroup,
        p.FullName AS People,
        c.PostalPostalCode       
FROM src.customers AS c
LEFT JOIN src.customers AS c2
        ON c.BillToCustomerID = c2.CustomerID
LEFT JOIN src.customercategories AS cc 
        ON c.CustomerCategoryID = cc.CustomerCategoryID
LEFT JOIN src.buyinggroups as b
        ON c.BuyingGroupID = b.BuyingGroupID
LEFT JOIN src.people AS P
        ON c.PrimaryContactPersonID = p.PersonID
        );
      
  