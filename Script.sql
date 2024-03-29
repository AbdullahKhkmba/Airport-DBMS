/*
DROP TABLE Book;
DROP TABLE phone_number;
DROP TABLE Flight;
DROP TABLE Passenger; 
DROP TABLE Airport; 
DROP TABLE Aircraft;
*/

CREATE TABLE Airport(
    AID VARCHAR2(4) PRIMARY KEY,
    airport_name VARCHAR2(50) NOT NULL,
    country VARCHAR2(32) NOT NULL,
    city VARCHAR2(32) NOT NULL
);

CREATE TABLE Aircraft (
  ArID VARCHAR2(12) PRIMARY KEY,
  model_name VARCHAR2(32) NOT NULL,
  economy_class_capacity NUMBER(3) NOT NULL,
  first_class_capacity NUMBER(3) NOT NULL,
  screen VARCHAR2(1) NOT NULL CHECK (screen IN ('Y', 'N')),
  wifi VARCHAR2(1) NOT NULL CHECK (wifi IN ('Y', 'N'))
);

-- change the attribute 'status' to 'fstatus' 
-- because status is a reseverd keyword by sql
CREATE TABLE Flight (
  FID VARCHAR2(20) PRIMARY KEY,
  departure_time TIMESTAMP(0),
  arrival_time TIMESTAMP(0),
  fstatus VARCHAR2(10),    -- Scheduled, Departured, Arrived or Cancelled.    -- consider making it a single letter.
  estimated_time NUMBER(4),
  price NUMBER(5, 2),
  AID_origin VARCHAR2(4) REFERENCES Airport(AID),
  AID_destination VARCHAR2(4) REFERENCES Airport(AID),
  ArID VARCHAR2(12) REFERENCES Aircraft(ArID)
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

CREATE TABLE Book(
    nationality VARCHAR2(20),
    passport_no VARCHAR2(20),
    FID VARCHAR2(20) REFERENCES Flight(FID),
    fare_class VARCHAR2(1),
    seat_number VARCHAR2(4),
    PRIMARY KEY (nationality, passport_no, FID),
    FOREIGN KEY (nationality, passport_no) REFERENCES Passenger(nationality, passport_no)
);

CREATE TABLE Phone_number (
  nationality VARCHAR2(20),
  passport_no VARCHAR2(20),
  phone_number VARCHAR2(15),
  PRIMARY KEY (nationality, passport_no, phone_number),
  FOREIGN KEY (nationality, passport_no) REFERENCES Passenger(nationality, passport_no)
);



