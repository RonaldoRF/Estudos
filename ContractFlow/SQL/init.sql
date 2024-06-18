
CREATE DATABASE IF NOT EXISTS `WorkflowDb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT ENCRYPTION='N';

CREATE USER 'aluno'@'%' IDENTIFIED BY '!QAZ2wsx';
GRANT ALL PRIVILEGES ON WorkflowDb.* TO 'aluno'@'%';

FLUSH PRIVILEGES;

-- Script para criação da tabela País
-- Script para criação da tabela Country, se não existir
CREATE TABLE IF NOT EXISTS Country (
    CountryCode INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(100) NOT NULL,
    ISOCode CHAR(3) NOT NULL,
    CapitalCity VARCHAR(100),
    Region VARCHAR(100),
    Population BIGINT,
    AreaSqKm DECIMAL(10,2),
    CallingCode CHAR(5),
    Currency VARCHAR(50),
    TimeZone VARCHAR(50),
    Latitude DECIMAL(10,6),
    Longitude DECIMAL(10,6),
    FlagURL VARCHAR(255),
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela State, se não existir
CREATE TABLE IF NOT EXISTS State (
    StateCode INT AUTO_INCREMENT PRIMARY KEY,
    StateName VARCHAR(100) NOT NULL,
    Abbreviation CHAR(2),
    CapitalCity VARCHAR(100),
    Region VARCHAR(100),
    Population BIGINT,
    AreaSqKm DECIMAL(10,2),
    Latitude DECIMAL(10,6),
    Longitude DECIMAL(10,6),
    CountryCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CountryCode) REFERENCES Country(CountryCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela City, se não existir
CREATE TABLE IF NOT EXISTS City (
    CityCode INT AUTO_INCREMENT PRIMARY KEY,
    CityName VARCHAR(100) NOT NULL,
    Population BIGINT,
    AreaSqKm DECIMAL(10,2),
    Latitude DECIMAL(10,6),
    Longitude DECIMAL(10,6),
    StateCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (StateCode) REFERENCES State(StateCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela Street, se não existir
CREATE TABLE IF NOT EXISTS Street (
    StreetCode INT AUTO_INCREMENT PRIMARY KEY,
    StreetName VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(20),
    Neighborhood VARCHAR(100),
    Latitude DECIMAL(10,6),
    Longitude DECIMAL(10,6),
    CityCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CityCode) REFERENCES City(CityCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela BusinessSector, se não existir
CREATE TABLE IF NOT EXISTS BusinessSector (
    BusinessSectorCode INT AUTO_INCREMENT PRIMARY KEY,
    BusinessSectorName VARCHAR(100) NOT NULL,
    Description TEXT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela MarketSegment, se não existir
CREATE TABLE IF NOT EXISTS MarketSegment (
    MarketSegmentCode INT AUTO_INCREMENT PRIMARY KEY,
    MarketSegmentName VARCHAR(100) NOT NULL,
    Description TEXT,
    BusinessSectorCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (BusinessSectorCode) REFERENCES BusinessSector(BusinessSectorCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela ActivityBranch, se não existir
CREATE TABLE IF NOT EXISTS ActivityBranch (
    ActivityBranchCode INT AUTO_INCREMENT PRIMARY KEY,
    ActivityBranchName VARCHAR(100) NOT NULL,
    Description TEXT,
    MarketSegmentCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (MarketSegmentCode) REFERENCES MarketSegment(MarketSegmentCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela ServiceSubcategory, se não existir
CREATE TABLE IF NOT EXISTS ServiceSubcategory (
    ServiceSubcategoryCode INT AUTO_INCREMENT PRIMARY KEY,
    ServiceSubcategoryName VARCHAR(100) NOT NULL,
    Description TEXT,
    ActivityBranchCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (ActivityBranchCode) REFERENCES ActivityBranch(ActivityBranchCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela Customer, se não existir
CREATE TABLE IF NOT EXISTS Customer (
    CustomerCode INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ServiceStartDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsActive BOOLEAN DEFAULT TRUE,
    ServiceSubcategoryCode INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (ServiceSubcategoryCode) REFERENCES ServiceSubcategory(ServiceSubcategoryCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela CustomerAddress, se não existir
CREATE TABLE IF NOT EXISTS CustomerAddress (
    CustomerAddressCode INT AUTO_INCREMENT PRIMARY KEY,
    CustomerCode INT,
    AddressCode INT,
    PrimaryAddress BOOLEAN DEFAULT FALSE,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CustomerCode) REFERENCES Customer(CustomerCode),
    FOREIGN KEY (AddressCode) REFERENCES Address(AddressCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela ContactChannelType, se não existir
CREATE TABLE IF NOT EXISTS ContactChannelType (
    ContactChannelTypeCode INT AUTO_INCREMENT PRIMARY KEY,
    ContactChannelTypeDescription VARCHAR(50),
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela Representative, se não existir
CREATE TABLE IF NOT EXISTS Representative (
    RepresentativeCode INT AUTO_INCREMENT PRIMARY KEY,
    CustomerCode INT,
    RepresentativeName VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (CustomerCode) REFERENCES Customer(CustomerCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

-- Script para criação da tabela ContactChannelRepresentative, se não existir
CREATE TABLE IF NOT EXISTS ContactChannelRepresentative (
    ContactCode INT AUTO_INCREMENT PRIMARY KEY,
    CustomerCode INT,
    RepresentativeCode INT,
    ContactName VARCHAR(100) NOT NULL,
    ContactChannelTypeCode INT,
    ContactValue VARCHAR(120),
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CreatedBy INT,
    LastUpdateDate DATETIME ON UPDATE CURRENT_TIMESTAMP,
    UpdatedBy INT,
    FOREIGN KEY (ContactChannelTypeCode) REFERENCES ContactChannelType(ContactChannelTypeCode),
    FOREIGN KEY (CustomerCode) REFERENCES Customer(CustomerCode),
    FOREIGN KEY (RepresentativeCode) REFERENCES Representative(RepresentativeCode),
    FOREIGN KEY (CreatedBy) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (UpdatedBy) REFERENCES Employees(EmployeeID)
);

