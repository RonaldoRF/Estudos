
CREATE DATABASE IF NOT EXISTS `WorkflowDb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT ENCRYPTION='N';

CREATE USER IF NOT EXISTS 'aluno1'@'%' IDENTIFIED BY '!QAZ2wsx';
GRANT ALL PRIVILEGES ON WorkflowDb.* TO 'aluno1'@'%';

FLUSH PRIVILEGES;

use WorkflowDb;

CREATE TABLE IF NOT EXISTS `Users` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Email` VARCHAR(100) NOT NULL UNIQUE,
    `PasswordHash` VARCHAR(255) NOT NULL,
    `ProfileId` INT NOT NULL,
    `IsActive` BOOLEAN DEFAULT TRUE,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Roles` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL UNIQUE,
    `Description` VARCHAR(255) NOT NULL,
    `IsActive` BOOLEAN DEFAULT TRUE,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Profiles` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL UNIQUE,
    `Description` VARCHAR(255) NOT NULL,
    `IsActive` BOOLEAN DEFAULT TRUE,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `ProfilesRoles` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `ProfileId` INT NOT NULL UNIQUE,
    `RoleId` INT NOT NULL UNIQUE,
    `IsActive` BOOLEAN DEFAULT TRUE,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Status` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    `Description` TEXT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Countries` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `ISOCode` CHAR(3) NOT NULL,
    `CapitalCity` VARCHAR(100),
    `Region` VARCHAR(100),
    `Population` BIGINT,
    `AreaSqKm` DECIMAL(10,2),
    `CallingCode` CHAR(5),
    `Currency` VARCHAR(50),
    `TimeZone` VARCHAR(50),
    `Latitude` DECIMAL(10,6),
    `Longitude` DECIMAL(10,6),
    `FlagURL` VARCHAR(255),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `States` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Abbreviation` CHAR(2),
    `CapitalCity` VARCHAR(100),
    `Region` VARCHAR(100),
    `Population` BIGINT,
    `AreaSqKm` DECIMAL(10,2),
    `Latitude` DECIMAL(10,6),
    `Longitude` DECIMAL(10,6),
    `CountryId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Cities` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Population BIGINT,
    AreaSqKm DECIMAL(10,2),
    Latitude DECIMAL(10,6),
    Longitude DECIMAL(10,6),
    StateId INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT);

CREATE TABLE IF NOT EXISTS `Streets` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `PostalCode` VARCHAR(20),
    `Neighborhood` VARCHAR(100),
    `Latitude` DECIMAL(10,6),
    `Longitude` DECIMAL(10,6),
    `CityId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `BusinessSectors` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `MarketSegments` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `BusinessSectorId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `ActivityBranchs` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `MarketSegmentId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `ServiceSubcategories` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `ActivityBranchId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Customers` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `ServiceStartDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `StatusID` INT,
    `ServiceSubcategoryId` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `CustomerAddress` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `CustomerId` INT,
    `StreetId` INT,
    `AddressNumber` INT,
    `AdditionalAddressInformation` VARCHAR(150),
    `PrimaryAddress` BOOLEAN DEFAULT FALSE,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `ContactChannelTypes` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Description` VARCHAR(50),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Representatives` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `CustomerId` INT,
    `RepresentativeName` VARCHAR(100) NOT NULL,
    `Position` VARCHAR(50),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `ContactChannelRepresentatives` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    `CustomerId` INT,
    `RepresentativeId` INT,
    `ContactName` VARCHAR(100) NOT NULL,
    `ContactChannelTypeId` INT,
    `ContactValue` VARCHAR(120),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Employees` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Department` VARCHAR(50),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Templates` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `AttributeTypes` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `DataTypes` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Attributes` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `AttributeTypeId` INT NOT NULL,
    `DataTypeId` INT NOT NULL,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `TemplateAttributes` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    TemplateID INT,
    AttributeID INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT);

Create table if not exists `ElementTypes` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50), -- Tipo de elemento (ex: 'input', 'select', 'textarea')
    `Tag` VARCHAR(255),
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `TemplateElements` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `TemplateAttributeID` INT,
    `ElementTypeID` INT, -- Tipo de elemento (ex: 'input', 'select', 'textarea')
    `PositionX` INT, -- Posição X na página
    `PositionY` INT, -- Posição Y na página
    `Width` INT, -- Largura do elemento
    `Height` INT, -- Altura do elemento
    `Style` text, -- JSON contendo estilos CSS (ex: {"color": "red", "fontSize": "12px"})
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `Steps` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Description` TEXT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `TemplateSteps` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `TemplateID` INT,
    `StepID` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

CREATE TABLE IF NOT EXISTS `StepStatus` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `StepID` INT,
    `StatusID` INT,
    `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `CreatedBy` INT,
    `LastUpdateDate` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `UpdatedBy` INT);

