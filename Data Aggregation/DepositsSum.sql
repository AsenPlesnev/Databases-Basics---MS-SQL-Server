SELECT
	DepositGroup
	,SUM(DepositAmount) AS TotalDepositAmount
FROM WizzardDeposits
GROUP BY DepositGroup
