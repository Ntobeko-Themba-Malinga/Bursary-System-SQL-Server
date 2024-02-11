USE BursaryManagement;
GO

CREATE TABLE [dbo].[Status]
(
  [StatusID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Status] VARCHAR(50) NOT NULL
);
GO
