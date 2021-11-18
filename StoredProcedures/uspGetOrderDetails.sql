ALTER PROCEDURE [dbo].[uspGetOrderDetails]
AS
BEGIN

	SET NOCOUNT ON;
	select i.ItemName from ItemMaster i
	 inner join OrderDetail od on i.ItemId=od.ItemId
	 inner join OrderMaster om on od.OrderId=om.OrderId
END	