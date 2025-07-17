-- Frequent Buyers (frequent_buyers.sql)

SELECT b.BuyerName, COUNT(*) AS Purchases
FROM Sales s
JOIN Buyers b ON s.BuyerID = b.BuyerID
GROUP BY b.BuyerID
HAVING Purchases >= 3;