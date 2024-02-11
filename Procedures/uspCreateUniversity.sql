USE BursaryManagement;
GO

CREATE PROCEDURE [dbo].[uspCreateUniversity]
  @UniversityName VARCHAR(50),
  @ApplicationMotivation TEXT,
  @StatusID INT = 1
AS
BEGIN TRY
  BEGIN TRANSACTION
    INSERT INTO [dbo].[University] (
      UniversityName
    ) VALUES (
      @UniversityName
    )
    DECLARE @UniversityID INT = SCOPE_IDENTITY()
    SELECT @UniversityID = IDENT_CURRENT('University')

    INSERT INTO [dbo].[UniversityApplication] (
      ApplicationMotivation,
      ApplicationDate,
      UniversityID,
      StatusID
    ) VALUES (
      @ApplicationMotivation,
      GETDATE(),
      @UniversityID,
      @StatusID
    )
  COMMIT TRANSACTION
END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION
  THROW
  PRINT 'Transaction failed! ' + error_message()
END CATCH
