INSERT INTO Sales.Customer(Email, FName, LName, MInitial, HomeAddress, Phone)
		Values ('dapayne25@gmail.com', 'Damian', 'Payne', 'A', '124 Bourbon Ln', '(123) 456-7987' ),
				('nepayne1@gmail.com', 'Noah', 'Payne', 'E', '987 Plum Tree Rd', '(109) 876-5431' ),
				('drewpayne@gmail.com', 'Drew', 'Payne', 'S', '444 Cloud Street', '(246) 810-1214' ),
				('JonDoe90@gmail.com', 'Jon', 'Doe', 'Z', '369 Billy Bob Lane', '(369) 125-1821' ),
				('coach@gmail.com', 'Bob', 'Deer', 'X', '098 Numbers Rd', '(123) 999-8989' ),
				('skatepayne25@gmail.com', 'Tony', 'Williams', 'V', '456 Shamrock Ln', '(573) 259-9899' )

SELECT * FROM Sales.Customer;

INSERT INTO Sales.Account(UserName, UserPassword)
		Values ('dapayne25', 'Asdf123!'),
		('nepayne17', 'Noah123!'),
		('Dspayne400', 'Enzo12020'),
		('JonDoexxx', 'Iliketo1')

SELECT * FROM Sales.Account;

INSERT INTO Sales.Manager(ManagerId, FName, LName)
		Values ('1', 'Billy', 'Bob')

SELECT * FROM Sales.Manager;

--INSERT INTO Sales.CreditCard(ManagerId, AccountId, AcctNum)
--		Values ()

--SELECT * FROM Sales.CreditCard;

--INSERT INTO Sales.Receipt()
--		Values()

--SELECT * FROM Sales.Receipt;

INSERT INTO Sales.Employee(FName, LName, JobTitle, DateHired, Salary, Specialty, WorkHistory)
		Values('Tom', 'Clean', 'HouseKeeper', '1-1-2021', '35,000', 'Cleaning', 'None'),
			('Billy', 'Office', 'Accounting', '1-2-2021', '55,000', 'Accounting', 'Yes'),
			('William', 'Manager', 'Office Manager', '1-3-2021', '65,000', 'Managing', 'Yes'),
			('Bob', 'Sweeper', 'HouseKeeper', '1-4-2021', '35,000', 'Cleaning', 'None')

SELECT * FROM Sales.Employee;

INSERT INTO Sales.EmpType(EmpId, TypeName)
		Values('1', 'HouseKeeper'),
			('2', 'Accounting'),
			('3', 'Office Manager')

SELECT * FROM Sales.EmpType;

INSERT INTO Sales.WrkHist(EmpId, NewHire)
		Values('5', '0')

SELECT * FROM Sales.WrkHist;


