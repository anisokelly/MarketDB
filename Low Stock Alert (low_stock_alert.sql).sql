-- Low Stock Alert (low_stock_alert.sql)

SELECT Name, Stock
FROM Produce
WHERE Stock < 10;