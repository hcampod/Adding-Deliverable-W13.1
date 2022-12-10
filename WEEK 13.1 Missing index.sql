
--1.- Table 1 [Person].[CountryRegion]
--Step 1 - Query a table in your AdventureWorks2019 SQL Server Database
--Step 2 - Add a WHERE clause that limits to a specific value for a character field (one that is not indexed)
--Step 3 - Include the Actual Execution Plan

  SELECT pc.*
  FROM [Person].[CountryRegion] AS pc
  WHERE  pc.Name = 'Angola'

--Step 4 - Review the Execution Plan
--Step 5 - Take note of the Estimated Subtree Cost and any Missing Index recommendations
--Step 6 - Opposite click on the Missing Index recommendation and select Missing Index Details
--Step 7 - To use the recommended index, name the index and execute the script

  --Mising Index details from  SQLQuery2 LAPTOP-SCR2PDA8.AdventureWork2019 (LAPTOP-SCR\hialy(64))
  --The  query processor stimates  that implementing  the  following  index could improve  the query 
  --cost by 90.2808%

  USE [AdventureWorks2019]
  GO
  CREATE NONCLUSTERED INDEX HC_my_index
  ON [Person].[CountryRegion]([Name])
  GO
  
  --Step 8 - Re-run the query to see if performance improves in terms of runtime and estimated subtree cost
------------------------------------------------------------------------------------------------------------------

  --2.-TABLE 2 [Person].[StateProvince]

--Step 1 - Query a table in your AdventureWorks2019 SQL Server Database
--Step 2 - Add a WHERE clause that limits to a specific value for a character field (one that is not indexed)
--Step 3 - Include the Actual Execution Plan

  SELECT ps.*
  FROM [Person].[StateProvince] AS ps
  WHERE  ps.CountryRegionCode = 'CA'

 --Step 4 - Review the Execution Plan
--Step 5 - Take note of the Estimated Subtree Cost and any Missing Index recommendations
--Step 6 - Opposite click on the Missing Index recommendation and select Missing Index Details
--Step 7 - To use the recommended index, name the index and execute the script

  --Mising Index details from  SQLQuery2 LAPTOP-SCR2PDA8.AdventureWork2019 (LAPTOP-SCR\hialy(64))
  --The  query processor stimates  that implementing  the  following  index could improve  the query 
  --cost by 90.2808%

  USE [AdventureWorks2019]
  GO
  CREATE NONCLUSTERED INDEX IT_my_index
  ON [Person].[StateProvince]([CountryRegionCode])
  GO

  --Step 8 - Re-run the query to see if performance improves in terms of runtime and estimated subtree cost
-------------------------------------------------------------------------------------------------------------