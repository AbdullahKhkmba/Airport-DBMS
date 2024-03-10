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
