CREATE PROCEDURE [dbo].[spCandidateTechStackAssignmentDetails]
AS
BEGIN
    BEGIN TRY
select * from Candidate_Tech_Stack_Assignment
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO