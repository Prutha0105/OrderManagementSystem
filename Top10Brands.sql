--TOP 10 brand BY Amount
SELECT bm.BrandName,bm.BrandId ,floor(SUM(od.Amount)) AS 'Total ORDER Amount' FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN BrandMASter bm ON im.BrandId=bm.BrandId
GROUP BY bm.BrandName,bm.BrandId
ORDER BY SUM(od.Amount) DESC

--TOP 10 brand BY Qty
SELECT bm.BrandName,bm.BrandId ,floor(SUM(od.ORDERQty)) AS 'Total ORDER Qty' FROM ORDERDetail od
LEFT JOIN ItemMASter im ON od.ItemId=im.ItemId
LEFT JOIN BrandMASter bm ON im.BrandId=bm.BrandId
GROUP BY bm.BrandName,bm.BrandId
ORDER BY SUM(od.ORDERQty) DESC
