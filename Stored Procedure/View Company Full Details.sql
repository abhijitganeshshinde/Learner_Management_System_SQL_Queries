CREATE PROCEDURE [dbo].[spCompanyFullDetails]
(
@Company_Requirement_Id int
)
As
BEGIN
    BEGIN TRY
SELECT Company_Requirement_Id,requested_month,city, requirement_doc_path, no_of_engg , special_remark ,Mentor.name ,Mentor.mentor_type, address, location
	
   FROM Company_Requirement 
    INNER JOIN Company
   on Company.CompanyId = Company_Requirement.company_id
    INNER JOIN Tech_Type 
   on Tech_Type.Tech_Type_Id = Company_Requirement.tech_type_id
    INNER JOIN Tech_Stack 
   on Tech_Stack.Tech_Stack_Id = Company_Requirement.tech_stack_id
     INNER JOIN MakerProgram 
   on MakerProgram.MakerProgramID = Company_Requirement.maker_program_id
    Inner JOIN Mentor 
   on Mentor.MentorId = Company_Requirement.lead_id or  Mentor.MentorId = Company_Requirement.buddy_engg_id or Mentor.MentorId = Company_Requirement.ideation_engg_id
   
   where Company_Requirement.Company_Requirement_Id = @Company_Requirement_Id
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO


