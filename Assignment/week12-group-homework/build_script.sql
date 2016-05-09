USE datamart_application_poc;

/* DIM_PROGRAM  */
DROP TABLE IF EXISTS dim_program;
  
CREATE TABLE dim_program (
  program_key int(12) NOT NULL AUTO_INCREMENT,
  program_name varchar(128) NOT NULL DEFAULT '',
  department_name varchar(128) NOT NULL,
  PRIMARY KEY (program_key)
) ENGINE=MyISAM;

INSERT INTO dim_program (program_name, department_name)  
SELECT DISTINCT program, department_name
  FROM admissions_info 
 ORDER BY 1,2 
;

/* DIM_APPLICANT */
DROP TABLE IF EXISTS dim_applicant;
CREATE TABLE dim_applicant (
  applicant_key INT(12) NOT NULL AUTO_INCREMENT,
  application_id VARCHAR(7) DEFAULT 'Unknown',
  applicant_first_name VARCHAR(32) DEFAULT 'Unknown',
  applicant_last_name VARCHAR(32) DEFAULT 'Unknown',
  country_of_citizenship VARCHAR(32) DEFAULT 'Unknown',
  gender VARCHAR(32) DEFAULT 'Unknown',
  admission_decision VARCHAR(32) DEFAULT 'Unknown',
  PRIMARY KEY (applicant_key)
) ENGINE=MYISAM;


INSERT INTO dim_applicant (application_id, applicant_first_name, applicant_last_name, country_of_citizenship, gender, admission_decision)
SELECT application_id, applicant_first_name, applicant_last_name, country_of_citizenship, gender,
       CASE prog_actn WHEN 'DENY' THEN 'Admission Denied'
                      WHEN 'APPL' THEN 'Applicant Applied'
                      WHEN 'WAPP' THEN 'Applicant Withrew'
                      WHEN 'MATR' THEN 'Applicant Matriculated'
       END AS admission_decision       
  FROM admissions_info;
  

/* FACT_APPLICATION */

DROP TABLE IF EXISTS fact_application;

CREATE TABLE fact_application (
  applicant_key int(12) DEFAULT 0,
  program_key int(12) DEFAULT 0,
  applied int(7) NOT NULL DEFAULT 1,
  admitted int(7) NOT NULL DEFAULT 0,
  accepted int(7) NOT NULL DEFAULT 0,
  KEY idx_program_key (program_key),
  KEY idx_application_key (applicant_key)
 ) ENGINE=MyISAM;

 
INSERT INTO fact_application  
SELECT a.applicant_key, p.program_key,
       1 AS applied,
       CASE s.prog_actn WHEN 'WAPP' THEN 1
                      WHEN 'MATR' THEN 1
                      ELSE 0 END AS admitted,
       CASE s.prog_actn WHEN 'MATR' THEN 1
                      ELSE 0 END AS accepted                      
  FROM admissions_info s
  LEFT OUTER JOIN 
       dim_applicant a
    ON s.application_id = a.application_id
  LEFT OUTER JOIN
       dim_program p
    ON s.program = p.program_name;
  