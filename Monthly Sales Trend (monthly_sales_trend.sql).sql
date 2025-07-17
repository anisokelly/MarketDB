-- Monthly Sales Trend (monthly_sales_trend.sql)

SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS Month, 
       SUM(s.Quantity * p.UnitPrice) AS Revenue
FROM Sales s
JOIN Produce p ON s.ProduceID = p.ProduceID
GROUP BY Month
ORDER BY Month;