--creating trigger for item rate update


CREATE TRIGGER [dbo].[Itemratehistory2] ON [dbo].[ItemMaster]
FOR UPDATE 
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO itemratehistory
  SELECT ItemId,Rate
    ,getdate(),'U'
  FROM inserted
END
GO