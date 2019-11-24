CREATE VIEW Roles
AS

SELECT distinct u.Firstname, u.Lastname,u.CreatedAt, u.ActiveTo, r.RoleName , ra.AssignmentDate, ra.ValidTo 
FROM ("User" u 
INNER JOIN RoleAssignment ra 
ON u.Id = ra.UserId
INNER JOIN Role r 
ON ra.RoleId = r.Id)

CREATE VIEW Certificates
AS

SELECT  u.Firstname, u.Lastname,u.CreatedAt, u.ActiveTo, c.CertificateName , ca.AssignmentDate, ca.ValidTo, ca.Terms 
FROM ("User" u 
INNER JOIN CertificateAssignment ca 
ON u.Id = ca.UserId
INNER JOIN Certificate c 
ON ca.CASerialNumber = c.SerialNumber)

CREATE VIEW CoursesExams
AS

SELECT  c.CourseName, c.TargetGroup, c.ActiveFrom, c.ActiveTo, e.ExamName, er.Result, er.Status, er.ResultAddedAt 
FROM (Course c 
INNER JOIN Exam e 
ON c.Id = e.CourseId
INNER JOIN ExamResult er 
ON er.ExamId = er.ExamId)

SELECT * from Roles
SELECT * from Roles  FOR SYSTEM_TIME ALL
  SELECT * from Certificates FOR SYSTEM_TIME ALL
  ORDER BY CreatedAt
  SELECT * from Certificates