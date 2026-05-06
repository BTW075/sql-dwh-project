/*  
Create DB and Schemas
______________________
Creating DB DataWarehouse if it does not exists + sets up 3 schemas for learning purposes.
______________________

*/

CREATE CATALOG IF NOT EXISTS DataWarehouse;
USE CATALOG DataWarehouse;

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
