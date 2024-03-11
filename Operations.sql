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

-- List all minor passengers on a particular flight.
SELECT T1.Fname, T1.Lname 
FROM passenger T1, book T2, Flight T3
WHERE T1.nationality = T2.nationality 
    AND T1.passport_no = T2.passport_no 
    AND T2.FID = T3.FID
    AND T3.AID_origin = 'A1'
    AND T3.AID_destination = 'A2'
    AND T3.departure_time BETWEEN '10-march-2024' AND '16-march-2024'
    AND T3.arrival_time BETWEEN '10-march-2024' AND '16-march-2024';

-- Count number of empty seats on a flight
SELECT economy_class_capacity + first_class_capacity - (SELECT COUNT(FID)
 FROM Book
 WHERE FID = 'F2')
AS Total_number_of_seats
FROM Aircraft
WHERE FID = 'F2';
