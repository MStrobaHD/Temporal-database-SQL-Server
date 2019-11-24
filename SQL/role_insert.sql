USE sbd_tdb
GO

INSERT INTO [dbo].[Role]
           ([RoleName]
           ,[ValidPeriod])
     VALUES
           ('Administrator', 1),
           ('User',2),
           ('Student',3),
           ('Teacher',5)
GO

