-- Create a database DATAMART_KBB 
CREATE DATABASE DATAMART_KBB;
USE DATAMART_KBB;

-- Create a table
DROP TABLE IF EXISTS DIM_PRODUCT;
CREATE TABLE DIM_PRODUCT (
  PRODUCT_KEY BIGINT(20) NOT NULL DEFAULT '-1',
  PROD_CODE VARCHAR(11) NOT NULL DEFAULT '-',
  PRODUCT_DESC VARCHAR(256) NOT NULL DEFAULT '-',
  UNIT_PRICE DOUBLE NOT NULL DEFAULT 0,
  CATEGORY VARCHAR(256) NOT NULL DEFAULT '-',
  PRIMARY KEY UIX_DM_PROD_SKEY (PRODUCT_KEY),
  KEY IX_BUS_KEY (PROD_CODE)
) ENGINE=MYISAM DEFAULT CHARSET=UTF8;