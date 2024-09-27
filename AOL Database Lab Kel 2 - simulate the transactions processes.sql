USE YOcholatos

--1
INSERT INTO MsStaff 
VALUES ('ST021', 'Bryan Aliwarga', 'Male', 'Mango Kuning Street', 6000000, '087836475862', '1990-01-08')

UPDATE MsStaff
SET StaffSalary = 5500000
WHERE StaffID = 'ST001'

--2
INSERT INTO MsVendor
VALUES ('VE042', 'PT Tanusaputra', 'jamurkayang@gmail.com', '087463524546', 'Kelabu Malam Street')

--3
INSERT INTO PurchaseHeader 
VALUES ('PU032', '2023-06-13', 'ST001', 'VE001')

--4
INSERT INTO MsChocolateType (ChocolateTypeID, ChocolateTypeName)
VALUES ('CT011', 'Marlborrow')

--5
INSERT INTO MsChocolate
VALUES ('CO034', 'Not Tonight Choco', 200, 50000, 'CT008')

--6
INSERT INTO MsCustomer 
VALUES ('CU045', 'Marlin Robusta', 'Female', '1994-05-10', 'Sultan Kori Street', '0864537283910')

--7
INSERT INTO SalesHeader
VALUES ('SL037', 'ST002', 'CU005', '2023-06-13')

--8
INSERT INTO SalesDetail
VALUES ('SL037', 'CO003', 256, '2023-12-15')

--9
INSERT INTO PurchaseDetail (PurchaseID, ChocolateID, ChocolateName, Quantity)
VALUES ('PU032', 'CO007', 'Aburi Choco', 80)
