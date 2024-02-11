USE BursaryManagement;
GO

CREATE TABLE [dbo].[Gender]
(
  [GenderID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Gender] VARCHAR(20) NOT NULL
);
GO
