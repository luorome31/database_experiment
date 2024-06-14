CREATE DATABASE IF NOT EXISTS `student_220131` DEFAULT CHARACTER SET utf8;
USE `student_220131`;

CREATE TABLE IF NOT EXISTS `S` (
    `Sno` char(10) NOT NULL,
    `Sname` varchar(10) NOT NULL,
    `Ssex` char(2) NOT NULL,
    `Sage` int NOT NULL,
    `Sdept` varchar(20),
    PRIMARY KEY (`Sno`)
);

CREATE TABLE IF NOT EXISTS `C` (
    `Cno` int NOT NULL,
    `Cname` varchar(10) NOT NULL,
    `Cpno` int,
    `Ccredit` int NOT NULL,
    PRIMARY KEY (`Cno`),
    FOREIGN KEY (`Cpno`) REFERENCES `C`(`Cno`)
);

CREATE TABLE IF NOT EXISTS `SC` (
    `Sno` char(10) NOT NULL,
    `Cno` int NOT NULL,
    `grade` int NOT NULL,
    PRIMARY KEY (`Sno`, `Cno`),
    FOREIGN KEY (`Sno`) REFERENCES `S`(`Sno`),
    FOREIGN KEY (`Cno`) REFERENCES `C`(`Cno`)
);char(2) NOT NULL,
    `Sage` int NOT NULL,
    `Sdept` varchar(20),
    PRIMARY KEY (`Sno`)
);

CREATE TABLE IF NOT EXISTS `C` (
    `Cno` int NOT NULL,
    `Cname` varchar(10) NOT NULL,
    `Cpno` int,
    `Ccredit` int NOT NULL,
    PRIMARY KEY (`Cno`),
    FOREIGN KEY (`Cpno`) REFERENCES `C`(`Cno`)
);

CREATE TABLE IF NOT EXISTS `SC` (
    `Sno` char(10) NOT NULL,
    `Cno` int NOT NULL,
    `grade` int NOT NULL,
    PRIMARY KEY (`Sno`, `Cno`),
    FOREIGN KEY (`Sno`) REFERENCES `S`(`Sno`),
    FOREIGN KEY (`Cno`) REFERENCES `C`(`Cno`)
);