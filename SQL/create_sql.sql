/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     15.06.2019 12:55:08                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CertificateAssignment') and o.name = 'FK_CERTIFIC_CERTIFICA_CERTIFIC')
alter table CertificateAssignment
   drop constraint FK_CERTIFIC_CERTIFICA_CERTIFIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CertificateAssignment') and o.name = 'FK_CERTIFIC_USER HAS _USER')
alter table CertificateAssignment
   drop constraint "FK_CERTIFIC_USER HAS _USER"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CourseEnrolment') and o.name = 'FK_COURSEEN_COURSE IS_COURSE')
alter table CourseEnrolment
   drop constraint "FK_COURSEEN_COURSE IS_COURSE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CourseEnrolment') and o.name = 'FK_COURSEEN_USER IS E_USER')
alter table CourseEnrolment
   drop constraint "FK_COURSEEN_USER IS E_USER"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Exam') and o.name = 'FK_EXAM_COURSE HA_COURSE')
alter table Exam
   drop constraint "FK_EXAM_COURSE HA_COURSE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ExamResult') and o.name = 'FK_EXAMRESU_EXAMRESUL_EXAM')
alter table ExamResult
   drop constraint FK_EXAMRESU_EXAMRESUL_EXAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ExamResult') and o.name = 'FK_EXAMRESU_USER HAS _USER')
alter table ExamResult
   drop constraint "FK_EXAMRESU_USER HAS _USER"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RoleAssignment') and o.name = 'FK_ROLEASSI_ROLE IS A_ROLE')
alter table RoleAssignment
   drop constraint "FK_ROLEASSI_ROLE IS A_ROLE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RoleAssignment') and o.name = 'FK_ROLEASSI_USER HAS _USER')
alter table RoleAssignment
   drop constraint "FK_ROLEASSI_USER HAS _USER"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Certificate')
            and   type = 'U')
   drop table Certificate
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CertificateAssignment')
            and   name  = 'User has assigned certificate_FK'
            and   indid > 0
            and   indid < 255)
   drop index CertificateAssignment."User has assigned certificate_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CertificateAssignment')
            and   name  = 'Certificate is assigned to user_FK'
            and   indid > 0
            and   indid < 255)
   drop index CertificateAssignment."Certificate is assigned to user_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CertificateAssignment')
            and   type = 'U')
   drop table CertificateAssignment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Course')
            and   type = 'U')
   drop table Course
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CourseEnrolment')
            and   name  = 'Course is enroled to user_FK'
            and   indid > 0
            and   indid < 255)
   drop index CourseEnrolment."Course is enroled to user_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CourseEnrolment')
            and   name  = 'User is enroled on course_FK'
            and   indid > 0
            and   indid < 255)
   drop index CourseEnrolment."User is enroled on course_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CourseEnrolment')
            and   type = 'U')
   drop table CourseEnrolment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Exam')
            and   name  = 'Course has an exams_FK'
            and   indid > 0
            and   indid < 255)
   drop index Exam."Course has an exams_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Exam')
            and   type = 'U')
   drop table Exam
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ExamResult')
            and   name  = 'ExamResult is added to User_FK'
            and   indid > 0
            and   indid < 255)
   drop index ExamResult."ExamResult is added to User_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ExamResult')
            and   name  = 'User has ExamResult_FK'
            and   indid > 0
            and   indid < 255)
   drop index ExamResult."User has ExamResult_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ExamResult')
            and   type = 'U')
   drop table ExamResult
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Role')
            and   type = 'U')
   drop table Role
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RoleAssignment')
            and   name  = 'Role is assigned to user_FK'
            and   indid > 0
            and   indid < 255)
   drop index RoleAssignment."Role is assigned to user_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RoleAssignment')
            and   name  = 'User has assigned role_FK'
            and   indid > 0
            and   indid < 255)
   drop index RoleAssignment."User has assigned role_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RoleAssignment')
            and   type = 'U')
   drop table RoleAssignment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"User"')
            and   type = 'U')
   drop table "User"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('User')
            and   name  = 'CIX_User_Username'
            and   indid > 0
            and   indid < 255)
   drop index Exam."CIX_User_Username"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('User')
            and   name  = 'UIX_User_FirstnamePhoneNumber'
            and   indid > 0
            and   indid < 255)
   drop index Exam."UIX_User_FirstnamePhoneNumber"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Course')
            and   name  = 'CIX_Course_CourseName'
            and   indid > 0
            and   indid < 255)
   drop index Exam."CIX_Course_Name"
go
/*==============================================================*/
/* Table: Certificate                                           */
/*==============================================================*/
create table Certificate (
   SerialNumber         int                  identity,
   CertificateName      varchar(50)          not null,
   ValidPeriod          int                  not null,
   constraint PK_CERTIFICATE primary key nonclustered (SerialNumber)
)
go

/*==============================================================*/
/* Table: CertificateAssignment Application-Time-Period-Table                                  */
/*==============================================================*/
create table CertificateAssignment (
   UserId               int                  not null,
   CASerialNumber       int                  not null,
   AssignmentDate       datetime2             GENERATED ALWAYS AS ROW START not null,
   ValidTo              datetime2             GENERATED ALWAYS AS ROW END not null,
   IsValid              bit                  null,
   Terms                text                 not null,
   PERIOD FOR SYSTEM_TIME (AssignmentDate, ValidTo),
   constraint PK_CERTIFICATEASSIGNMENT primary key (UserId, CASerialNumber)
)
WITH    
(   
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.CertificateAssignmentHistoria)   
);
go

/*==============================================================*/
/* Index: "Certificate is assigned to user_FK"                  */
/*==============================================================*/
create index "Certificate is assigned to user_FK" on CertificateAssignment (
CASerialNumber ASC
)
go

/*==============================================================*/
/* Index: "User has assigned certificate_FK"                    */
/*==============================================================*/
create index "User has assigned certificate_FK" on CertificateAssignment (
UserId ASC
)
go

/*==============================================================*/
/* Table: Course System Versioning Table                                                */
/*==============================================================*/
create table Course (
   Id                   int                   identity,
   CourseName           varchar(50)                                         not null,
   ActiveFrom           datetime2             GENERATED ALWAYS AS ROW START not null,
   ActiveTo             datetime2             GENERATED ALWAYS AS ROW END   not null,
   TargetGroup          varchar(50)                                         not null,
   IsValid           bit                  not null,
   PERIOD FOR SYSTEM_TIME (ActiveFrom, ActiveTo),
   constraint PK_COURSE primary key nonclustered (Id)
)
WITH    
(   
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.CourseHistoria)   
);
go

/*==============================================================*/
/* Table: CourseEnrolment                                       */
/*==============================================================*/
create table CourseEnrolment (
   CourseId             int                  null,
   UserId               int                  null,
   EnrolmentDate        datetime2            null,
   ValidTo              datetime2            null
)
go

/*==============================================================*/
/* Index: "User is enroled on course_FK"                        */
/*==============================================================*/
create index "User is enroled on course_FK" on CourseEnrolment (
UserId ASC
)
go

/*==============================================================*/
/* Index: "Course is enroled to user_FK"                        */
/*==============================================================*/
create index "Course is enroled to user_FK" on CourseEnrolment (
CourseId ASC
)
go

/*==============================================================*/
/* Table: Exam                                                  */
/*==============================================================*/
create table Exam (
   Id                   int                  identity,
   CourseId             int                  null,
   ExamName             varchar(50)          null,
   IsValid           bit                  not null,
   constraint PK_EXAM primary key nonclustered (Id)
)
go

/*==============================================================*/
/* Index: "Course has an exams_FK"                              */
/*==============================================================*/
create index "Course has an exams_FK" on Exam (
CourseId ASC
)
go

/*==============================================================*/
/* Table: ExamResult System Versioning Table                                             */
/*==============================================================*/
create table ExamResult (
   Id                   int                  identity,
   UserId               int                  not null,
   ExamId               int                  not null,
   Result               int                  null,
   Status             varchar(50)          null,
   ResultAddedAt        datetime2             GENERATED ALWAYS AS ROW START not null,
   ResultActiveTo       datetime2             GENERATED ALWAYS AS ROW END not null,
   PERIOD FOR SYSTEM_TIME (ResultAddedAt, ResultActiveTo),
   constraint PK_EXAMRESULT primary key (Id)
)
WITH    
(   
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ExamResulteHistoria)   
);
go

/*==============================================================*/
/* Index: "User has ExamResult_FK"                              */
/*==============================================================*/
create index "User has ExamResult_FK" on ExamResult (
UserId ASC
)
go

/*==============================================================*/
/* Index: "ExamResult is added to User_FK"                      */
/*==============================================================*/
create index "ExamResult is added to User_FK" on ExamResult (
ExamId ASC
)
go

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role (
   Id                   int                  identity,
   RoleName             varchar(30)          null,
   ValidPeriod          int                  null,
   constraint PK_ROLE primary key nonclustered (Id)
)
go

/*==============================================================*/
/* Table: RoleAssignment                                        */
/*==============================================================*/
create table RoleAssignment (
   UserId               int                  not null,
   RoleId               int                  not null,
   AssignmentDate       datetime2             GENERATED ALWAYS AS ROW START not null,
   ValidTo              datetime2             GENERATED ALWAYS AS ROW END not null,
   IsOutdated           bit                  null,
   Description          varchar(200)         null,
   PERIOD FOR SYSTEM_TIME (AssignmentDate, ValidTo),
   constraint PK_ROLEASSIGNMENT primary key (UserId, RoleId)
)
WITH    
(   
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.RoleAssignmentHistoria)   
);
go

/*==============================================================*/
/* Index: "User has assigned role_FK"                           */
/*==============================================================*/
create index "User has assigned role_FK" on RoleAssignment (
UserId ASC
)
go

/*==============================================================*/
/* Index: "Role is assigned to user_FK"                         */
/*==============================================================*/
create index "Role is assigned to user_FK" on RoleAssignment (
RoleId ASC
)
go

/*==============================================================*/
/* Table: "User"                                                */
/*==============================================================*/
create table "User" (
   Id                   int                  identity,
   Firstname            varchar(50)          null,
   Lastname             varchar(50)          null,
   CreatedAt            datetime2             GENERATED ALWAYS AS ROW START not null,
   ActiveTo             datetime2             GENERATED ALWAYS AS ROW END not null,
   Username             varchar(50)          null,
   PhoneNumber          int                  null,
   TypeOfAccount        varchar(30)          null,
   IsDisabled           bit                  null

   PERIOD FOR SYSTEM_TIME (CreatedAt, ActiveTo),
   constraint PK_USER primary key nonclustered (Id)
)WITH    
(   
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.UserHistoria)   
);
go

alter table CertificateAssignment
   add constraint FK_CERTIFIC_CERTIFICA_CERTIFIC foreign key (CASerialNumber)
      references Certificate (SerialNumber)
go

alter table CertificateAssignment
   add constraint "FK_CERTIFIC_USER HAS _USER" foreign key (UserId)
      references "User" (Id)
go

alter table CourseEnrolment
   add constraint "FK_COURSEEN_COURSE IS_COURSE" foreign key (CourseId)
      references Course (Id)
go

alter table CourseEnrolment
   add constraint "FK_COURSEEN_USER IS E_USER" foreign key (UserId)
      references "User" (Id)
go

alter table Exam
   add constraint "FK_EXAM_COURSE HA_COURSE" foreign key (CourseId)
      references Course (Id)
go

alter table ExamResult
   add constraint FK_EXAMRESU_EXAMRESUL_EXAM foreign key (ExamId)
      references Exam (Id)
go

alter table ExamResult
   add constraint "FK_EXAMRESU_USER HAS _USER" foreign key (UserId)
      references "User" (Id)
go

alter table RoleAssignment
   add constraint "FK_ROLEASSI_ROLE IS A_ROLE" foreign key (RoleId)
      references Role (Id)
go

alter table RoleAssignment
   add constraint "FK_ROLEASSI_USER HAS _USER" foreign key (UserId)
      references "User" (Id)
go

go
create clustered index CIX_Course_CourseName on Course(CourseName)
go

go
create clustered index CIX_User_Username on "User"(Username)
go

go
create unique index UIX_User_FirstnamePhoneNumber on "User"(Firstname, PhoneNumber)
go