USE sbd_tdb

GO

INSERT INTO [dbo].[RoleAssignment]
           ([UserId]
           ,[RoleId]
           ,[Description])
     VALUES
           (1, 1, 'Entitle to manage system'),
           (1, 2, 'You have restricted permissions'),
           (1, 3, 'Entitle to learn from courses'),
           (1, 4, 'Entitle to teach and make tutorials')
GO