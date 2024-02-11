USE BursaryManagement;
GO

CREATE VIEW [dbo].[vUniversityDepartmentStudents]
  AS SELECT 
      u.FirstName, 
      u.LastName, 
      u.DateOfBirth, 
      uv.UniversityName,
      d.DepartName
    FROM
      [dbo].[User] u,
      [dbo].[University] uv,
      [dbo].[Department] d,
      [dbo].[UniversityDepartmentHODRel] udhl,
      [dbo].[StudentApplication] sa
    WHERE 
      udhl.UniversityDepartmentHODRelID = sa.UniversityDepartmentHODRelID  
GO

