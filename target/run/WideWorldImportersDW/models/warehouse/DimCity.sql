-- back compat for old kwarg name
  
  begin;
    

        insert into WideWorldImportersDW.dwh.DimCity ("CITYKEY", "CITYID", "CITYNAME", "STATEPROVINCENAME", "COUNTRYNAME", "CONTINENT", "REGION", "SUBREGION", "SALESTERRITORY", "DATECREATED", "DATEMODIFIED")
        (
            select "CITYKEY", "CITYID", "CITYNAME", "STATEPROVINCENAME", "COUNTRYNAME", "CONTINENT", "REGION", "SUBREGION", "SALESTERRITORY", "DATECREATED", "DATEMODIFIED"
            from WideWorldImportersDW.dwh.DimCity__dbt_tmp
        );
    commit;