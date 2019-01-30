SELECT
	DepartmentID,
	MIN(Salary) AS MinimumSalary
FROM Employees
WHERE YEAR(HireDate) >= 2000
GROUP BY DepartmentID
HAVING DepartmentID IN(2,5,7)