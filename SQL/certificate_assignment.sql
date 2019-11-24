USE [BazaTemporalna]
GO

INSERT INTO [dbo].[CertificateAssignment]
           ([UserId]
           ,[CASerialNumber]
           ,[Terms])
     VALUES
           (1, 1, 'Only for private usage'),
           (1, 2, 'Only for home usage'),
           (2, 1, 'Only for private usage'),
           (3, 1, 'Only for home usage'),
GO
