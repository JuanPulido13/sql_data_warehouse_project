/* WARNING:
Running this scripts will drop the netire "Datawarehouse" it it exists
All data in the Database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script
*/

USE master;
GO
-- Drop and recreate the datawharehouse db

IF EXISTS ( SELECT; FROM sys.databases WHERE name= "Datawarehouse")
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
GO
-- Create the Datawarehouse DB
CREATE DATABASE Datawarehouse;

USE Datawarehouse;

CREATE SCHEMA bronze;
GO -- avoid error for syntax is like separator
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
