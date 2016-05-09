Oracle SQL Server (SQLPlus or SQLDeveloper)

Username: <first portion of email>

Password: <A#>

Hostname: 64.131.110.53

Port: 1521

SID: orcl



DROP TABLE table1;
CREATE TABLE table1 (
col_num INTEGER,
col_cha VARCHAR(5),
col_val VARCHAR(30)
);
CREATE INDEX ndx_tbl1_num ON table1(col_num);
CREATE INDEX ndx_tbl1_cha ON table1(col_cha);

DROP TABLE table2;
CREATE TABLE table2 (
col_num INTEGER,
col_cha VARCHAR(5),
col_val VARCHAR(30)
);
CREATE INDEX ndx_tbl2_num ON table2(col_num);
CREATE INDEX ndx_tbl2_cha ON table2(col_cha);

-------------------------
-- Index Merge Example --
-------------------------
-- Index Merge   
EXPLAIN PLAN SET statement_id = 'itmd526' FOR
SELECT /*+ CHOOSE */ *
  FROM table1
 WHERE col_num = 12
   AND col_cha = 'A';
SELECT PLAN_TABLE_OUTPUT FROM table(DBMS_XPLAN.DISPLAY('plan_table', 'itmd526', 'typical')); 
----------------------------------------------------                                                                                                                                                                                                                                                         
| Id  | Operation                   | Name         |                                                                                                                                                                                                                                                         
----------------------------------------------------                                                                                                                                                                                                                                                         
|   0 | SELECT STATEMENT            |              |                                                                                                                                                                                                                                                         
|   1 |  TABLE ACCESS BY INDEX ROWID| TABLE1       |                                                                                                                                                                                                                                                         
|   2 |   AND-EQUAL                 |              |                                                                                                                                                                                                                                                         
|*  3 |    INDEX RANGE SCAN         | NDX_TBL1_NUM |                                                                                                                                                                                                                                                         
|*  4 |    INDEX RANGE SCAN         | NDX_TBL1_CHA |                                                                                                                                                                                                                                                         
---------------------------------------------------- 

-- Suppreesion
EXPLAIN PLAN SET statement_id = 'itmd526' FOR
SELECT /*+ CHOOSE */ *
  FROM table1
 WHERE col_num = 12
   AND col_cha||'' = 'A';
SELECT PLAN_TABLE_OUTPUT FROM table(DBMS_XPLAN.DISPLAY('plan_table', 'itmd526', 'typical')); 
----------------------------------------------------                                                                                                                                                                                                                                                         
| Id  | Operation                   | Name         |                                                                                                                                                                                                                                                         
----------------------------------------------------                                                                                                                                                                                                                                                         
|   0 | SELECT STATEMENT            |              |                                                                                                                                                                                                                                                         
|*  1 |  TABLE ACCESS BY INDEX ROWID| TABLE1       |                                                                                                                                                                                                                                                         
|*  2 |   INDEX RANGE SCAN          | NDX_TBL1_NUM |                                                                                                                                                                                                                                                         
----------------------------------------------------  

----------------------------------------
-- Internal Index Suppression Example --
----------------------------------------

-- Without Suppression  
EXPLAIN PLAN SET statement_id = 'itmd526' FOR 
SELECT /*+ CHOOSE */ *
  FROM table1 a, table2 b
 WHERE a.col_num = b.col_num
   AND a.col_cha = 'Very Good Key';
SELECT PLAN_TABLE_OUTPUT FROM table(DBMS_XPLAN.DISPLAY('plan_table', 'itmd526', 'typical'));   
------------------------------------------------------                                                                                                                                                                                                                                                       
| Id  | Operation                     | Name         |                                                                                                                                                                                                                                                       
------------------------------------------------------                                                                                                                                                                                                                                                       
|   0 | SELECT STATEMENT              |              |                                                                                                                                                                                                                                                       
|   1 |  NESTED LOOPS                 |              |                                                                                                                                                                                                                                                       
|   2 |   NESTED LOOPS                |              |                                                                                                                                                                                                                                                       
|   3 |    TABLE ACCESS BY INDEX ROWID| TABLE1       |                                                                                                                                                                                                                                                       
|*  4 |     INDEX RANGE SCAN          | NDX_TBL1_CHA |                                                                                                                                                                                                                                                       
|*  5 |    INDEX RANGE SCAN           | NDX_TBL2_NUM |                                                                                                                                                                                                                                                       
|   6 |   TABLE ACCESS BY INDEX ROWID | TABLE2       |                                                                                                                                                                                                                                                       
------------------------------------------------------

-- With Suppression
EXPLAIN PLAN SET statement_id = 'itmd526' FOR 
SELECT /*+ CHOOSE */ *
  FROM table1 a, table2 b
 WHERE a.col_num = b.col_cha -- TO_NUMBER(b.col_cha)
   AND a.col_cha = 'Very Good Key';
SELECT PLAN_TABLE_OUTPUT FROM table(DBMS_XPLAN.DISPLAY('plan_table', 'itmd526', 'typical'));      
-----------------------------------------------------                                                                                                                                                                                                                                                        
| Id  | Operation                    | Name         |                                                                                                                                                                                                                                                        
-----------------------------------------------------                                                                                                                                                                                                                                                        
|   0 | SELECT STATEMENT             |              |                                                                                                                                                                                                                                                        
|   1 |  NESTED LOOPS                |              |                                                                                                                                                                                                                                                        
|   2 |   TABLE ACCESS FULL          | TABLE2       |                                                                                                                                                                                                                                                        
|   3 |   TABLE ACCESS BY INDEX ROWID| TABLE1       |                                                                                                                                                                                                                                                        
|   4 |    AND-EQUAL                 |              |                                                                                                                                                                                                                                                        
|*  5 |     INDEX RANGE SCAN         | NDX_TBL1_NUM |                                                                                                                                                                                                                                                        
|*  6 |     INDEX RANGE SCAN         | NDX_TBL1_CHA |                                                                                                                                                                                                                                                        
-----------------------------------------------------    