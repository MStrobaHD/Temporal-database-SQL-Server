USE sbd_tdb
GO

INSERT INTO [dbo].[ExamResult]
           ([UserId]
           ,[ExamId]
           ,[Result])
     VALUES
           (1, 1, 2),
           (1, 2, 3),
           (1, 3, 4),
           (1, 4, 5),
           (1, 1, 3),
           (2, 2, 4),
           (3, 3, 6),
           (4, 4, 2),
           (1, 5, 3),
           (1, 6, 2)
GO


