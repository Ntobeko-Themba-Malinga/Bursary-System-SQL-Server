USE BursaryManagement;
GO

CREATE FUNCTION udfIsUniversityApproved(@UniversityID INT)
    RETURNS INT
AS
BEGIN
    DECLARE @UniversityApplicationStatus VARCHAR(50)
    SELECT 
        @UniversityApplicationStatus = ([StatusID]) 
    FROM 
        [dbo].[UniversityApplication]
    WHERE
        [UniversityID] = @UniversityID
    RETURN @UniversityApplicationStatus
END
GO

-- UniversityApplicationStatus = 3 means 'Approved'
ALTER TABLE [dbo].[UniversityAmountAllocated]
  ADD CONSTRAINT [CHK_UniversityAmountAllocated_UniversityID]
    CHECK ([dbo].[udfIsUniversityApproved]([UniversityID]) = 3)
GO