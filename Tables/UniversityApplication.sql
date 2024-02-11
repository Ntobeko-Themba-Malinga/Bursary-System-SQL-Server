USE BursaryManagement;
GO

CREATE TABLE [dbo].[UniversityApplication]
(
  [UniversityApplicationID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [ApplicationMotivation] TEXT NOT NULL,
  [ApplicationRejectionReason] TEXT NOT NULL DEFAULT '',
  [ApplicationDate] DATE NOT NULL,
  [UniversityID] INT NOT NULL,
  [StatusID] INT NOT NULL DEFAULT 1,

  CONSTRAINT [FK_UniversityApplication_University_UniversityID]
    FOREIGN KEY ([UniversityID])
    REFERENCES [dbo].[University]([UniversityID]),

  CONSTRAINT [FK_UniversityApplication_Status_StatusID]
    FOREIGN KEY ([StatusID])
    REFERENCES [dbo].[Status]([StatusID])
);
GO
