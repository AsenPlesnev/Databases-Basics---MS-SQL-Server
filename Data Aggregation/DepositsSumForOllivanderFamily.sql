SELECT
	DepositGroup
	,SUM(DepositAmount) AS TotalDepositAmount
FROM WizzardDeposits
WHERE MagicWandCreator = 'Ollivander family'
GROUP BY DepositGroup
