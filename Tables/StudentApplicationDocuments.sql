USE BursaryManagement;
GO

CREATE TABLE [dbo].[StudentApplicationDocuments]
(
  [StudentApplicationDocuments] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [IdCopy] VARBINARY(MAX) NOT NULL,
  [Transcript] VARBINARY(MAX) NOT NULL,
  [CurriculumVitae] VARBINARY(MAX) NOT NULL,
  [UserID] INT NOT NULL,

  CONSTRAINT [FK_StudentApplicationDocuments_User_UserID]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[User]([UserID])
);
GO