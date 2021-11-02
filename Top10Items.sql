--TOP 10 items BY Qty

SELECT TOP 10 im.ItemId, im.ItemName, Floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty'  FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
GROUP BY im.ItemId, im.ItemName
ORDER BY SUM(od.ORDERQty) DESC

--TOP 10 itmes BY Amount
SELECT TOP 10 im.ItemId, im.ItemName,floor(SUM(od.Amount))  AS 'Total ORDER Amount' FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
GROUP BY im.ItemId, im.ItemName,od.Amount 
ORDER BY SUM(od.Amount) DESC

--SELECT TOP 10 im.ItemId, im.ItemName,(od.Amount) FROM ORDERDetail od
--LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
--GROUP BY im.ItemId, im.ItemName,od.Amount 
--ORDER BY SUM(od.Amount) DESC

--TOP 10 items BY brand and Qty

SELECT TOP 10 bm.BrandName,im.ItemName ,Floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty' FROM ORDERDetail od
INNER JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN BrandMASter bm ON im.BrandId=bm.BrandId
GROUP BY bm.BrandName,im.ItemName
ORDER BY SUM(od.ORDERQty) DESC

--TOP 10 items BY brand and Amount
SELECT TOP 10 bm.BrandName,im.ItemName ,floor(SUM(od.Amount)) AS 'Total ORDER Amount' FROM ORDERDetail od
INNER JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN BrandMASter bm ON im.BrandId=bm.BrandId
GROUP BY bm.BrandName,im.ItemName
ORDER BY SUM(od.Amount) DESC
