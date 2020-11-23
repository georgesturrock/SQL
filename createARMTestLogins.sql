-- ======================================================================================
-- Create SQL Login template for Azure SQL Database and Azure SQL Data Warehouse Database
-- ======================================================================================

-- Add to master first!
CREATE LOGIN [armwrite] 
	WITH PASSWORD = 'xxxyyyy' 
GO

-- ========================================================================================
-- Create User as DBO template for Azure SQL Database and Azure SQL Data Warehouse Database
-- ========================================================================================
-- For login <login_name, sysname, login_name>, create a user in the database
-- Add user in Target database after creating login above
CREATE USER [armwrite]
	FOR LOGIN [armwrite]
	WITH DEFAULT_SCHEMA = [dbo]
GO

-- Add user to the database owner role
EXEC sp_addrolemember 'db_datawriter', 'armwrite' 
GO


DROP LOGIN [armwrite]
GO
