-- DIM_DATE
SELECT 19000101 date_key, '1900-01-01' AS the_date, 1900 AS the_year, 1 AS the_quarter,
       1 AS the_month, 1 AS the_week, 1 AS day_of_year, 1 AS day_of_month, 
       WEEKDAY('1900-01-01') AS day_of_week
  FROM DUAL
 UNION ALL 
SELECT 20991231 date_key, '2099-12-31' AS the_date, 2099 AS the_year, 1 AS the_quarter,
       1 AS the_month, 1 AS the_week, 1 AS day_of_year, 1 AS day_of_month, 
       WEEKDAY('2099-12-31') AS day_of_week
  FROM DUAL 


-- DIM_CUSTOMER
SELECT 0 AS customer_key, 'Unknown' AS customer_code, 'Unknown' AS first_name,
       'Unknown' AS last_name, 'Unknown' AS city, 'Unknown' AS state,
       '1900-01-01 00:00:00' AS date_of_birth, 1 AS version,
       '1900-01-01 00:00:00' AS date_from, '2200-01-01 00:00:00' AS date_to
  FROM dual


-- DIM_PRODUCT    
SELECT 0 AS product_key, 'Unknown' AS product_code, 'Unknown' AS product_description,
       0 AS unit_price, 'Unknown' AS category, 
       1 AS version, '1900-01-01 00:00:00' AS date_from, '2200-01-01 00:00:00' AS date_to
  FROM dual