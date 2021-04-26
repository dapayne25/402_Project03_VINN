INSERT INTO Sales.Customer(Email, FName, LName, MInitial, HomeAddress, Phone)
		Values ('dapayne25@gmail.com', 'Damian', 'Payne', 'A', '124 Bourbon Ln', '(123) 456-7987' ),
				('nepayne1@gmail.com', 'Noah', 'Payne', 'E', '987 Plum Tree Rd', '(109) 876-5431' ),
				('drewpayne@gmail.com', 'Drew', 'Payne', 'S', '444 Cloud Street', '(246) 810-1214' ),
				('JonDoe90@gmail.com', 'Jon', 'Doe', 'Z', '369 Billy Bob Lane', '(369) 125-1821' ),
				('coach@gmail.com', 'Bob', 'Deer', 'X', '098 Numbers Rd', '(123) 999-8989' ),
				('skatepayne25@gmail.com', 'Tony', 'Williams', 'V', '456 Shamrock Ln', '(573) 259-9899' )

SELECT * FROM Sales.Customer;

INSERT INTO Sales.Account(CustomerId, UserName, UserPassword)
		Values (1, 'dapayne25', 'Asdf123!'),
		(2, 'nepayne17', 'Noah123!'),
		(3, 'Dspayne400', 'Enzo12020'),
		(4, 'JonDoexxx', 'Iliketo1')

SELECT * FROM Sales.Account;

INSERT INTO Sales.Manager(FName, LName)
		Values ('Billy', 'Bob')

SELECT * FROM Sales.Manager;

INSERT INTO Sales.CreditCard(ManagerId, AccountId, AcctNum)
		Values (1, 1, '2493-4097-8477-0312'),
		(1, 2, '9541-4269-7423-7410'),
		(1, 3, '7410-9510-7531-7896'),
		(1, 4, '4239-6218-7569-8477')

SELECT * FROM Sales.CreditCard;

INSERT INTO Sales.Receipt(CustomerId, ManagerId, Reminder)
		Values(1, 1, 'Your check in time is 09:30, Monday, April 26, 2021.'),
			(2, 1, 'Your room is being cleaned at 11:05, Wednesday, April 28, 2021.'),
			(3, 1, 'Your missing item investigation is being reviewd.'),
			(4, 1, 'Thanks for booking with Vacation Inn! See you soon.')

SELECT * FROM Sales.Receipt;

INSERT INTO Sales.Employee(FName, LName, JobTitle, DateHired, Salary, Specialty, WorkHistory)
		Values('Tom', 'Clean', 'HouseKeeper', '1-1-2021', '35,000', 'Cleaning', 'None'),
			('Billy', 'Office', 'Accounting', '1-2-2021', '55,000', 'Accounting', 'Yes'),
			('William', 'Manager', 'Office Manager', '1-3-2021', '65,000', 'Managing', 'Yes'),
			('Bob', 'Sweeper', 'HouseKeeper', '1-4-2021', '35,000', 'Cleaning', 'None')

SELECT * FROM Sales.Employee;

INSERT INTO Sales.EmpType(EmpId, TypeName)
		Values(1, 'House Keeper'),
			(2, 'Accounting'),
			(3, 'Office Manager'),
			(4, 'HouseKeeper')

SELECT * FROM Sales.EmpType;

INSERT INTO Sales.WrkHist(EmpId, NewHire)
		Values('4', 'FALSE'),
		('3', 'FALSE'),
		('2', 'TRUE'),
		('1', 'TRUE')
SELECT * FROM Sales.WrkHist;


INSERT INTO Arrangements.Room (RoomNumber, RoomType, Cleaned)
VALUES ( 201, 'Suite', 1),
( 202, 'Suite', 1),
( 203, 'Suite', 0),
( 204, 'Suite', 1),
( 205, 'Suite', 0),

(101, 'King', 1),
(103, 'King', 0),
(105, 'King', 1),
(107, 'King', 1),
(109, 'King', 1),
(111, 'King', 0),
(113, 'King', 1),
(115, 'King', 1),
(117, 'King', 0),

(102, 'Queen', 0),
(104, 'Queen', 1),
(106, 'Queen', 1),
(108, 'Queen', 0),
(110, 'Queen', 0),
(112, 'Queen', 1),
(114, 'Queen', 1),
(116, 'Queen', 1),
(118, 'Queen', 1)

SELECT * FROM Arrangements.Room;

INSERT INTO Arrangements.Reservation(CustomerId, RoomId, CheckInDate, CheckOutDate, RoomNum, Price, ActualCheckIn, ActualCheckOut)
VALUES (1, 23, '2021-02-14 07:00:00', '2021-02-22 11:30:00', 118, 419.93, '2021-02-14 07:10:08', '2021-02-22 11:25:00'),
(2, 12, '2021-03-14 14:00:00', '2021-03-19 09:30:00', 113, 349.95, '2021-03-14 14:10:28', '2021-03-19 09:15:00'),
(3, 2, '2021-06-06 12:00:00', '2021-06-13 12:00:00', 202, 349.93, '2021-06-06 12:01:58', '2021-06-13 11:55:56'),
(4, 13, '2021-08-14 07:00:00', '2021-08-17 10:30:00', 115, 179.97, '2021-08-14 06:59:08', '2021-08-17 10:15:48'),
(5, 21, '2021-07-01 08:45:00', '2021-07-09 12:00:00', 114, 479.92, '2021-07-01 08:45:58', '2021-07-09 12:02:30'),
(6, 1, '2021-05-14 07:00:00', '2021-05-22 11:30:00', 201, 449.91, '2021-05-14 07:10:08', '2021-05-22 11:27:51')

SELECT * FROM Arrangements.Reservation;

INSERT INTO Arrangements.ThirdParty(CustomerId, ReservationId, TPName)
VALUES (1, 1, 'Trivago'),
(3, 3, 'Hotwire'),
(6, 6, 'Air BnB'),
(4, 4, 'Kayak')

SELECT * FROM Arrangements.ThirdParty;


INSERT INTO Arrangements.HouseKeeper(EmpId, RoomId)
VALUES (1, 3),
(1, 5),
(1, 7),
(1, 11),
(4, 14),
(4, 15),
(4, 18),
(4, 19)

SELECT * FROM Arrangements.HouseKeeper;

INSERT INTO Arrangements.Report (EmpId, CustomerId, RoomId, MissingItem)
VALUES (3, 2, 12, 'hair dryer'),
(1, 4, 13, 'Black dress shirt'),
(3, 6, 1, 'Levi blue jeans')

SELECT * FROM Arrangements.Report;
