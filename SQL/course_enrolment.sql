USE sbd_tdb
GO

INSERT INTO [dbo].[CourseEnrolment]
           ([CourseId]
           ,[UserId]
           ,[EnrolmentDate]
           ,[ValidTo])
     VALUES
           (1, 1, '2017-02-01 11:59:00','2018-02-01 11:59:00'),
           (1, 2, '2018-02-01 11:59:00','2018-02-01 11:59:00'),
           (1, 3, '2019-02-01 11:59:00','2019-03-01 11:59:00'),
           (1, 4, '2017-02-01 11:59:00','2018-02-21 11:59:00')
GO