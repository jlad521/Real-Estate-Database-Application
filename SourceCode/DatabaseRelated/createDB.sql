# Qiaoran Li 
# this file creates the tables needed for the project
# note: tinyint is boolean 
# 7/3/2018 


CREATE database bigdatabyte; 
USE bigdatabyte;

CREATE TABLE `country` (
  `country_id` varchar(10) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
); 

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `country_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `city_ibfk_1` (`country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
); 
    
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_primary_address` varchar(50) DEFAULT NULL,
  `client_Fname` varchar(20) DEFAULT NULL,
  `client_Lname` varchar(20) DEFAULT NULL,
  `client_phone_number` varchar(12) DEFAULT NULL,
  `client_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
);	

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `no_bedrooms` tinyint(1) DEFAULT NULL,
  `sq_footage` int(11) DEFAULT NULL,
  `has_balcony` tinyint(1) DEFAULT NULL,
  `pets_allowed` tinyint(1) DEFAULT NULL,
  `parking_spaces` int(11) DEFAULT NULL,
  `garage_spaces` tinyint(1) DEFAULT NULL,
  `no_baths` int(11) DEFAULT NULL,
  `property_name` varchar(20) DEFAULT NULL,
  `property_description` varchar(200) DEFAULT NULL,
  `property_owner_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `property_address` varchar(100) DEFAULT NULL, 
  PRIMARY KEY (`property_id`),
  KEY `city_id` (`city_id`),
  KEY `property_owner_id` (`property_owner_id`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`property_owner_id`) REFERENCES `clients` (`client_id`)
); 

CREATE TABLE `for_sale` (
  `property_id` int(11) NOT NULL,
  `date_put_on_market` date NOT NULL,
  `asking_price` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`property_id`,`date_put_on_market`),
  CONSTRAINT `for_sale_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
);



CREATE TABLE `office` (
  `office_id` int(11) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`office_id`)
);

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `agent_Fname` varchar(20) DEFAULT NULL,
  `agent_Lname` varchar(20) DEFAULT NULL,
  `agent_salary` decimal(10,2) DEFAULT NULL,
  `home_address` varchar(50) DEFAULT NULL,
  `primary_office` int(11) DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `primary_office` (`primary_office`),
  CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`primary_office`) REFERENCES `office` (`office_id`)
); 


ALTER TABLE office 
	ADD FOREIGN KEY (manager_id) REFERENCES agent(agent_id);  
    
CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `date_signed` date DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `sale_location` int(11) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `property_id` (`property_id`),
  KEY `sales_ibfk_5` (`sale_location`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `sales_ibfk_5` FOREIGN KEY (`sale_location`) REFERENCES `office` (`office_id`)
);

CREATE TABLE `commissions` (
  `sale_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `commission_percent` decimal(2,2) DEFAULT NULL,
  `client_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`agent_id`),
  KEY `agent_id` (`agent_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `commissions_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  CONSTRAINT `commissions_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`),
  CONSTRAINT `commissions_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
);