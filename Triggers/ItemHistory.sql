--create trigger for item update history

CREATE TRIGGER ItemHistory ON ItemMaster
FOR UPDATE 
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO ItemMAsterHistory
  SELECT ItemId
    ,getdate()
  FROM inserted
END