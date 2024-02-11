USE BursaryManagement;
GO

ALTER PROCEDURE [dbo].[uspCreateUser]
  @FirstName VARCHAR(50),
  @LastName VARCHAR(50),
  @DateOfBirth DATE,
  @Email VARCHAR(100),
  @RaceID INT,
  @GenderID INT,
  @UserRoleID INT
AS
BEGIN TRY
  BEGIN TRANSACTION
    INSERT INTO UserContact(
      Email
    ) VALUES (
      @Email
    )
    DECLARE @UserContactID INT = SCOPE_IDENTITY()
    SELECT @UserContactID = IDENT_CURRENT('UserContact')

    INSERT INTO [dbo].[User] (
      FirstName,
      LastName,
      DateOfBirth,
      UserContactID,
      RaceID,
      GenderID,
      UserRoleID
    ) VALUES (
      @FirstName,
      @LastName,
      @DateOfBirth,
      @UserContactID,
      @RaceID,
      @GenderID,
      @UserRoleID
    )
  COMMIT TRANSACTION
  PRINT 'Transaction completed'
END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION
  THROW
  PRINT 'Transaction failed: ' + error_message()
END CATCH
