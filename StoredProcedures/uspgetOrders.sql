﻿--STORE PROCEDURE TO RETIEVE ALL ORDERS

CREATE PROCEDURE uspgetorders
AS
BEGIN

	SET NOCOUNT ON;
	SELECT * FROM ORDERMASter

END
GO

--EXEC [dbo].[uspgetorders]