CREATE PROCEDURE [dbo].[spLeadFullDetails]
(
@MentorId int
)
As
BEGIN
    BEGIN TRY
SELECT Mentor.MentorId,Mentor.name, mentor_type, Lab.name , location , address , tech_name, framework
   FROM Mentor 
    INNER JOIN Lab 
   on Lab.Lap_Id = Mentor.lab_id
    INNER JOIN Mentor_Ideation_Map 
   on Mentor_Ideation_Map.mentor_id = Mentor.MentorId
   INNER JOIN Mentor_Tech_Stack 
   on Mentor_Tech_Stack.mentor_id = Mentor.MentorId
    INNER JOIN Tech_Stack
   on Tech_Stack.Tech_Stack_Id = Mentor_Tech_Stack.tech_stack_id
   where Mentor.MentorId = @MentorId
   end try
   BEGIN CATCH  
   Print 'Error '  
END CATCH;  
end;