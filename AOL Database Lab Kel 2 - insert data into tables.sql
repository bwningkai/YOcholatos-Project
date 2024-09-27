USE YOcholatos

INSERT INTO MsStaff VALUES
	('ST001', 'Maya Anderson', 'Female', 'Merdeka Barat Street', 4000000, '081234567890', '2003-06-12'),
	('ST002', 'Adi Sullivan', 'Male', 'Kemuning Mangga Street', 4100000, '082123456789', '1995-03-20'),
	('ST003', 'Ethan Pratama', 'Male', 'Flamboyan Mandu Street', 4210000, '081345678901', '1998-11-02'),
	('ST004', 'Olivia Hartono', 'Female', 'Bunga Mawar Street', 4320000, '081123456789', '1994-12-28'),
	('ST005', 'Ava Wijaya', 'Female', 'Jambu Dadar Street', 4789000, '082134567890', '1999-02-18'),
	('ST006', 'Rina Setiawan', 'Female', 'Anggrek Cakra Street', 4567000, '081098765432', '1997-07-03'),
	('ST007', 'Andre Williams', 'Male', 'Pahlawan Jasa Street', 4333000, '082276543210', '1996-05-11'),
	('ST008', 'Sofia Gunawan', 'Female', 'Melati Tuwir Street', 4999000, '081324681357', '2002-08-09'),
	('ST009', 'Arman Prasetyo', 'Male', 'Teratai Riil Street', 4500000, '081256789012', '1998-04-05'),
	('ST010', 'Amelia Scott', 'Female', 'Gading Street', 5000000, '082165430987', '2000-01-22'),
	('ST011', 'Budi Hartati', 'Male', 'Cempaka Ratu Street', 5100000, '081012345678', '1997-12-17'),
	('ST012', 'Mia Purnomo', 'Female', 'Dahlia Persik Street', 5120000, '082298765432', '1995-09-19'),
	('ST013', 'David Winata', 'Male', 'Kenanga 17 Street', 5500000, '081123456789', '1994-11-29'),
	('ST014', 'Cindy Kusuma', 'Female', 'Duren 45 Street', 5300000, '082134561234', '1998-02-14'),
	('ST015', 'Ryan Pranata', 'Male', 'Pelipis Remis Street', 5600000, '081098765432', '1995-09-27'),
	('ST016', 'Amanda Hartono', 'Female', 'Rebus Mie Street', 5340000, '082212345678', '1997-03-10'),
	('ST017', 'Nicholas Santoso', 'Male', 'Taman Raja Street', 6000000, '081387654321', '2000-08-05'),
	('ST018', 'Stephanie Wijaya', 'Female', 'Dukuh Naik Street', 5900000, '082123456789', '1996-12-02'),
	('ST019', 'Sophia Indrawan', 'Female', 'Kristal Rizz Street', 5789000, '082123456789', '1998-04-18'),
	('ST020', 'Daniel Gunawan', 'Male', 'Kuningan Malam Street', 5304000, '081234567890', '1999-07-22')

INSERT INTO MsChocolateType VALUES
	('CT001', 'Mix'),
	('CT002', 'Cookies and Cream'),
	('CT003', 'Golden Choco'),
	('CT004', 'Peanut Choco'),
	('CT005', 'Dark Forest Choco'),
	('CT006', 'Almond'),
	('CT007', 'Dark Choco'),
	('CT008', 'White Choco'),
	('CT009', 'Crunchy'),
	('CT010', 'Milk Choco')

INSERT INTO MsChocolate VALUES
	('CO001', 'Velvet Truffle Choco', 60, 40000, 'CT001'),
	('CO002', 'Caramel Swirl', 65, 38000, 'CT008'),
	('CO003', 'Nutty Fudge', 60, 42000, 'CT004'),
	('CO004', 'Almond Joy', 63, 40000, 'CT006'),
	('CO005', 'Magical Mocha', 70, 45000, 'CT002'),
	('CO006', 'Mighty Thunder', 75, 46000, 'CT010'),
	('CO007', 'Curious Cocoa ', 68, 39000, 'CT009'),
	('CO008', 'Chocolate Euphoria', 69, 47000, 'CT005'),
	('CO009', 'Golden Ganache', 74, 50000, 'CT003'),
	('CO010', 'Frozen Delights', 80, 45000, 'CT008'),
	('CO011', 'Curious Cocoa ', 65, 39000, 'CT007'),
	('CO012', 'Chocolate Blasts', 65, 43000, 'CT007'),
	('CO013', 'Dark Mysterios', 74, 45000, 'CT005'),
	('CO014', 'Wonderbars', 78, 50000, 'CT001'),
	('CO015', 'Decadent Cacao', 60, 42000, 'CT002')

INSERT INTO MsCustomer VALUES
	('CU001', 'Alexius Bramasta', 'Male', '2001-06-05', 'Menteng Street', '084557347521'),
	('CU002', 'Karina rahmani', 'Male', '2003-04-30', 'Senopati I Street', '089464326436'),
	('CU003', 'Kezia adinda', 'Female', '1996-08-15', 'MPR V Street', '088427435315'),
	('CU004', 'Jodi Hega', 'Male', '2002-11-28', 'Rambai IV Street', '081152685368'),
	('CU005', 'Baskara aji', 'Male', '1994-03-19', 'Cilandak barat  Street', '0896463275543'),
	('CU006', 'Dania Maheswari', 'Female', '2000-12-08', 'Kemanggisan I Street', '087542889536'),
	('CU007', 'Faniya Felicia', 'Female', '1987-01-04', 'Suwiryo Street', '082785395562'),
	('CU008', 'Julian Kriswanto', 'Male', '2004-09-13', 'Puri Indah Street', '08777112539'),
	('CU009', 'Adriel putra', 'Male', '1995-03-02', 'Cirendeu Street', '088536664216'),
	('CU010', 'Aidan Hezekiel', 'Female', '1999-05-01', 'Cinere III Street', '081357845495'),
	('CU011', 'Mahran Felix', 'Male', '2004-06-25', 'Kebagusan Street', '0814365783574'),
	('CU012', 'Rizky Jadon', 'Male', '1988-08-26', 'Durian Street', '084768533647'),
	('CU013', 'Dinda Gunawan', 'Female', '1998-07-02', 'Daan Mogot Street', '086492847592')

INSERT INTO MsVendor VALUES
	('VE001', 'PT. Bahagia Indonesia', 'bahagiaindonesia@gmail.com', '087493675736', 'Duku II Street'),
	('VE002', 'Maya Pelangi', 'mayapelangi@gmail.com', '086573859847', 'Mangga I Street '),
	('VE003', 'Ahmad bersari', 'ahmadbersari@gmail.com','086583058471', 'Perintis Street'),
	('VE004', 'Dina puspita ', 'dinapuspita@gmail.com', '089473629574', 'Keramat Pela Street'),
	('VE005', 'PT. Cahaya Gemilang', 'cahayagemilang@gmail.com',  '082486735196','Progo IV Street'),
	('VE006', 'Aisyah putri', 'aisyahputri@gmail.com','087009419481', 'Kebon Jeruk Street'),
	('VE007', 'Dedy Setiadi', 'dedysetiadi@gmail.com', '087776389538', 'Ir Haji Juanda Street'),
	('VE008', 'PT. Damai Sejahtera', 'damaisejahtera@gmail.com', '086548883251', 'Rambai I Street'),
	('VE009', 'PT. Kereta Kencana', 'kereta.kencana@gmail.com', '086495722284', 'Ciparai Street'),
	('VE010', 'Hazel Kurniadi', 'hazel.kurniadi@gmail.com', '085559274835','Jembatan Utara Street'),
	('VE011', 'Aksa Setiadi', 'aksasetiadi20@gmail.com', '086472883629', 'Rambutan VII Street'),
	('VE012', 'PT. Jaya Abadi', 'jaya.abadi@gmail.com', '086734911157', 'Jeruk Barat Street'),
	('VE013', 'Dewi Rahayu', 'dewirahayu@gmail.com', '086870549', 'Delima Selatan Street'),
	('VE014', 'Adisti Wahyu', 'Adistiwahyu@gmail.com', '08666547288', 'Ahmad Yani Street'),
	('VE015', 'Alex Santoso', 'alexsantoso@gmail.com', '081845933299', 'Hayam Wuruk Street')

INSERT INTO PurchaseHeader VALUES
	('PU001', '2022-07-10', 'ST001', 'VE001'),
	('PU002', '2023-11-20', 'ST002', 'VE002'),
	('PU003', '2023-05-18', 'ST003', 'VE003'),
	('PU004', '2022-12-25', 'ST004', 'VE004'),
	('PU005', '2022-03-21', 'ST005', 'VE005'),
	('PU006', '2022-07-10', 'ST006', 'VE006'),
	('PU007', '2022-01-08', 'ST007', 'VE007'),
	('PU008', '2023-12-01', 'ST008', 'VE008'),
	('PU009', '2023-11-20', 'ST009', 'VE009'),
	('PU010', '2023-06-09', 'ST010', 'VE010'),
	('PU011', '2022-04-05', 'ST011', 'VE011'),
	('PU012', '2023-10-12', 'ST012', 'VE012'),
	('PU013', '2023-08-07', 'ST013', 'VE013'),
	('PU014', '2023-01-15', 'ST014', 'VE014'),
	('PU015', '2023-09-03', 'ST015', 'VE015'),
	('PU016', '2022-09-26', 'ST016', 'VE003'),
	('PU017', '2022-05-05', 'ST017', 'VE006'),
	('PU018', '2022-10-19', 'ST018', 'VE004'),
	('PU019', '2023-03-08', 'ST019', 'VE009'),
	('PU020', '2022-08-14', 'ST020', 'VE002'),
	('PU021', '2023-07-02', 'ST003', 'VE010'),
	('PU022', '2022-06-22', 'ST006', 'VE015'),
	('PU023', '2022-11-11', 'ST015', 'VE007'),
	('PU024', '2023-04-03', 'ST001', 'VE001'),
	('PU025', '2022-02-17', 'ST014', 'VE001')

INSERT INTO PurchaseDetail VALUES 
	('PU001', 'CO001', 'Dark Choco', 100),
	('PU002', 'CO002', 'White Choco', 180),
	('PU003', 'CO003', 'Milk Choco', 250),
	('PU004', 'CO004', 'Peanut Choco', 210),
	('PU005', 'CO005', 'Plain Choco', 110),
	('PU006', 'CO006', 'Crazy Choco', 120),
	('PU007', 'CO007', 'Plain Choco', 150),
	('PU008', 'CO008', 'Peanut Choco', 160),
	('PU009', 'CO009', 'Dark Choco', 200),
	('PU010', 'CO010', 'White Choco', 213),
	('PU011', 'CO011', 'White Choco', 256),
	('PU012', 'CO012', 'Milk Choco', 167),
	('PU013', 'CO013', 'Crazy Choco', 189),
	('PU014', 'CO014', 'Peanut Choco', 190),
	('PU015', 'CO015', 'Peanut Choco', 198),
	('PU016', 'CO013', 'Plain Choco', 145),
	('PU017', 'CO006', 'Plain Choco', 139),
	('PU018', 'CO003', 'Plain Choco', 210),
	('PU019', 'CO007', 'Crazy Choco', 220),
	('PU020', 'CO001', 'Millk Choco', 298),
	('PU021', 'CO009', 'Milk Choco', 240),
	('PU022', 'CO014', 'Dark Choco', 300),
	('PU023', 'CO012', 'White Choco', 350),
	('PU024', 'CO010', 'White Choco', 360),
	('PU025', 'CO008', 'Dark Choco', 345)

INSERT INTO SalesHeader VALUES
	('SL001', 'ST001', 'CU001', '2022-07-10'),
	('SL002', 'ST002', 'CU002', '2023-11-20'),
	('SL003', 'ST003', 'CU003', '2023-05-18'),
	('SL004', 'ST004', 'CU004', '2022-12-25'),
	('SL005', 'ST005', 'CU005', '2022-03-21'),
	('SL006', 'ST006', 'CU006', '2022-07-10'),
	('SL007', 'ST007', 'CU007', '2022-01-08'),
	('SL008', 'ST008', 'CU008', '2023-12-01'),
	('SL009', 'ST009', 'CU009', '2023-11-20'),
	('SL010', 'ST010', 'CU010', '2023-06-09'),
	('SL011', 'ST011', 'CU011', '2022-04-05'),
	('SL012', 'ST012', 'CU012', '2023-10-12'),
	('SL013', 'ST013', 'CU013', '2023-08-07'),
	('SL014', 'ST014', 'CU013', '2023-01-15'),
	('SL015', 'ST015', 'CU013', '2022-09-26'),
	('SL016', 'ST016', 'CU013', '2023-09-03'),
	('SL017', 'ST017', 'CU013', '2022-05-05'),
	('SL018', 'ST018', 'CU013', '2022-10-19'),
	('SL019', 'ST019', 'CU013', '2023-03-08'),
	('SL020', 'ST020', 'CU013', '2022-08-14')

INSERT INTO SalesDetail VALUES
	('SL001', 'CO001', 2, '2023-11-20'),
	('SL002', 'CO002', 3, '2022-05-05'),
	('SL003', 'CO003', 1, '2022-08-14'),
	('SL004', 'CO004', 5, '2023-11-20'),
	('SL005', 'CO005', 2, '2023-12-01'),
	('SL006', 'CO006', 4, '2023-06-09'),
	('SL007', 'CO007', 7, '2023-01-15'),
	('SL008', 'CO008', 2, '2022-10-19'),
	('SL009', 'CO009', 4, '2023-09-03'),
	('SL010', 'CO010', 3, '2022-03-21'),
	('SL011', 'CO011', 3, '2022-09-26'),
	('SL012', 'CO012', 2, '2023-03-08'),
	('SL013', 'CO013', 5, '2022-08-14'),
	('SL014', 'CO014', 3, '2023-07-02'),
	('SL015', 'CO015', 3, '2022-06-22'),
	('SL016', 'CO009', 2, '2022-11-11'),
	('SL017', 'CO008', 3, '2023-04-03'),
	('SL018', 'CO004', 2, '2022-02-17'),
	('SL019', 'CO002', 2, '2023-05-09'),
	('SL020', 'CO014', 4, '2022-01-08')
