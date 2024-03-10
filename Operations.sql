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
