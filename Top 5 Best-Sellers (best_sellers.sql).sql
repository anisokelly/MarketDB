
-- Top 5 Best-Sellers (best_sellers.sql)

SELECT p.Name, SUM(s.Quantity) AS TotalSold
FROM Sales s
JOIN Produce p ON s.ProduceID = p.ProduceID
GROUP BY p.Name
ORDER BY TotalSold DESC
LIMIT 5;
