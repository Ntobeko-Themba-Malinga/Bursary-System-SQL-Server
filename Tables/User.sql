USE BursaryManagement;
GO

CREATE TABLE [dbo].[User]
(
  [UserID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [FirstName] VARCHAR(50) NOT NULL,
  [LastName] VARCHAR(50) NOT NULL,
  [DateOfBirth] VARCHAR(50) NOT NULL,
  [UserContactID] INT NOT NULL,
  [UserRoleID] INT NOT NULL,
  [RaceID] INT NOT NULL,
  [GenderID] INT NOT NULL,

  CONSTRAINT [FK_User_UserContact_UserContactID]
    FOREIGN KEY ([UserContactID])
    REFERENCES [dbo].[UserContact]([UserContactID]),

  CONSTRAINT [FK_User_UserRole_UserRoleID]
    FOREIGN KEY ([UserRoleID])
    REFERENCES [dbo].[UserRole]([UserRoleID]),

  CONSTRAINT [FK_User_Race_RaceID]
    FOREIGN KEY ([RaceID])
    REFERENCES [dbo].[Race]([RaceID]),

  CONSTRAINT [FK_User_Gender_GenderID]
    FOREIGN KEY ([GenderID])
    REFERENCES [dbo].[Gender]([GenderID])
);
GO