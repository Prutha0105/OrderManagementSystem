
ALTER PROCEDURE [dbo].[AddCustomerinBulk] 
--@count int
AS
BEGIN
	SET NOCOUNT ON;
	DROP TABLE IF EXISTS #TempCustomer
	
	DECLARE @ROWCOUNT int=1
	CREATE TABLE #TempCustomer (customerId int ,CustomerName varchar(MAX))
	
	while @ROWCOUNT<=100
	BEGIN
		insert into #TempCustomer
		values (@ROWCOUNT,'Customer '+CAST(@ROWCOUNT as varchar))
	
		SET @ROWCOUNT=@ROWCOUNT+1
	END
	
	SELECT * FROM #TempCustomer
	

	insert into CustomerMaster
	select customerId , CustomerName from #TempCustomer
	
	
	--drop table #TempCustomer
END