USE sbd_tdb
GO

INSERT INTO [dbo].[Exam]
           ([CourseId]
           ,[ExamName],
		   [IsValid])
     VALUES
           (1, 'HistoryDate',1),
           (2, 'EnglishWords',1),
           (2, 'GermanyIdioms',1),
           (2, 'EnglishGrammar',1),
           (3, 'Java',1),
           (3, 'C#',1),
           (3, 'Pascal',1),
           (4, 'Linear',1),
           (4, 'Quadratic equations',1),
           (4, 'Exponential functions',1)
GO




USE [tempodb]

GO
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON

GO
CREATE TRIGGER [dbo].[DisableAddingExamToCourse]  
ON [dbo].[Course]
AFTER UPDATE   
AS  
IF 
(SELECT inserted.IsValid FROM inserted) = 0

BEGIN	

UPDATE Exam SET IsValid = 0	 
WHERE CourseId IN  
(SELECT inserted.Id FROM inserted)
UPDATE Course SET TargetGroup ='Disabled Course' 
WHERE Id IN  
(SELECT inserted.Id FROM inserted)

END

USE [sbd_tdb]
GO
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON

GO
CREATE TRIGGER [dbo].[SetStatusOfExam]  
ON [dbo].[ExamResult]
AFTER UPDATE   
AS  
IF 
(SELECT inserted.Result FROM inserted) > 2

BEGIN	

UPDATE ExamResult SET Status = 'Ocena Pozytywna'	 
WHERE Id IN  
(SELECT inserted.Id FROM inserted)
END
ELSE
BEGIN
UPDATE ExamResult SET Status = 'Ocena Negatywna'	 
WHERE Id IN  
(SELECT inserted.Id FROM inserted)
END