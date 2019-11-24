USE sbd_tdb
GO

INSERT INTO [dbo].[Course]
           ([CourseName],
			[TargetGroup],
			[IsValid])
     VALUES
           ('History', 'Primary School',1),
           ('Language', 'High School',1),
           ('IT', 'Studies',1),
           ('Math', 'Primary School',1)
GO

