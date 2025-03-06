/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DB' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DB' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DB' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DB')
BEGIN
    ALTER DATABASE DB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DB;
END;
GO

-- Create the 'DB' database
CREATE DATABASE DB;
GO

USE DB;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
