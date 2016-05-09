------------------
USE datamart_kbb;
------------------
DROP TABLE IF EXISTS dim_customer;
CREATE TABLE `dim_customer` (
  `customer_key` bigint(20) NOT NULL DEFAULT '-1',
  `custom_id` varchar(32) NOT NULL DEFAULT '-',
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `city` varchar(64) DEFAULT '-',
  `state` varchar(64) DEFAULT '-'
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS dim_customer_scd1;
CREATE TABLE `dim_customer_scd1` (
  `customer_key` bigint(20) NOT NULL DEFAULT '-1',
  `customer_id` varchar(32) NOT NULL DEFAULT '-',
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `city` varchar(64) DEFAULT '-',
  `state` varchar(64) DEFAULT '-',
  `version` bigint(20) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS dim_customer_scd2;
CREATE TABLE `dim_customer_scd2` (
  `customer_key` bigint(20) NOT NULL DEFAULT '-1',
  `customer_id` varchar(32) NOT NULL DEFAULT '-',
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `city` varchar(64) DEFAULT '-',
  `state` varchar(64) DEFAULT '-',
  `version` bigint(20) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

--------------
USE source_db;
--------------
DROP TABLE IF EXISTS city_state;
CREATE TABLE `city_state` (
  `city_state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(64) DEFAULT '-',
  `state` varchar(64) DEFAULT '-',
  PRIMARY KEY (`city_state_id`),
  UNIQUE KEY `nkey_city_state` (`city`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS customer;
CREATE TABLE `customer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(32) NOT NULL DEFAULT '-',
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `city_state_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_customer` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--------------
USE target_db;
--------------
DROP TABLE IF EXISTS stg_customer;
CREATE TABLE `stg_customer` (
  `customer_id` tinytext,
  `first_name` tinytext,
  `last_name` tinytext,
  `date_of_birth` datetime DEFAULT NULL,
  `city` tinytext,
  `state` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;