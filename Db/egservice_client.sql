
-- Db used is MYSQL Workbench

-- creation of Schema:`egservice_client`

 CREATE SCHEMA `egservice_client` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

-- creation of table structure  `customer`

CREATE TABLE `egservice_client`.`customer` (
  `customerID` int(11) NOT NULL  AUTO_INCREMENT,
  `customerName` varchar(255) NOT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `customerType` varchar(255) DEFAULT NULL,
  `customerContact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerID`));





