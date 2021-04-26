--Questions
--a. display all available rooms. if more than 5 rooms available-don't show how many rooms are left
--instead show how many rooms of that type are available

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

--f
--g
--h
--i
--j
--k

--L SHOW HOUSEKEEPER WHO CAME BACK TO WORK FOR VI
SELECT * 
FROM Sales.WrkHist AS W JOIN Sales.Employee AS E
ON W.EmpId = E.EmpId
WHERE E.EmpId = 4;