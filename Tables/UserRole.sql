USE BursaryManagement;
GO

CREATE TABLE [dbo].[UserRole]
(
  [UserRoleID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Role] VARCHAR(20) NOT NULL
);
GO