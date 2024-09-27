CREATE DATABASE YOcholatos
USE YOcholatos

CREATE TABLE MsStaff (
	StaffID VARCHAR(5) 
		PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
	StaffName VARCHAR(255) NOT NULL,
	StaffGender VARCHAR(255) 
		CHECK (StaffGender IN ('Male', 'Female')) NOT NULL,
	StaffAddress VARCHAR(255) 
		CHECK (StaffAddress LIKE '% Street') NOT NULL,
	StaffSalary VARCHAR(255) 
		CHECK (StaffSalary >= 4000000 AND StaffSalary <= 6000000) NOT NULL,
	StaffPhoneNumber CHAR(15) NOT NULL,
	StaffDOB DATE 
		CHECK ((YEAR(StaffDOB) <= 2004)) NOT NULL
)

CREATE TABLE MsVendor (
	VendorID VARCHAR(5) 
		PRIMARY KEY CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]') NOT NULL,
	VendorName VARCHAR(255) NOT NULL,
	VendorEmail VARCHAR(255) CHECK (VendorEmail Like '%@%.%') NOT NULL,
	VendorPhoneNumber CHAR(15) Not Null,
	VendorAddress VARCHAR(255) CHECK (VendorAddress Like '% Street') NOT NULL
)

CREATE TABLE PurchaseHeader (
	PurchaseID VARCHAR(5) 
		PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]') NOT NULL,
	PurchaseDate DATE NOT NULL,
	StaffID VARCHAR(5) CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (StaffID) REFERENCES MsStaff (StaffID),
	VendorID VARCHAR(5) CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (VendorID) REFERENCES MsVendor (VendorID)
)

CREATE TABLE MsChocolateType (
	ChocolateTypeID VARCHAR(5) 
		PRIMARY KEY CHECK (ChocolateTypeID LIKE 'CT[0-9][0-9][0-9]') NOT NULL,
	ChocolateTypeName VARCHAR(255) NOT NULL
)

CREATE TABLE MsChocolate (
	ChocolateID VARCHAR(5) 
		PRIMARY KEY CHECK (ChocolateID LIKE 'CO[0-9][0-9][0-9]') NOT NULL,
	ChocolateName VARCHAR(255) NOT NULL,
	ChocolateStock INT NOT NULL,
	ChocolatePrice INT NOT NULL,
	ChocolateTypeID VARCHAR(5) CHECK (ChocolateTypeID  LIKE 'CT[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (ChocolateTypeID) REFERENCES MsChocolateType (ChocolateTypeID)
)

CREATE TABLE MsCustomer (
	CustomerID VARCHAR(5) 
		PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]') NOT NULL,
	CustomerName VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR(255) 
		CHECK (CustomerGender IN ('Male', 'Female')) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerAddress VARCHAR(255) 
		CHECK (CustomerAddress LIKE '% Street') NOT NULL,
	CustomerPhoneNumber CHAR(15) NOT NULL
)

CREATE TABLE SalesHeader (
	SalesID VARCHAR(5) 
		PRIMARY KEY CHECK (SalesID LIKE 'SL[0-9][0-9][0-9]') NOT NULL,
	StaffID VARCHAR(5) CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (StaffID) REFERENCES MsStaff(StaffID),
	CustomerID VARCHAR(5) CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (CustomerID) REFERENCES MsCustomer(CustomerID),
	TransactionDate DATE NOT NULL
)


CREATE TABLE PurchaseDetail (
    PurchaseID VARCHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (PurchaseID) REFERENCES PurchaseHeader(PurchaseID),
    ChocolateID VARCHAR(5) CHECK (ChocolateID  LIKE 'CO[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (ChocolateID) REFERENCES MsChocolate(ChocolateID),
    ChocolateName VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL
)

CREATE TABLE SalesDetail (
	SalesID VARCHAR(5) 
		PRIMARY KEY CHECK (SalesID LIKE 'SL[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (SalesID) REFERENCES SalesHeader(SalesID),
	ChocolateID VARCHAR(5) CHECK (ChocolateID  LIKE 'CO[0-9][0-9][0-9]') NOT NULL,
		FOREIGN KEY (ChocolateID) REFERENCES MsChocolate(ChocolateID),
	Quantity INT NOT NULL,
	TransactionDate DATE NOT NULL
) 

DROP TABLE SalesDetail