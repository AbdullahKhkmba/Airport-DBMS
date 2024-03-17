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
    AND T3.departure_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM'
    AND T3.arrival_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM';


-- count the number of empty seats in first class of a flight using flight ID (here we count empty seats in flight with ID = F1).
-- We might want make this into a function to use it in checking in other commands.
SELECT first_class_capacity - (SELECT COUNT(*) FROM book WHERE FID = 'F1' AND fare_class = 'F') AS empty_seats FROM aircraft, flight WHERE FID = 'F1' AND flight.ArID = aircraft.ArID;

--List seat numbers of empty economy or first-class seats on a flight.
-- TODO

--List all flights from airport X to airport Y ordered by price, number of stops or estimated time (journeys are included even if there is no direct flight from X to Y).

-- checkpoint (lists all paths from the first origin 'A1' to the final destination 'A3' and shows the total price and orders
-- by the total price and checks that each flight has at least 1 hour gap between and at mostt 16 hour gap between
-- and checks that all the flights in the path are scheduled).
SELECT first.FID, second.FID, third.FID, first.price + NVL(second.price, 0) + NVL(third.price, 0) AS total_price
FROM flight first
LEFT JOIN flight second ON first.AID_destination = second.AID_origin AND first.AID_destination != 'A3'
	AND first.arrival_time + INTERVAL '1' HOUR <= second.departure_time
	AND second.departure_time - first.arrival_time <= INTERVAL '16' HOUR
	AND second.fstatus = 'Scheduled'
	--TODO add checking that number of empty seats is greater than zero using functions
LEFT JOIN flight third ON second.AID_destination = third.AID_origin AND second.AID_destination != 'A3'
	AND second.arrival_time + INTERVAL '1' HOUR <= third.departure_time
	AND third.departure_time - second.arrival_time <= INTERVAL '16' HOUR
	AND third.fstatus = 'Scheduled'
	--TODO add checking that number of empty seats is greater than zero using functions
WHERE first.AID_origin = 'A1' AND (first.AID_destination = 'A3' OR second.AID_destination = 'A3' OR third.AID_destination = 'A3')
	AND first.fstatus = 'Scheduled'
ORDER BY total_price;
/*
NVL stands for NULL value logic
syntax: NVL(expression1, expression2)
expression1: The column or expression to be evaluated.
expression2: The value to be returned if expression1 is NULL.
NVL checks if expression1 is NULL.
If expression1 is NULL, it returns the value specified in expression2.
If expression1 has a valid value, NVL simply returns that value itself.

The INTERVAL keyword is used to define a date and time literal.
syntax: INTERVAL 'value' unit(YEAR, HOUR, ..)
*/


--Book a flight for a passenger given the flightID and the seat number.
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
    AND departure_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM'
    AND arrival_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM';

-- Count number of flights an aircraft did in a given time interval or in general.
SELECT COUNT(FID)
FROM Flight
WHERE ArID = 'Ar1'
    AND departure_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM'
    AND arrival_time BETWEEN '10-march-2024 01:00:00 AM' AND '16-march-2024 11:59:00 PM';

-- list all flights with names of airports origin and destination and price and depature and arrival times.
SELECT t1.airport_name, t3.airport_name, t2.departure_time, t2.arrival_time, t2.price FROM airport t1, flight t2, airport t3 WHERE t2.AID_origin = t1.AID AND t2.AID_destination = t3.AID;
