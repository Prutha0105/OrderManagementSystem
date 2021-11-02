--sales persON wise ORDER
SELECT TOP 5  sm.SalesPersONName,COUNT(om.ORDERId)  AS 'Total ORDER Qty',floor(SUM(od.Amount)) AS 'Total ORDER Amount' FROM ORDERMASter om
INNER JOIN SalesPersONMASter sm ON om.SalesPersONId=sm.SalesPersONId
LEFT JOIN ORDERDetail od ON om.ORDERId=od.ORDERId
GROUP BY sm.SalesPersONName
ORDER BY SUM(od.Amount) DESC
