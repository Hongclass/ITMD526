DROP SCHEMA IF EXISTS source_db;

CREATE SCHEMA 
source_db
;
USE
source_db
;
CREATE TABLE
revenue
(
DATE DATE,
country_iso_code VARCHAR(3),
revenue DECIMAL
)
;
INSERT INTO
revenue
VALUES
('2011-11-01','GB',22314),
('2011-11-02','GB',23411),
('2011-11-03','GB',22325),
('2011-11-04','GB',22233),
('2011-11-01','US',32423),
('2011-11-02','US',25325),
('2011-11-03','US',43523),
('2011-11-04','US',23453)
;


CREATE TABLE
Countries
(
country_iso_code VARCHAR(3),
country_name VARCHAR(100)
)
;
INSERT INTO
Countries
VALUES
('GB','United Kingdom'),
('US','United States of America')
;

DROP SCHEMA IF EXISTS target_db;
CREATE SCHEMA target_db;
