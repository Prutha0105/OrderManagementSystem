--creating trigger for item rate at time of item inserted

CREATE TRIGGER [dbo].[Itemratehistory1] ON [dbo].[ItemMaster]
After insert
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO Itemratehistory
  SELECT ItemId,Rate
    ,getdate(),'I'
  FROM inserted
END
GO