/* 
=======================================================================
DDL Scirpt: Create Silver Tables
=======================================================================
Script Purpose:
  This scriot creates the tables in the silver schema.
  Add IF OBJECT_ID('silver.table_name', 'U') IS NOT NULL
	DROP TABLE table_name before executing each statement. Refer to first two tables as an example

=======================================================================
*/

USE CATALOG DataWarehouse;

DROP TABLE IF EXISTS silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info(
cst_id INT,
cst_key STRING,
cst_firstname STRING,
cst_lastname STRING,
cst_marital_status STRING,
cst_gndr STRING,
cst_create_date DATE,
dwh_create_date TIMESTAMP
);

DROP TABLE IF EXISTS silver.crm_prd_info;
CREATE TABLE silver.crm_prd_info(
prd_id INT,
cat_id STRING,
prd_key STRING,
prd_nm STRING,
prd_cost INT,
prd_line STRING,
prd_start_dt DATE,
prd_end_dt DATE,
dwh_create_date TIMESTAMP
);

DROP TABLE IF EXISTS silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details(
sls_ord_num STRING,
sls_prd_key STRING,
sls_cust_id INT,
sls_order_dt DATE,
sls_ship_dt DATE,
sls_due_dt DATE,
sls_sales INT,
sls_quantity INT,
sls_price INT,
dwh_create_date TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12(
cid STRING,
bdate DATE,
gen STRING,
dwh_create_date TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101(
cid STRING,
cntry STRING,
dwh_create_date TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_px_cat_g1v1;
CREATE TABLE silver.erp_px_cat_g1v1(
id STRING,
cat STRING,
subcat STRING,
maintenance STRING,
dwh_create_date TIMESTAMP
);
