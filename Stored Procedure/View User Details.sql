CREATE PROCEDURE [dbo].[spUserDetail]
AS
BEGIN
    BEGIN TRY
select * from UserDetails
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO