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
		Values ('1','Billy', 'Bob'),

SELECT * FROM Sales.Manager;
