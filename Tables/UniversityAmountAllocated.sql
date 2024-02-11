USE BursaryManagement;
GO

CREATE TABLE [dbo].[UniversityAmountAllocated]
(
  [UniversityAmountAllocatedID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [AmountAllocated] MONEY NOT NULL DEFAULT 0,
  [FinancialYearID] INT NOT NULL,
  [UniversityID] INT NOT NULL,

  CONSTRAINT [FK_UniversityAmountAllocated_FinancialYear_FinancialYearID]
    FOREIGN KEY ([FinancialYearID])
    REFERENCES [dbo].[FinancialYear]([FinancialYearID]),

  CONSTRAINT [FK_UniversityAmountAllocated_University_UniversityID]
    FOREIGN KEY ([UniversityID])
    REFERENCES [dbo].[University]([UniversityID])
);
GO
