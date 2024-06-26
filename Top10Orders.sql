
SELECT TOP 5 od.ORDERId,floor(SUM(od.Amount)) AS 'Total ORDER Amount'  FROM ORDERDetail od
INNER JOIN ORDERMASter om ON od.ORDERId=om.ORDERId
GROUP BY od.ORDERId
ORDER BY SUM(od.Amount) DESC

--TOP 5 ORDERs BY Qty

SELECT TOP 5 od.ORDERId,floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty'  FROM ORDERDetail od
INNER JOIN ORDERMASter om ON od.ORDERId=om.ORDERId
GROUP BY od.ORDERId
ORDER BY SUM(od.ORDERQty) DESC
