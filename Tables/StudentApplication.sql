USE BursaryManagement;
GO

CREATE TABLE [dbo].[StudentApplication]
(
  [StudentApplicationID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [ApplicationMotivation] TEXT NOT NULL,
  [ApplicationRejectionReason] TEXT NOT NULL DEFAULT '',
  [ApplicationAmount] MONEY NOT NULL,
  [AverageMark] INT NOT NULL,
  [ApplicationDate] DATE NOT NULL,
  [StudentID] INT NOT NULL,
  [UniversityDepartmentHODRelID] INT NOT NULL,
  [StatusID] INT NOT NULL DEFAULT 1,

  CONSTRAINT [UNQ_StudentApplication_ApplicationDate_StudentID]
    UNIQUE (ApplicationDate, StudentID),

  CONSTRAINT [FK_StudentApplication_User_StudentID]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[User]([UserID]),

  CONSTRAINT [FK_StudentApplication_UniversityDepartmentRel_UniversityDepartmentHODRelID]
    FOREIGN KEY ([UniversityDepartmentHODRelID])
    REFERENCES [dbo].[UniversityDepartmentHODRel]([UniversityDepartmentHODRelID])
);
GO

-- Check constraint if User is student
