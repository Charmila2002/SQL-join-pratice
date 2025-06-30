CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
City VARCHAR(50));

CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
OrderDate DATE,
CustomerID INT,
Amount DECIMAL(10,2),
FOREIGN KEY(CustomerID)
REFERENCES Customers(CustomerID));

INSERT INTO Customers VALUES
(1,'virat','banglore'),
(2,'rohit','mumbai'),
(3,'dhoni','chennai'),
(4,'gill','gujrat');

INSERT INTO Orders VALUES
(101,'2025-6-1',1,250.00),
(102,'2025-6-2',2,150.00),
(103,'2025-6-3',3,300.00),
(104,'2025-6-4',4,200.00);

SELECT Customers.CustomerName,
Orders.OrderID,Orders.Amount
FROM Customers
INNER JOIN Orders ON
Customers.CustomerID=Orders.CustomerID;

SELECT Customers.CustomerName,
Orders.OrderID,Orders.Amount
FROM Customers
LEFT JOIN Orders ON
Customers.CustomerID=Orders.CustomerID;


SELECT Customers.CustomerName,
Orders.OrderID,Orders.Amount
FROM Customers
RIGHT JOIN Orders ON
Customers.customerID=Orders.CustomerID;

SELECT *
FROM Customers
FULL OUTER JOIN Orders ON
Customers.CustomerID=Orders.CustomerID;