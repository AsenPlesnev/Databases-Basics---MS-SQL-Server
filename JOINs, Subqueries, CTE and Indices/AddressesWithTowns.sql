SELECT TOP 50
	e.FirstName, 
	e.LastName, 
	t.[Name],
	a.AddressText
  FROM Employees AS e
  JOIN Addresses AS a ON a.AddressID = e.AddressID
  JOIN Towns AS t ON t.TownID = a.TownID
ORDER BY e.FirstName, e.LastName