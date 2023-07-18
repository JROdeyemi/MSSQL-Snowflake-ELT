# MSSQL to Snowflake: ELT Pipeline

# Overview

This repository contains a comprehensive and automated Extract, Load, and Transform (ELT) pipeline designed to seamlessly replicate data from an On-Prem Microsoft SQL Server (MSSQL) database to Snowflake Cloud, a cutting-edge cloud-based data warehousing platform. The pipeline is implemented using Python and dbt (data build tool), making it a powerful and flexible solution for modern data integration needs.

# Key Features

- Python Notebook for Data Replication: Utilize an interactive Python notebook to replicate data from the MSSQL database into Snowflake, ensuring data consistency and minimizing migration downtime.

- Efficient Data Transformations with dbt: Leverage dbt's incremental processing capabilities to apply data transformations and create staging tables in Snowflake for curated and pre-processed data.

- Automated Data Loading with Snowflake Stored Procedures: Utilize Snowflake stored procedures to intelligently load data from staging tables into the Snowflake data warehouse, ensuring data integrity and consistent results. You will find these stored procedures in the 'snowflake_stored_procedures' folder. Execute them all in your Data Warehouse Schema in Snowflake.

# Prerequisites

Before running this ELT pipeline, ensure the following dependencies are met:

- Python 3.x
- Snowflake Cloud Account
- dbt Installed and Configured
- MSSQL Database Connection Details

# Getting Started

1. Clone the repository to your local machine.
   git clone https://github.com/JROdeyemi/MSSQL-Snowflake-ELT.git
   cd MSSQL-Snowflake-ELT

2. Install the required Python Packages
   pip install -r requirements.txt

3. Update the configuration
   Remember to change the connection settings to your local MSSQL Server connections
   Remember to change that of the Snowflake connection as well.

4. Run the ELT Pipeline
   python automate_project.py

# Customization

This ELT pipeline is designed to be easily customizable to suit your specific data integration requirements. You can extend the project by:

- Adding additional data sources and destinations.
- Modifying the data transformation logic in dbt models.
- Incorporating more advanced Snowflake features, such as Materialized Views or Streams.

# Contribution & Feedback

Contributions to this project are highly welcome. If you find any issues or have ideas to improve the pipeline, feel free to open an issue or submit a pull request.
