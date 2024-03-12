-- List passengers on a particular flight.
SELECT T1.Fname, T1.Lname 
FROM passenger T1, book T2 
WHERE T1.nationality = T2.nationality 
    AND T1.passport_no = T2.passport_no 
    AND T2.FID = 'F1';

-- List all minor passengers on a particular flight.
SELECT T1.Fname, T1.Lname 
FROM passenger T1, book T2 
WHERE T1.nationality = T2.nationality 
    AND T1.passport_no = T2.passport_no 
    AND T2.FID = 'F1'
    AND T1.age < 18;

-- List passengers who traveled from airport X to airport Y on some time interval.
SELECT T1.Fname, T1.Lname 
FROM passenger T1, book T2, Flight T3
WHERE T1.nationality = T2.nationality 
    AND T1.passport_no = T2.passport_no 
    AND T2.FID = T3.FID
    AND T3.AID_origin = 'A1'
    AND T3.AID_destination = 'A2'
    AND T3.departure_time BETWEEN '10-march-2024' AND '16-march-2024'
    AND T3.arrival_time BETWEEN '10-march-2024' AND '16-march-2024';

--List seat numbers of empty economy or first-class seats on a flight.
-- TODO

--List all flights from airport X to airport Y ordered by price, number of stops or estimated time (journeys are included even if there is no direct flight from X to Y).
-- TODO

-- Count number of empty seats on a flight
SELECT economy_class_capacity + first_class_capacity - (SELECT COUNT(FID) FROM Book WHERE FID = 'F1') AS Number_of_empty_seats
FROM Aircraft WHERE ArID = (SElECT ArID from flight where FID = 'F1');

-- Listed flights might be filtered by the presence of Wi-Fi or any other feature.
SELECT T1.FID AS Flights_with_wifi
FROM Flight T1, Aircraft T2
WHERE T1.ArID = T2.ArID 
    AND T2.wifi = 'Y';

-- Count the number of flights that used airport X for landing or departure in a given time interval or in general.
SELECT COUNT(FID)
FROM Flight
WHERE (AID_origin = 'A1' OR AID_destination = 'A1')
    AND departure_time BETWEEN '10-march-2024' AND '16-march-2024'
    AND arrival_time BETWEEN '10-march-2024' AND '16-march-2024';

-- Count number of flights an aircraft did in a given time interval or in general.
SELECT COUNT(FID)
FROM Flight
WHERE ArID = 'Ar1'
    AND departure_time BETWEEN '10-march-2024' AND '20-march-2024'
    AND arrival_time BETWEEN '10-march-2024' AND '20-march-2024';
