CREATE PROCEDURE [dbo].[spCompany_Requirement]
AS
BEGIN
    BEGIN TRY
select * from Company_Requirement
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO