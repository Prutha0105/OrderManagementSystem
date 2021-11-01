
--TOP 10 item BY category and Amount

SELECT TOP 5 cm.CategoryName,im.ItemName,Floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty' FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN CategoryMASter cm ON im.CategoryId=cm.CategoryId
GROUP BY cm.CategoryName,im.ItemName
ORDER BY SUM(od.ORDERQty) DESC

--TOP 10 item BY category and Amount

SELECT TOP 5 cm.CategoryName,im.ItemName,Floor(SUM(od.Amount)) AS 'Total ORDER Amount' FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN CategoryMASter cm ON im.CategoryId=cm.CategoryId
GROUP BY cm.CategoryName,im.ItemName
ORDER BY SUM(od.Amount) DESC


--TOP 5 category BY ORDER amount
SELECT TOP 5 cm.CategoryName,Floor(SUM(od.Amount)) AS 'Total ORDER Amount', im.CategoryId FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN CategoryMASter cm ON im.CategoryId=cm.CategoryId
GROUP BY cm.CategoryName ,im.CategoryId 
ORDER BY SUM(od.Amount) DESC

--TOP 5 category BY ORDER qty
SELECT TOP 5 cm.CategoryName,Floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty', im.CategoryId FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN CategoryMASter cm ON im.CategoryId=cm.CategoryId
GROUP BY cm.CategoryName ,im.CategoryId 
ORDER BY SUM(od.ORDERQty) DESC
