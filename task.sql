CREATE DATABASE ShopDB; 
USE ShopDB; 

-- Create a table to store countries 
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE GeoIPCache (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    IPRange VARCHAR(45),
    CountryID INT
) ENGINE = MEMORY;

CREATE TABLE ProductDescription (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Description VARCHAR(255),
    ProductID INT,
    CountryID INT
) ENGINE = InnoDB;


CREATE TABLE Logs (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Timestamp TIMESTAMP,
    Message VARCHAR(255)
) ENGINE = BLACKHOLE;


CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(255),
    Orders INT
) ENGINE = CSV;
