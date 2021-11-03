--TOP 5 customers BY no of Qty
SELECT TOP 5 cm.CustomerId,cm.CustomerName,COUNT(od.ORDERQty) AS 'Total ORDER Qty' FROM ORDERMASter om
INNER JOIN CustomerMASter cm ON om.CustomerId=cm.CustomerId
LEFT JOIN ORDERDetail od ON om.ORDERId=od.ORDERId
GROUP BY cm.CustomerId,cm.CustomerName
ORDER BY COUNT(od.ORDERQty) DESC

--TOP 5 customers BY Amount
SELECT TOP 5 cm.CustomerId,cm.CustomerName,floor(SUM(od.Amount)) AS 'Total ORDER Amount' FROM ORDERMASter om
INNER JOIN CustomerMASter cm ON om.CustomerId=cm.CustomerId
LEFT JOIN ORDERDetail od ON om.ORDERId=od.ORDERId
GROUP BY cm.CustomerId,cm.CustomerName
ORDER BY SUM(od.Amount) DESC
