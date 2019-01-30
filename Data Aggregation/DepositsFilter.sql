SELECT
	DepositGroup
	,SUM(DepositAmount) AS TotalDepositAmount
FROM WizzardDeposits
WHERE MagicWandCreator = 'Ollivander family'
GROUP BY DepositGroup
HAVING SUM(DepositAmount) < 150000
ORDER BY TotalDepositAmount DESC