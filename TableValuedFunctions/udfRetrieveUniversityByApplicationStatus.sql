USE BursaryManagement;
GO

CREATE FUNCTION [dbo].[udfRetrieveUniversityByApplicationStatus](@ApplicationStatusID INT)
    RETURNS TABLE
AS
    RETURN SELECT 
            u.UniversityName, ua.ApplicationMotivation,ApplicationRejectionReason, ApplicationDate 
           FROM 
            [dbo].[University] u, [dbo].[UniversityApplication] ua
           WHERE
            ua.StatusID = @ApplicationStatusID
            AND u.UniversityID = ua.UniversityID
