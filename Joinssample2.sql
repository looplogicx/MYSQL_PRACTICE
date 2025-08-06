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


-- now explanation --

🧑‍💼 Employees
EmpID	Name	DepartmentID
1	    Alice	     10
2	    Bob	         20
3	    Charlie	     30
4	    David	     NULL

👀 Each employee has a DepartmentID (except poor David who’s just... wandering 💀)

🏢 Departments
DepartmentID	DepartmentName
10                	HR
20                	IT
30                	Sales

This is like the office list — each department has an ID.

🛠 Projects
ProjectID	ProjectName	EmpID
1001	Alpha	1
1002	Beta	2
1003	Gamma	2
1004	Delta	3

This one says: “Which employee is working on which project?”

Now, let’s decode each question 🧠💡:

🔍 1. List all Employees with their Department Names
💬 “Show me every employee, and tell me which department they belong to.”

👉 We take the Employees table and match the DepartmentID with the Departments table to get the name (HR, IT, Sales...).

Even David (who has no dept) should show up — so we use LEFT JOIN.

⚙️ 2. Show project name, employee name, and department name for each valid project
💬 “For every project that has a known employee and department, show the projects name, who iss working on it, and their department.”

We join:

Projects → to get the ProjectName

Employees → to get the Name

Departments → to get the DepartmentName

But we only want the ones that are valid — meaning all the links work. So we use JOIN (not LEFT JOIN).

🌍 3. Show all projects and the employee and department names if they exist
💬 “Even if there’s no employee or department info for a project, show the project anyway.”

We start with Projects and use LEFT JOIN on Employees and Departments.
This shows everything, even half-missing stuff.

📊 4. Show the number of employees working in each department
💬 “How many people are in each department?”

We count how many employees are linked to each department.

Like:

HR → 1 employee

IT → 1 employee

Sales → 1 employee
(And David doesn’t count cuz he’s not linked to anything 💅)

🔁 5. List employees who are working on more than one project
💬 “Tell me which employees are working on multiple projects — like busy bees 🐝”

From Projects, we count how many times each EmpID appears.

Example:

Bob has two projects (Beta, Gamma) → he’s in this list

Others only have one → not shown

