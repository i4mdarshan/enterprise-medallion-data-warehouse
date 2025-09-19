/*
Script Purpose: 
    Create a new database called "DataWarehouse" and drop the existing if present.
    Create three schemas bronze,silver and gold.

WARNING:
    If a database exists then that will be dropped.


*/

USE master;
GO

-- Drop and recreate the database 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO