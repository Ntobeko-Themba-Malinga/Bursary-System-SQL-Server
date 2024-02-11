USE BursaryManagement;
GO

-- Status Table
INSERT INTO [dbo].[Status] ([Status])
VALUES ('Pending'),
       ('In Review'),
       ('Approved');
GO


-- Gender Table
INSERT INTO [dbo].[Gender] ([Gender])
VALUES ('Male'),
       ('Female'),
       ('Other')
GO


-- Race Table
INSERT INTO [dbo].[Race] ([Race])
VALUES ('Black'),
       ('Coloured'),
       ('Indian');
GO


-- UserRole Table
INSERT INTO [dbo].[UserRole] ([Role])
VALUES ('Admin'),
       ('HOD'),
       ('Student');
GO


-- Department Table
INSERT INTO [dbo].[Department] ([DepartmentName])
VALUES ('Computer Science'),
       ('Computer Engineering')


-- FinancialYear Table
INSERT INTO [dbo].[FinancialYear] ([Year], [TotalAmount], [StudentCapAmount])
VALUES ('2024-01-01', 6000000, 100000),
       ('2023-01-01', 5000000, 100000),
       ('2022-01-01', 4000000, 110000),
       ('2021-01-01', 3000000, 120000);
GO
    
-- University & UniversityApplication Table
EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of KwaZulu-Natal',
  @ApplicationMotivation = "Testing",
  @StatusID = 3
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of Free State',
  @ApplicationMotivation = "Testing",
  @StatusID = 3
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of Cape Town',
  @ApplicationMotivation = "Testing",
  @StatusID = 3
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of South Africa',
  @ApplicationMotivation = "Testing",
  @StatusID = 1
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of Johannesburg',
  @ApplicationMotivation = "Testing",
  @StatusID = 1
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of Wits',
  @ApplicationMotivation = "Testing",
  @StatusID = 3
GO

EXEC [dbo].[uspCreateUniversity]
  @UniversityName = 'Univesity Of Pretoria',
  @ApplicationMotivation = "Testing",
  @StatusID = 3
GO

-- UniversityAmountAllocated Table
INSERT INTO [dbo].[UniversityAmountAllocated] ([AmountAllocated], [FinancialYearID], [UniversityID])
VALUES (2000000, 1, 1),
       (3000000, 1, 2),
       (3000000, 1, 3)
GO

-- User Table
EXEC [dbo].[uspCreateUser]
  @FirstName = 'One',
  @LastName = 'Admin',
  @DateOfBirth = '2000-01-01',
  @Email = 'admin2@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 1
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'Two',
  @LastName = 'HOD',
  @DateOfBirth = '2000-01-01',
  @Email = 'hod2@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 2
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'Three',
  @LastName = 'HOD',
  @DateOfBirth = '2000-01-01',
  @Email = 'hod3@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 2
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'Four',
  @LastName = 'HOD',
  @DateOfBirth = '2000-01-01',
  @Email = 'hod4@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 2
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'SIX',
  @LastName = 'HOD',
  @DateOfBirth = '2000-01-01',
  @Email = 'hod5@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 2
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'One',
  @LastName = 'Student',
  @DateOfBirth = '2000-01-01',
  @Email = 'student2@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 3
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'Two',
  @LastName = 'Student',
  @DateOfBirth = '2000-01-01',
  @Email = 'student3@email.com',
  @RaceID = 1,
  @GenderID = 2,
  @UserRoleID = 3
GO

EXEC [dbo].[uspCreateUser]
  @FirstName = 'Three',
  @LastName = 'Student',
  @DateOfBirth = '2000-01-01',
  @Email = 'student4@email.com',
  @RaceID = 1,
  @GenderID = 1,
  @UserRoleID = 3
GO

-- UniversityDepartmentHODRel Table
INSERT INTO [dbo].[UniversityDepartmentHODRel] (
    [UniversityID],
    [DepartmentID],
    [HeadOfDepartmentID]
) VALUES (1, 1, 2),
         (2, 1, 3),
         (3, 2, 4),
         (3, 2, 5)
GO

-- StudentApplication Table
INSERT INTO [dbo].[StudentApplication] (
    [ApplicationMotivation],
    [ApplicationAmount],
    [AverageMark],
    [ApplicationDate],
    [StudentID],
    [UniversityDepartmentHODRelID]
) VALUES ('Testing', 10000, 70, GETDATE(), 1, 8),
         ('Testing', 10000, 70, GETDATE(), 2, 7),
         ('Testing', 10000, 70, GETDATE(), 2, 6)