USE BursaryManagement;
GO

CREATE FUNCTION [dbo].[udfStudentApplicationCapAmountForYear]()
    RETURNS INT
AS
BEGIN
    DECLARE @CapAmount MONEY = 0
    SELECT @CapAmount = [StudentCapAmount] FROM [dbo].[FinancialYear] WHERE Year = GETDATE() --FIX
    RETURN @CapAmount
END
GO

ALTER TABLE [dbo].[StudentApplication]
    ADD CONSTRAINT [CHK_StudentApplication_ApplicationAmount]
        CHECK ([ApplicationAmount] <= [dbo].[udfStudentApplicationCapAmountForYear]())
GO
