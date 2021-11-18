
ALTER PROCEDURE [dbo].[uspBrandWiseOrder]

AS
BEGIN

		select * from (select im.ItemName,bm.BrandName,bm.BrandId from ItemMaster im
		inner join OrderDetail od on im.ItemId=od.ItemId
		left join OrderMaster om on od.OrderId=om.OrderId
		inner join BrandMaster bm on im.BrandId=bm.BrandId
		where bm.BrandId=1
		UNION
		select im.ItemName,bm.BrandName,bm.BrandId from ItemMaster im
		inner join OrderDetail od on im.ItemId=od.ItemId
		left join OrderMaster om on od.OrderId=om.OrderId
		inner join BrandMaster bm on im.BrandId=bm.BrandId
		where bm.BrandId=3) 
		x
		order by x.[brandname]

END