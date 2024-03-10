/*
DROP TABLE Airport;
DROP TABLE Flight;
DROP TABLE Aircraft;
DROP TABLE Passenger;
DROP TABLE Book;
DROP TABLE phone_number;
*/

CREATE TABLE Airport(
    AID VARCHAR2(4) PRIMARY KEY,
    airport_name VARCHAR2(50) NOT NULL,
    country VARCHAR2(32) NOT NULL,
    city VARCHAR2(32) NOT NULL
);

-- change the attribute 'status' to 'fstatus' 
-- because status is a reseverd keyword by sql
CREATE TABLE Flight (
  FID VARCHAR2(20) PRIMARY KEY,
  departure_time DATE,
  arrival_time DATE,
  fstatus VARCHAR2(10),
  estimated_time NUMBER(4),
  AID_origin VARCHAR2(4) REFERENCES Airport(AID),
  AID_destination VARCHAR2(4) REFERENCES Airport(AID)
);

CREATE TABLE Aircraft (
  ArID VARCHAR2(12),
  FID VARCHAR2(20) REFERENCES Flight(FID),
  model_name VARCHAR2(32) NOT NULL,
  economy_class_capacity NUMBER(3) NOT NULL,
  first_class_capacity NUMBER(3) NOT NULL,
  screen VARCHAR2(1) NOT NULL CHECK (screen IN ('Y', 'N')),
  wifi VARCHAR2(1) NOT NULL CHECK (wifi IN ('Y', 'N')),
  PRIMARY KEY(ArID, FID)
);

CREATE TABLE Passenger (
  nationality VARCHAR2(20),
  passport_no VARCHAR2(20),
  Fname VARCHAR2(20) NOT NULL,
  Lname VARCHAR2(20) NOT NULL,
  age NUMBER(3) NOT NULL,
  gender VARCHAR2(1) NOT NULL,
  city VARCHAR2(15) NOT NULL,
  street VARCHAR2(15) NOT NULL,
  house_no VARCHAR2(15) NOT NULL,
  PRIMARY KEY (nationality, passport_no)
);

-- the problem here is that the froiegn key must reference a unique value
CREATE TABLE Book(
    nationality VARCHAR2(20) REFERENCES Passenger(nationality, passport_no),
    passport_no VARCHAR2(20) REFERENCES Passenger(passport_no),
    FID VARCHAR2(20) REFERENCES Flight(FID),
    price NUMBER(5, 3),
    fare_class VARCHAR2(1),
    seat_number VARCHAR2(4),
    PRIMARY KEY (nationality, passport_no, FID)
);

CREATE TABLE Phone_number (
  nationality VARCHAR2(20) PRIMARY KEY REFERENCES Passenger(nationality),
  passport_no VARCHAR2(20) PRIMARY KEY REFERENCES Passenger(passport_no),
  phone_number VARCHAR2(15) PRIMARY KEY
);



