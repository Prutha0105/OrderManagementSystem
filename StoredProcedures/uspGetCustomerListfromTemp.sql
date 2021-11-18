ALTER PROCEDURE [dbo].[uspGetCustomerListfromTemp]
AS
BEGIN
	SET NOCOUNT ON;
	CREATE TABLE #TempCustomer (customerId int,CustomerName varchar(MAX))
	
	
	insert into #TempCustomer
	SELECT customerId,CustomerName FROM CustomerMaster
	
	--SELECT CustomerName FROM CustomerMaster
	SELECT CustomerName FROM #TempCustomer

	drop table #TempCustomer
END