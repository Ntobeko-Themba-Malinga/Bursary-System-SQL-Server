USE BursaryManagement;
GO

CREATE TABLE [dbo].[Department]
(
  [DepartmentID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [DepartmentName] VARCHAR(50) NOT NULL
);
GO
