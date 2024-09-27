USE YOcholatos

-- 1. Display StaffID, StaffGender, Staff First Name (obtained from the first word of StaffName), 
-- and Total Purchase Made (obtained from the total purchases count made by staff) for each StaffGender equals 
-- to Female and Total purchase made is greater than 2.

SELECT
	MS.StaffID,
	MS.StaffGender,
	LEFT(MS.StaffName, CHARINDEX(' ', MS.StaffName) - 1) AS [Staff First Name],
	COUNT(PH.PurchaseID) AS [Total Purchase Made]
FROM
	MsStaff MS
JOIN
	PurchaseHeader PH ON MS.StaffID = PH.StaffID
GROUP BY
	MS.StaffID, MS.StaffGender, MS.StaffName
HAVING
	MS.StaffGender = 'Female' AND COUNT(*) > 2



-- 2. Display Chocolate ID (obtained by replacing 'CO' with 'CHOCO ' from ChocolateID), 
-- StaffID, Chocolate Type Name (obtained from ChocolateTypeName in upper case format), 
-- and Total Items Sold (obtained from the total of Quantity) for each “Mix” , “Crunchy”, 
-- “Cookies and Cream” Chocolate Type Name  and Total Items Sold must be greater than 5.

SELECT
    REPLACE(MC.ChocolateID, 'CO', 'CHOCO') AS [Chocolate ID],
    SH.StaffID,
    UPPER(CTI.ChocolateTypeName) AS [Chocolate Type Name],
    SUM(SD.Quantity) AS [Item Sold]
FROM
    MsChocolate MC
    JOIN SalesDetail SD ON MC.ChocolateID = SD.ChocolateID
    JOIN MsChocolateType CTI ON MC.ChocolateTypeID = CTI.ChocolateTypeID
    JOIN SalesHeader SH ON SD.SalesID = SH.SalesID
WHERE
    CTI.ChocolateTypeName IN ('Mix', 'Crunchy', 'Cookies')
GROUP BY
    MC.ChocolateID, SH.StaffID, CTI.ChocolateTypeName
HAVING
    SUM(SD.Quantity) > 5

-- 3.	Display Customer Last Name (obtained from last word of CustomerName), 
-- CustomerGender, Total Chocolate Purchased (obtained from total of quantity), 
-- and Average Chocolate Sold (obtained from multiplying quantity and chocolate price) 
-- for each CustomerGender equals to Female and Total Chocolate Purchased is greater than 10.

SELECT
	RIGHT(MC.CustomerName, CHARINDEX(' ', (MC.CustomerName)) - 1) AS [Customer Last Name],
	MC.CustomerGender,
	SUM(SD.Quantity) AS [Total Chocolate Purchased],
	AVG(SD.Quantity * MCH.ChocolatePrice) AS [Average Chocolate Sold]
FROM
	MsCustomer MC
	JOIN SalesHeader SH ON MC.CustomerID = SH.CustomerID
	JOIN SalesDetail SD ON SH.SalesID = SD.SalesID
	JOIN MsChocolate MCH ON SD.ChocolateID = MCH.ChocolateID
GROUP BY
	MC.CustomerName, MC.CustomerGender
HAVING
	MC.CustomerGender = 'Female' AND SUM(SD.Quantity) > 10


-- 4.Display VendorID, Vendor Email (obtained from VendorEmail in uppercase format), 
-- Vendor Name (obtained from VendorName ends with ' Vendor'), Total Chocolate Sold (obtained from total of Quantity), 
-- and Minimum Chocolate Sold (obtained from minimum of Quantity) 
-- for each Total Chocolate Sold greater than 5 and Length of VendorName is greater than 10

SELECT
	PH.VendorID,
	UPPER(VendorEmail) AS [Vendor Email],
	VendorName,
	SUM(PD.Quantity) AS [Total Chocolate Sold],
	MIN(PD.Quantity) AS [Minimum Chocolate Sold]
FROM MsVendor MV
	JOIN PurchaseHeader PH ON MV.VendorID = PH.VendorID
	JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
GROUP BY
	PH.VendorID, MV.VendorEmail, MV.VendorName
HAVING
	SUM(PD.Quantity) > 5 AND LEN(MV.VendorName) > 10

-- 5. Display Vendor ID (obtained by replacing ‘VE’ with ‘Vendor ’ from VendorID), 
-- Purchase Day (obtained from the day of PurchaseDate), and 
-- Quantity for each transaction that occurs after the 9th day and 
-- Quantity is greater than the average of all purchasing quantity.

SELECT 
 REPLACE(MV.VendorID, 'VE', 'Vendor ') AS [Vendor ID],
    DAY(PH.PurchaseDate) AS [Purchase Day],
 Quantity
FROM 
 PurchaseHeader PH
 JOIN MsVendor MV ON PH.VendorID = MV.VendorID
 JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
WHERE
    DAY(PH.PurchaseDate) > 9
    AND PD.Quantity > (
SELECT AVG(Quantity) 
FROM PurchaseDetail
)

-- 6. Display Invoice Number (obtained by adding ‘Invoice ’ with 
-- digit of SalesID as integer from SalesID), Sales Date, ChocolateName, 
-- ChocolateTypeName, ChocolatePrice for each transaction where 
-- ChocolateTypeName is equal to ‘Mix’ and ChocolatePrice is greater 
-- than the average of all chocolate price.

SELECT 
	STUFF(SalesID, 1, 2,'Invoice ') AS [Invoice Number],
	TransactionDate,
	ChocolateName,
	ChocolateTypeName,
	ChocolatePrice
FROM 
	MsChocolate MC
JOIN SalesDetail SD ON MC.ChocolateID = SD.ChocolateID
JOIN MsChocolateType CTI ON MC.ChocolateTypeID = CTI.ChocolateTypeID
WHERE 
	ChocolateTypeName = 'Mix'
	AND ChocolatePrice > (
		SELECT
		AVG(ChocolatePrice) 
		FROM MsChocolate
  )

-- 7. Display PurchaseID, StaffID, Staff Name (obtained from StaffName in lowercase format), 
-- Purchase Date (obtained from PurchaseDate in 'dd/mm/yyyy' format), and Total Expenses 
-- (obtained from the total of multiplying ChocolatePrice and Quantity, starts with 'Rp. ') 
-- for each Total Expenses greater than the average expense (obtained from the average of 
-- multiplying ChocolatePrice and Quantity) and Purchase Date must be greater than 2019.

SELECT 
	PH.PurchaseID,
	MS.StaffID,
	LOWER(MS.StaffName) AS [Staff Name],
	FORMAT(PH.PurchaseDate,'dd/mm/yyyy') AS [Purchase Date],
	'Rp. ' + CAST(SUM(ChocolatePrice * PD.Quantity) AS VARCHAR ) AS [Total Expenses]
FROM PurchaseHeader PH
	JOIN MsStaff MS ON PH.StaffID = MS.StaffID
	JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
	JOIN MsChocolate MC ON  PD.ChocolateID = MC.ChocolateID
WHERE PH.PurchaseDate > '2019'
GROUP BY 
  PH.PurchaseID, MS.StaffID, MS.StaffName, PH.PurchaseDate
HAVING SUM(MC.ChocolatePrice * PD.Quantity) > (
    SELECT AVG(PD.Quantity * MC.ChocolatePrice)
    FROM PurchaseDetail PD
JOIN MsChocolate MC ON PD.ChocolateID = MC.ChocolateID
JOIN PurchaseHeader PH ON PD.PurchaseID = PH.PurchaseID
    WHERE PH.PurchaseDate > '2019'
  )

-- 8. Display Sales Number (Obtained from digit number of SalesID as integer), StaffID, 
-- Sales Month (obtained from the name of the month of SalesDate), and 
-- Total Revenue (obtained from the total of multiplying ChocolatePrice and Quantity) 
-- for each transaction that occurs before November and ChocolatePrice is greater than the average of all chocolate price.

SELECT
	CAST(RIGHT(SH.SalesID, LEN(SH.SalesID) - 2) AS INT) AS [Sales Number],
	StaffID,
	DATENAME(MONTH, SH.TransactionDate) AS [Sales Month],
	SUM(MC.ChocolatePrice * SD.Quantity) AS [Total Revenue]
FROM
	SalesHeader SH
	JOIN SalesDetail SD ON SH.SalesID = SD.SalesID
	JOIN MsChocolate MC ON SD.ChocolateID = MC.ChocolateID
	JOIN (
		SELECT AVG(ChocolatePrice) AS AvgPrice
		FROM MsChocolate
	) AS AvgTable ON MC.ChocolatePrice > AvgTable.AvgPrice
WHERE
	MONTH(SH.TransactionDate) < 11
GROUP BY
	SH.SalesID, SH.StaffID, SH.TransactionDate



-- 9. Create a view named 'Vendor Max Transaction View' to display Vendor Number 
-- (obtained by replacing 'VE' with 'Vendor ' from VendorID), VendorName, 
-- Total Transaction Made (obtained from the total transaction made count), 
-- Maximum Quantity (obtained from maximum of Quantity) for each even digit number of VendorID 
-- and Maximum Quantity must be greater than 12.

CREATE VIEW [Vendor Max Transaction View] AS
SELECT 
	STUFF (MV.VendorID, 1, 2, 'Vendor ') AS [Vendor Number],
	VendorName,
	COUNT (*) AS [Total Transaction Count],
	MAX (PD.Quantity) AS [Maximum Quantity]
FROM PurchaseHeader PH
	JOIN MsVendor MV ON PH.VendorID = MV.VendorID
	JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
WHERE MV.VendorID IN ('VE0', 'VE2', 'VE4', 'VE6', 'VE8') AND PD.Quantity > 12
GROUP BY MV.VendorID, MV.VendorName

-- 10.	Create view named 'Chocolate Minimum Transaction View' to display SalesID, 
-- SalesDate (obtained from SalesDate in 'dd/mm/yyyy' format), StaffName, StaffGender, 
-- Minimum Chocolate Sold (obtained from minimum of Quantity), and 
-- Total Chocolate Sold (obtained from total of Quantity) for SalesDate that occurs 
--after 2020 and ChocolatePrice is greater than 10000.

CREATE VIEW [Chocolate Minimum Transaction View] AS
SELECT 
	SD.SalesID,
	FORMAT (SH.TransactionDate, 'dd/mm/yyyy') AS [Sales Date],
	MS.StaffName, 
	MS.StaffGender,
	MIN (SD.Quantity) AS [Minimum Chocolate Sold],
	SUM (SD.Quantity) AS [Total Chocolate Sold]
FROM SalesDetail SD
	JOIN SalesHeader SH ON SD.SalesID = SH.SalesID
	JOIN MsStaff MS ON SH.StaffID = MS.StaffID
	JOIN MsChocolate MC ON SD.ChocolateID = MC.ChocolateID
WHERE SH.TransactionDate >= '2020' AND MC.ChocolatePrice > 10000
GROUP BY SD.SalesID, SH.TransactionDate, MS.StaffName, MS.StaffGender