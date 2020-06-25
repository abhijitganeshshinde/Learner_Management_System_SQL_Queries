CREATE PROCEDURE [dbo].[spHiredCandidate]
AS
BEGIN
    BEGIN TRY
select * from HiredCandidate
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;