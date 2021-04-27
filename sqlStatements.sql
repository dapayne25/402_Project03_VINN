--Questions
--a. display all available rooms. if more than 5 rooms available-don't show how many rooms are left
--instead show how many rooms of that type are available

Select * FROM Arrangements.Room
Where Cleaned = 1;

--b. customer reserves one king room and 2 queen rooms

    INSERT INTO Arrangements.Reservation(CustomerId, RoomId, CheckInDate, CheckOutDate, RoomNum, Price, ActualCheckIn, ActualCheckOut)
    VALUES  (4, 10, '2021-05-20 10:00:00', '2021-05-30 11:30:00', 109, 699.9, GETDATE(), GETDATE()),
            (4, 20, '2021-05-20 10:00:00', '2021-05-30 11:30:00', 112, 599.9, GETDATE(), GETDATE()),
            (4, 21, '2021-05-20 10:00:00', '2021-05-30 11:30:00', 114, 599.9, GETDATE(), GETDATE())


SELECT * FROM Arrangements.Room AS R JOIN Arrangements.Reservation AS RE
ON R.RoomId = RE.RoomId;


--c
Select * From Arrangements.Reservation
Where ReservationId = 9;

--d
SELECT * FROM Sales.Manager;

--e
UPDATE Arrangements.Reservation
SET PRICE = PRICE + 40
WHERE ReservationId = 6;

--f
SELECT * FROM Arrangements.Room WHERE Room.Cleaned = 0;

--g
INSERT INTO Arrangements.HouseKeeper(EmpId, RoomId)
VALUES (1, 19),
(4, 19)

--h
DELETE FROM Arrangements.HouseKeeper
WHERE EmpId = 4 AND
RoomId = 19

--i
SELECT Re.ReservationId, Ro.RoomId, RoomNumber, RoomType, Cleaned 
FROM Arrangements.Room AS Ro LEFT JOIN Arrangements.Reservation AS Re ON Ro.RoomNumber = Re.RoomNum
WHERE Cleaned = 1 AND Re.ReservationId is null;

--j
INSERT INTO Arrangements.ThirdParty(CustomerId, ReservationId, TPName)
VALUES (5, 5, 'Hotwire');

--k
BEGIN TRANSACTION
    DELETE 
    FROM Sales.Employee 
    WHERE EmpId = 4

--L SHOW HOUSEKEEPER WHO CAME BACK TO WORK FOR VI
ROLLBACK TRANSACTION

--SELECT * 
--FROM Sales.WrkHist AS W JOIN Sales.Employee AS E
--ON W.EmpId = E.EmpId
--WHERE E.EmpId = 4;

--m 
SELECT HKid, R.RoomId, RoomNumber, RoomType, Cleaned
FROM Arrangements.Room AS R JOIN Arrangements.HouseKeeper AS H ON R.RoomId = H.RoomId;

--n
SELECT E.EmpId, HKId, FName, LName, RoomNumber
FROM Sales.Employee AS E JOIN Arrangements.HouseKeeper AS H ON E.EmpId = H.EmpId JOIN Arrangements.Room AS R ON H.RoomId = R.RoomId
WHERE H.RoomId = 11;

--o
SELECT ReservationId, CustomerId, Price, ROUND(Price*0.3, 2) AS DiscountPrice
FROM Arrangements.Reservation
WHERE ReservationId = 2;
