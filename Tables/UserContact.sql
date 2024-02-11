USE BursaryManagement;
GO

CREATE TABLE [dbo].[UserContact]
(
  [UserContactID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Email] VARCHAR(100) NOT NULL UNIQUE
);
GO

