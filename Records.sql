INSERT INTO Airport VALUES('A1', 'cairo internatinal airport', 'Egypt', 'Cairo');
INSERT INTO Airport VALUES('A2', 'J.F.K internatinal airport', 'USA', 'Washington');

INSERT INTO Flight VALUES('F1', '10-march-2024', '11-march-2024', 'Scheduled',400, 'A1', 'A2');
INSERT INTO Flight VALUES('F2', '12-march-2024', '13-march-2024', 'Scheduled',400, 'A2', 'A1');


INSERT INTO passenger VALUES('Egyption','A2002','Ahmed', 'Aly', 24, 'M', 'cairo', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('Egyption','A2003','mouhamed', 'taha', 24, 'M', 'Alex', 'Al-nozha', '2');
INSERT INTO passenger VALUES('Egyption','A2004','zahraa', 'osama', 24, 'F', 'Tanta', 'ay kalam', '30');
INSERT INTO passenger VALUES('Egyption','A2005','ibrahim', 'maged', 24, 'M', 'cairo', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('Egyption','A2006','salam', 'abdelrhmna', 10, 'F', 'Port saeed', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('American','A2007','john', 'mcarthy', 45, 'M', 'NewYork', 'manhaten', '2483');
INSERT INTO passenger VALUES('Astralian','A2008','Hugh', 'jackman', 39, 'M', 'Sydney', 'any where', '30');
INSERT INTO passenger VALUES('Algerian','A2009','Malak', 'Benbarka', 68, 'M', 'Algeria', 'al-dar', '40');

INSERT INTO Book VALUES('Egyption', 'A2002', 'F1', 50, 'F', '2A');
INSERT INTO Book VALUES('Egyption', 'A2003', 'F1', 50, 'F', '2B');
INSERT INTO Book VALUES('Egyption', 'A2004', 'F1', 50, 'E', '2C');
INSERT INTO Book VALUES('Egyption', 'A2005', 'F2', 50, 'E', '2A');
INSERT INTO Book VALUES('Egyption', 'A2006', 'F1', 50, 'F', '2P');
INSERT INTO Book VALUES('American', 'A2007', 'F2', 50, 'F', '2O');
INSERT INTO Book VALUES('Astralian', 'A2008', 'F1', 50, 'E', '2R');
INSERT INTO Book VALUES('Algerian', 'A2009', 'F2', 50, 'E', '2W');
