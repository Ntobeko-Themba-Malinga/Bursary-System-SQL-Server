USE BursaryManagement;
GO


CREATE FUNCTION [dbo].[udfGetFinancialYear](@FinancialDate DATE)
  RETURNS INT
AS
BEGIN
  DECLARE @FinancialYearID INT
  SELECT @FinancialYearID = [FinancialYearID] FROM [dbo].[FinancialYear] WHERE YEAR([YEAR]) = YEAR(@FinancialDate)
  RETURN @FinancialYearID
END
GO


CREATE FUNCTION [dbo].[udfTotalAmountAllocatedForFinancialYear](@UniversityID INT, @FinancialYear DATE)
    RETURNS MONEY
AS
BEGIN
    DECLARE @TotalAmountAllocated MONEY = 0
    SELECT 
        @TotalAmountAllocated = @TotalAmountAllocated + ([AmountAllocated]) 
    FROM 
        UniversityAmountAllocated 
    WHERE 
        [UniversityID] != @UniversityID
        AND [FinancialYearID] = [dbo].[udfGetFinancialYear](@FinancialYear)
    RETURN @TotalAmountAllocated
END
GO

CREATE FUNCTION [dbo].[udfGetTotalAmountForFinancialYear](@FinancialYear Date)
  RETURNS MONEY
AS 
BEGIN
  DECLARE @TotalAmount MONEY = 0
  SELECT 
    @TotalAmount = TotalAmount 
  FROM 
    [dbo].[FinancialYear] 
  WHERE 
    YEAR([Year]) = YEAR(@FinancialYear)
  RETURN @TotalAmount
END
GO

ALTER TABLE [dbo].[UniversityAmountAllocated]
  ADD CONSTRAINT [CHK_UniversityAmountAllocated_AmountAllocated]
    CHECK ([dbo].[udfTotalAmountAllocatedForFinancialYear]([UniversityID], GETDATE()) + AmountAllocated <= [dbo].[udfGetTotalAmountForFinancialYear](GETDATE()))
GO
