-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT FirstName, ReservationID, DATE 
FROM Customers
JOIN Reservations USING(CustomerID)
WHERE FirstName = 'Norby'
AND Date > '2022-07-24';

DELETE FROM Reservations
WHERE ReservationID = 2000;

SELECT FirstName, ReservationID, DATE 
FROM Customers
JOIN Reservations USING(CustomerID)
WHERE FirstName = 'Norby'
AND Date > '2022-07-24';