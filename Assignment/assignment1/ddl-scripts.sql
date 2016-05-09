USE datamart_kbb; 
DROP TABLE IF EXISTS dim_date;  
CREATE TABLE `dim_date` (
  `date_key` INT(11) DEFAULT NULL,
  `the_date` DATE DEFAULT NULL,
  `the_year` SMALLINT(6) DEFAULT NULL,
  `the_quarter` TINYINT(4) DEFAULT NULL,
  `the_month` TINYINT(4) DEFAULT NULL,
  `the_week` TINYINT(4) DEFAULT NULL,
  `day_of_year` SMALLINT(6) DEFAULT NULL,
  `day_of_month` TINYINT(4) DEFAULT NULL,
  `day_of_week` TINYINT(4) DEFAULT NULL
) ENGINE=MYISAM;

DROP TABLE IF EXISTS fact_sales;  
CREATE TABLE `fact_sales` (
  `date_key` BIGINT(20) DEFAULT NULL,
  `customer_key` BIGINT(20) DEFAULT NULL,
  `product_key` BIGINT(20) DEFAULT NULL,
  `sales_raw_id` BIGINT(20) DEFAULT NULL,
  `transaction_number` INT(11) DEFAULT NULL,
  `transaction_line_number` INT(11) DEFAULT NULL,
  `unit_price` DOUBLE DEFAULT NULL,
  `discount_pct` INT(11) DEFAULT NULL,
  `sales_qty` INT(11) DEFAULT NULL,
  `extended_sales_total` DOUBLE DEFAULT NULL
) ENGINE=MYISAM;

USE source_db; 
DROP TABLE IF EXISTS sales_random;
CREATE TABLE `sales_random` (
  `customer_key` INT(11) DEFAULT NULL,
  `product_key` INT(11) DEFAULT NULL,
  `discountPct` INT(11) DEFAULT NULL,
  `nrProducts` INT(11) DEFAULT NULL,
  `minCustKey` INT(11) DEFAULT NULL,
  `minProdKey` INT(11) DEFAULT NULL,
  `maxCustKey` INT(11) DEFAULT NULL,
  `maxProdKey` INT(11) DEFAULT NULL,
  `salesDate` DATETIME DEFAULT NULL,
  `transactionLineNr` BIGINT(20) DEFAULT NULL,
  `transactionNr` INT(11) DEFAULT NULL
) ENGINE=MYISAM; 
