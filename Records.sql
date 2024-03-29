-- Insert values in Airport table
INSERT INTO Airport VALUES('A1', 'cairo internatinal airport', 'Egypt', 'Cairo');
INSERT INTO Airport VALUES('A2', 'J.F.K internatinal airport', 'USA', 'Washington');
INSERT INTO Airport VALUES('A3', 'Alaska internatinal airport', 'Alaska', 'Alaska');
INSERT INTO Airport VALUES('A4', 'Bejing internatinal airport', 'China', 'Bejing');


-- Insert values in Aircraft table
INSERT INTO Aircraft VALUES('Ar1', 'Boieng 777', 200, 50, 'Y', 'Y');
INSERT INTO Aircraft VALUES('Ar2', 'Airbus 123', 100, 25, 'N', 'N');
INSERT INTO Aircraft VALUES('Ar3', 'Boieng 100', 150, 40, 'Y', 'N');
INSERT INTO Aircraft VALUES('Ar4', 'Boieng 333', 200, 20, 'Y', 'Y');

-- Insert values in Flight table
INSERT INTO Flight VALUES('F1', '10-march-2024 03:20:50 AM', '11-march-2024 11:20:50 AM', 'Scheduled',400, 50, 'A1', 'A2', 'Ar1');
INSERT INTO Flight VALUES('F2', '12-march-2024 08:20:50 PM', '11-march-2024 12:20:50 AM', 'Scheduled',400, 100, 'A2', 'A1', 'Ar2');
INSERT INTO Flight VALUES('F3', '15-march-2024 09:20:50 PM', '16-march-2024 04:20:50 PM', 'Scheduled',400, 150, 'A1', 'A2', 'Ar3');
INSERT INTO Flight VALUES('F4', '19-march-2024 05:20:50 PM', '20-march-2024 01:20:50 AM', 'Scheduled',90, 80, 'A1', 'A2', 'Ar1');
INSERT INTO Flight VALUES('F5', '20-march-2024 05:20:50 PM', '21-march-2024 01:20:50 AM', 'Scheduled',90, 80, 'A2', 'A3', 'Ar3');
INSERT INTO Flight VALUES('F6', '22-march-2024 05:20:50 PM', '23-march-2024 01:20:50 AM', 'Scheduled',90, 80, 'A3', 'A4', 'Ar4');


-- Insert values in Passenger table
INSERT INTO passenger VALUES('Egyption','A2002','Ahmed', 'Aly', 24, 'M', 'cairo', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('Egyption','A2003','Mouhamed', 'Taha', 24, 'M', 'Alex', 'Al-nozha', '2');
INSERT INTO passenger VALUES('Egyption','A2004','Zahraa', 'Osama', 24, 'F', 'Tanta', 'ay kalam', '30');
INSERT INTO passenger VALUES('Egyption','A2005','Ibrahim', 'Maged', 24, 'M', 'cairo', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('Egyption','A2006','salama', 'Abdelrhman', 10, 'F', 'Port saeed', 'Abbas al-akad', '40');
INSERT INTO passenger VALUES('American','A2007','John', 'Mcarthy', 45, 'M', 'NewYork', 'manhaten', '2483');
INSERT INTO passenger VALUES('Astralian','A2008','Hugh', 'Jackman', 39, 'M', 'Sydney', 'any where', '30');
INSERT INTO passenger VALUES('Algerian','A2009','Malak', 'Benbarka', 68, 'M', 'Algeria', 'al-dar', '40');
INSERT INTO passenger VALUES('Egyption','A2010','Mouhamed', 'Atef', 40, 'M', 'Egypt', 'cairo', '30');

-- Insert values in Book table
INSERT INTO Book VALUES('Egyption', 'A2002', 'F1', 'F', '2A');
INSERT INTO Book VALUES('Egyption', 'A2003', 'F1', 'F', '2B');
INSERT INTO Book VALUES('Egyption', 'A2004', 'F1', 'E', '2C');
INSERT INTO Book VALUES('Egyption', 'A2005', 'F2', 'E', '2A');
INSERT INTO Book VALUES('Egyption', 'A2006', 'F1', 'F', '2P');
INSERT INTO Book VALUES('American', 'A2007', 'F2', 'F', '2O');
INSERT INTO Book VALUES('Astralian', 'A2008', 'F1', 'E', '2R');
INSERT INTO Book VALUES('Algerian', 'A2009', 'F2', 'E', '2W');
INSERT INTO Book VALUES('Egyption', 'A2010', 'F3', 'E', '2T');

