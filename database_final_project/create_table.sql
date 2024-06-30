
1. -- Category Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`category` (
  `catid` VARCHAR(10) NOT NULL,
  `name` VARCHAR(80) NULL DEFAULT NULL,
  `descn` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


2. -- Product Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`product` (
  `productid` VARCHAR(10) NOT NULL,
  `category` VARCHAR(10) NOT NULL,
  `name` VARCHAR(80) NULL DEFAULT NULL,
  `descn` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`productid`),
  INDEX `productCat` (`category` ASC) VISIBLE,
  INDEX `productName` (`name` ASC) VISIBLE,
  CONSTRAINT `fk_product_1`
    FOREIGN KEY (`category`)
    REFERENCES `My_Pet_Store`.`category` (`catid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


3. -- Supplier Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`supplier` (
  `suppid` INT NOT NULL,
  `name` VARCHAR(80) NULL DEFAULT NULL,
  `status` VARCHAR(2) NOT NULL,
  `addr1` VARCHAR(80) NULL DEFAULT NULL,
  `addr2` VARCHAR(80) NULL DEFAULT NULL,
  `city` VARCHAR(80) NULL DEFAULT NULL,
  `state` VARCHAR(80) NULL DEFAULT NULL,
  `zip` VARCHAR(5) NULL DEFAULT NULL,
  `phone` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


4. -- Item Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`item` (
  `itemid` VARCHAR(10) NOT NULL,
  `productid` VARCHAR(10) NOT NULL,
  `listprice` DECIMAL(10,2) NULL DEFAULT NULL,
  `unitcost` DECIMAL(10,2) NULL DEFAULT NULL,
  `supplier` INT NULL DEFAULT NULL,
  `status` VARCHAR(2) NULL DEFAULT NULL,
  `attr1` VARCHAR(80) NULL DEFAULT NULL,
  `attr2` VARCHAR(80) NULL DEFAULT NULL,
  `attr3` VARCHAR(80) NULL DEFAULT NULL,
  `attr4` VARCHAR(80) NULL DEFAULT NULL,
  `attr5` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  INDEX `fk_item_2` (`supplier` ASC) VISIBLE,
  INDEX `itemProd` (`productid` ASC) VISIBLE,
  CONSTRAINT `fk_item_1`
    FOREIGN KEY (`productid`)
    REFERENCES `My_Pet_Store`.`product` (`productid`),
  CONSTRAINT `fk_item_2`
    FOREIGN KEY (`supplier`)
    REFERENCES `My_Pet_Store`.`supplier` (`suppid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


5. -- Inventory Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`inventory` (
  `itemid` VARCHAR(10) NOT NULL,
  `qty` INT NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


6. -- Cart Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`cart` (
  `username` VARCHAR(255) NOT NULL,
  `itemId` VARCHAR(255) NOT NULL,
  `number` INT NOT NULL,
  PRIMARY KEY (`username`, `itemId`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


7. -- Orders Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`orders` (
  `orderid` INT NOT NULL,
  `userid` VARCHAR(80) NOT NULL,
  `orderdate` DATE NOT NULL,
  `shipaddr1` VARCHAR(80) NOT NULL,
  `shipaddr2` VARCHAR(80) NULL DEFAULT NULL,
  `shipcity` VARCHAR(80) NOT NULL,
  `shipstate` VARCHAR(80) NOT NULL,
  `shipzip` VARCHAR(20) NOT NULL,
  `shipcountry` VARCHAR(20) NOT NULL,
  `billaddr1` VARCHAR(80) NOT NULL,
  `billaddr2` VARCHAR(80) NULL DEFAULT NULL,
  `billcity` VARCHAR(80) NOT NULL,
  `billstate` VARCHAR(80) NOT NULL,
  `billzip` VARCHAR(20) NOT NULL,
  `billcountry` VARCHAR(20) NOT NULL,
  `courier` VARCHAR(80) NOT NULL,
  `totalprice` DECIMAL(10,2) NOT NULL,
  `billtofirstname` VARCHAR(80) NOT NULL,
  `billtolastname` VARCHAR(80) NOT NULL,
  `shiptofirstname` VARCHAR(80) NOT NULL,
  `shiptolastname` VARCHAR(80) NOT NULL,
  `creditcard` VARCHAR(80) NOT NULL,
  `exprdate` VARCHAR(7) NOT NULL,
  `cardtype` VARCHAR(80) NOT NULL,
  `locale` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


8. -- Profile Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`profile` (
  `userid` VARCHAR(80) NOT NULL,
  `langpref` VARCHAR(80) NOT NULL,
  `favcategory` VARCHAR(30) NULL DEFAULT NULL,
  `mylistopt` INT NULL DEFAULT NULL,
  `banneropt` INT NULL DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


9. -- Account Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`account` (
  `userid` VARCHAR(80) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `firstname` VARCHAR(80) NOT NULL,
  `lastname` VARCHAR(80) NOT NULL,
  `status` VARCHAR(2) NULL DEFAULT NULL,
  `addr1` VARCHAR(80) NOT NULL,
  `addr2` VARCHAR(40) NULL DEFAULT NULL,
  `city` VARCHAR(80) NOT NULL,
  `state` VARCHAR(80) NOT NULL,
  `zip` VARCHAR(20) NOT NULL,
  `country` VARCHAR(20) NOT NULL,
  `phone` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


10. -- Signon Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`signon` (
  `username` VARCHAR(25) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


11. -- Sequence Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`sequence` (
  `name` VARCHAR(30) NOT NULL,
  `nextid` INT NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


12. -- Bannerdata Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`bannerdata` (
  `favcategory` VARCHAR(80) NOT NULL,
  `bannername` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


13. -- Lineitem Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`lineitem` (
  `orderid` INT NOT NULL,
  `linenum` INT NOT NULL,
  `itemid` VARCHAR(10) NOT NULL,
  `quantity` INT NOT NULL,
  `unitprice` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


14. -- Orderstatus Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`orderstatus` (
  `orderid` INT NOT NULL,
  `linenum` INT NOT NULL,
  `timestamp` DATE NOT NULL,
  `status` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


15. -- Logsheet Table:-- 

CREATE TABLE IF NOT EXISTS `My_Pet_Store`.`logsheet` (
  `userId` VARCHAR(255) NOT NULL,
  `record` TEXT NULL DEFAULT NULL,
  `recordDate` DATE NOT NULL
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb3;


