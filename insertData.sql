--insert customer
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (1, 'Lynn Gerretsen', '1273819144', '2002-01-09', '598 Holy Cross Avenue', '8435133118');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (2, 'Truman Martinson', '1283106167', '2002-03-19', '3 Village Green Place', '7201423917');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (3, 'Annecorinne Danihelka', '1245621459', '2001-12-23', '99909 Haas Plaza', '7968104125');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (4, 'Geoffry Christaeas', '2541361459', '2010-12-25', '7652 Superior Drive', '6184473937');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (5, 'Corri Latter', '1245864122', '2000-03-12', '32 Oriole Point', '6456453912');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (6, 'Cleavland Winterscale', '1254625186', '1980-10-23', '632 Nelson Junction', '1584212360');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (7, 'Georgie Bertie', '1326523244', '1960-01-14', '3658 Grover Parkway', '8704993907');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (8, 'Erasmus Emett', '2145621520', '1980-01-02', '69 Vermont Junction', '3106105409');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (9, 'Harlie Streak', '1265412302', '2002-12-07', '8 Delladonna Hill', '9394063351');
insert into customer (CID, name, NatCod, Birthdate, Add_, Tel) values (10, 'Ginger Hanna', '1671421521', '1987-10-28', '6309 Linden Trail', '1758317779');

--Branch
insert into Branch (Branch_ID, Branch_Name, Branch_Add, Branch_Tel) values (1, 'Zaam-Dox', '9057 Briar Crest Alley', '914-516-1456');
insert into Branch (Branch_ID, Branch_Name, Branch_Add, Branch_Tel) values (2, 'Ronstring', '4647 Raven Lane', '409-964-2812');
insert into Branch (Branch_ID, Branch_Name, Branch_Add, Branch_Tel) values (3, 'Fintone', '8 Nova Street', '386-761-5719');
insert into Branch (Branch_ID, Branch_Name, Branch_Add, Branch_Tel) values (4, 'Voltsillam', '9 Emmet Point', '219-618-4160');

--insert Trn_Src_Dec
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (1, '2022-01-14', '02:32:52', '717', 12, 25, 1, 'Monitoring of Cardiac Output, External Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (2, '2022-05-05', '06:39:31', '124', 13, 25, 4, 'Assist w Cardiac Output w Puls Compression, Intermittent');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (3, '2022-06-16', '21:15:10', '765', 11, 25, 2, 'Revision of Nonaut Sub in Thoracic Duct, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (4, '2022-08-30', '16:12:58', '927', 25, 87, 3, 'Bypass L Atrium to Pulm Vn Cnfl w Autol Art, Open');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (5, '2022-07-08', '12:00:55', '71', 18,10, 2, 'Excision of Left Lung, Endo');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (6, '2022-10-03', '22:23:10', '394', 25, 18, 1, 'Revision of Radioactive Element in Neck, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (7, '2022-11-13', '09:20:15', '521', 18, 10, 2, 'Bypass R Less Saphenous to Low Vein w Autol Sub, Open');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (8, '2022-09-06', '14:48:15', '77', 12, 58, 3, 'Insert Intralum Dev in R Thyroid Art, Perc Endo');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (9, '2022-07-14', '01:38:06', '790', 13, 16, 4, 'Excision of Left Vocal Cord, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (10, '2022-09-01', '13:50:00', '927', 87, 16, 2, 'Drainage of Left Thorax Muscle, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (11, '2022-05-07', '07:01:09', '242', 10, 19, 3, 'Bypass 3 Cor Art from R Int Mammary w Nonaut Sub, Perc Endo');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (12, '2023-01-09', '10:25:24', '659', 12, 18, 1, 'Dilate L Com Carotid w 4+ Intralum Dev, Perc Endo');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (13, '2022-09-15', '09:33:09', '430', 87, 15, 1, 'Extirpation of Matter from Mesentery, Percutaneous Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (14, '2022-10-09', '20:54:55', '307',15, 54, 3, 'Dilate Splenic Art, Bifurc, w 3 Intralum Dev, Perc');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (15, '2022-9-01', '19:49:30', '572',87, 10, 4, 'Extirpation of Matter from Hymen, Via Opening');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (16, '2022-10-27', '22:00:06', '368', 15, null, 2, 'Excision of Left Carpal Joint, Open Approach, Diagnostic');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (17, '2022-06-22', '12:56:40', '367', null, 25, 2, 'Excision of Glossopharyngeal Nerve, Percutaneous Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (18, '2022-09-01', '04:57:45', '846', 87, 12, 4, 'Removal of Autologous Tissue Substitute from R Breast, Endo');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (19, '2022-04-22', '18:46:59', '254', 154, 25, 3, 'Introduce Analg/Hypnot/Sedat in Bil/Panc Tract, Via Opening');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (20, '2022-010-15', '13:57:26', '289', 87, 13, 2, 'Removal of Packing Material on Right Hand');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (21, '2022-05-03', '01:52:19', '302', 154, 13, 4, 'Dilate Abd Aorta, Bifurc, w Drug-elut Intra, Perc');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (22, '2022-03-21', '17:27:22', '327', 32, 10, 1, 'Destruction of Left Lesser Saphenous Vein, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (23, '2022-03-29', '02:36:34', '584', 54, 58, 2, 'Revision of Autol Sub in R Metacarpocarp Jt, Extern Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (24, '2022-06-15', '16:53:13', '281', 12, 18, 1, 'Removal of Nonaut Sub from R Up Femur, Perc Endo Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (25, '2022-10-07', '23:26:29', '463', 65, 58, 3, 'Change Drainage Device in Skull, External Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (26, '2022-09-22', '21:40:32', '571', 16, 15, 2, 'Release Left Upper Arm Tendon, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (27, '2022-08-27', '22:23:53', '192', 102, 25, 1, 'CT Scan L Pelvic Vein w H Osm Contrast, Unenh, Enhance');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (28, '2022-05-29', '09:20:05', '939', 54, 25, 3, 'Extirpation of Matter from Right Atrium, Perc Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (29, '2022-02-06', '03:52:49', '35', 65, 18, 2, 'Occlusion of L Inqnl Lymph with Extralum Dev, Open Approach');
insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (30, '2022-12-24', '13:45:17', '494', 45, 12, 2, 'Dilation of L Int Mamm Art with Intralum Dev, Open Approach');


insert into Trn_Src_Dec (VoucherId, TrnDate, TrnTime, Amount, SourceDep, DesDep, Branch_id, Trn_Desc) values (31, '2022-01-01', '04:57:45', '846', 87, 12, 4, 'Removal of Autologous Tissue Substitute from R Breast, Endo');

--insert Deposit
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(12,1,1,'2006-05-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(13,2,2,'2006-11-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(11,1,3,'2006-08-06',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(10,2,4,'2008-05-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(18,1,5,'2007-05-12',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(25,2,6,'2006-11-23',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(87,1,7,'2008-12-11',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(58,2,8,'2005-05-09',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(16,1,9,'2006-08-18',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(15,2,10,'2006-10-15',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(54,1,11,'2010-05-12',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(19,2,12,'2016-05-13',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(120,1,13,'2015-12-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(154,2,14,'2008-11-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(165,1,15,'2006-10-26',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(32,2,16,'2008-05-25',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(65,1,17,'2012-07-02',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(102,2,18,'2006-08-24',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(45,1,19,'2012-05-26',1)
insert into Deposit(Dep_ID,Dep_Type,CID,OpenDate,status_) values(90,1,20,'2015-11-16',1)

--Deposit_Type
insert into Deposit_Type(Dep_Type,Dep_Type_Desc) values (1,'type A')
insert into Deposit_Type(Dep_Type,Dep_Type_Desc) values (2,'type B')
--Deposit_Status
insert into Deposit_Status(status,status_Desc) values (1,'active acount')
insert into Deposit_Status(status,status_Desc) values (0,'closed acount')
insert into Deposit_Status(status,status_Desc) values (2,'blocked acount')

