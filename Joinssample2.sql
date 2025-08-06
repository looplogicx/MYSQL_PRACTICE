create database yolo;
use yolo;
CREATE TABLE Departs (
    DID INT PRIMARY KEY,
    DName VARCHAR(50)
);
INSERT INTO DepartS VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Sales');

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departs(DID)
);
INSERT INTO Employees VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 30),
(4, 'David', NULL);

CREATE TABLE Projects (
    PID INT PRIMARY KEY,
    PName VARCHAR(50),
    EmpID INT,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);
INSERT INTO Projects (PID, PName, EmpID) VALUES
(1001, 'Alpha', 1),
(1002, 'Beta', 2),
(1003, 'Gamma', 2),
(1004, 'Delta', 3);

-- TABLE CREATION DONE --

-- 1
SELECT E.EmpID, E.EName, D.DName
FROM Employees E
LEFT JOIN Departs D ON E.DeptID = D.DID;

-- 2
SELECT P.PID, E.EName, D.DName
FROM Employees E
LEFT JOIN Departs D ON E.DeptID = D.DID;

-- 3
SELECT P.PName, E.EName , D.DName
FROM Projects P
LEFT JOIN Employees E ON P.EmpID = E.EmpID
LEFT JOIN Departs D ON E.DeptID = D.DID;

-- 4
SELECT D.DName, COUNT(E.EmpID) AS EmployeeCount
FROM Departs D
LEFT JOIN Employees E ON D.DID = E.DeptID
GROUP BY D.DName;

-- 5
SELECT E.EmpID, E.EName, COUNT(P.PID) AS ProjectCount
FROM Employees E
JOIN Projects P ON E.EmpID = P.EmpID
GROUP BY E.EmpID, E.EName
HAVING COUNT(P.PID) > 1;
