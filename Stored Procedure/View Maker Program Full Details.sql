CREATE PROCEDURE [dbo].[spMakerProgramFullDetails]
(
@MakerProgramID int
)
As
BEGIN
    BEGIN TRY
SELECT MakerProgramID,program_name,program_type, Description, tech_name , framework , type_name 
   FROM MakerProgram 
    INNER JOIN Tech_Stack
   on Tech_Stack.Tech_Stack_Id = MakerProgram.tech_stack_id
    INNER JOIN Tech_Type 
   on Tech_Type.Tech_Type_Id = MakerProgram.tech_type_id
   where MakerProgram.MakerProgramID = @MakerProgramID
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;