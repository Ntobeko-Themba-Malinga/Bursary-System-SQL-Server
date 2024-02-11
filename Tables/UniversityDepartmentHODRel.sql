USE BursaryManagement;
GO

CREATE TABLE [dbo].[UniversityDepartmentHODRel]
(
  [UniversityDepartmentHODRelID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [UniversityID] INT NOT NULL,
  [DepartmentID] INT NOT NULL,
  [HeadOfDepartmentID] INT UNIQUE,

  CONSTRAINT [FK_UniversityDepartmentHODRel_University_UniversityID]
    FOREIGN KEY ([UniversityID])
    REFERENCES [dbo].[University]([UniversityID]),

  CONSTRAINT [FK_UniversityDepartmentHODRel_Department_DepartmentID]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Department]([DepartmentID]),

  CONSTRAINT [FK_UniversityDepartmentHODRel_User_HeadOfDepartmentID]
    FOREIGN KEY ([HeadOfDepartmentID])
    REFERENCES [dbo].[User]([UserID])
);
GO