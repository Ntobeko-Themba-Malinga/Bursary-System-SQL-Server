USE BursaryManagement;
GO

CREATE TABLE [dbo].[FinancialYear]
(
  [FinancialYearID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Year] DATE NOT NULL,
  [TotalAmount] MONEY NOT NULL,
  [StudentCapAmount] MONEY NOT NULL
);
GO