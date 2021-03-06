SELECT 
	DepositGroup, 
	IsDepositExpired, 
	AVG(DepositInterest) AS AvarageInterest
FROM WizzardDeposits
WHERE YEAR(DepositStartDate) >= 1985
GROUP BY DepositGroup, IsDepositExpired
ORDER BY DepositGroup DESC, IsDepositExpired