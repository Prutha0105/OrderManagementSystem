--TOP 5 ORDERed items
SELECT TOP 5 im.ItemName,SUM(od.ORDERQty) AS 'Total ORDER Qty'  FROM ORDERDetail od
Inner JOIN ItemMASter im ON od.ItemId=im.ItemId
GROUP BY im.ItemName
ORDER BY SUM(od.ORDERQty) DESC