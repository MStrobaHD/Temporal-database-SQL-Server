USE tempodb
GO

INSERT INTO [dbo].[User]
           ([Firstname]
           ,[Lastname]
           ,[Username]
           ,[PhoneNumber]
           ,[TypeOfAccount]
		   ,[IsDisabled])
     VALUES
           ('Mateusz', 'Stroba', 'Mati', 566543345, 'Low',1),
           ('Pawel', 'Stroba', 'pablo', 512343345, 'Normal',1),
           ('Damian', 'Welenc', 'domingo', 562343345, 'High',1),
           ('Daniel', 'Zajkowski', 'zajek', 766543345, 'Normal',1),
           ('Filip', 'Zawadzki', 'zawinator', 226543345, 'Average',1)
GO


