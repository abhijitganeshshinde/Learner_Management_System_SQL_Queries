CREATE procedure [dbo].[spAddCandidateTechStackAssignmentDetails]
(
 @requirement_id int, 
 @candidate_id int,
 @assign_date date,
  @Status varchar(20) , 
  @creator_stamp varchar(50),
  @creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Candidate_Tech_Stack_Assignment(requirement_id, candidate_id,assign_date,Status ,creator_stamp,creator_user)
values(@requirement_id, @candidate_id,@assign_date,@Status ,@creator_stamp,@creator_user)
         -- if not error, commit the transcation
              COMMIT TRANSACTION
end try
  BEGIN CATCH  
                       -- if error, roll back any chanegs done by any of the sql statements
              ROLLBACK TRANSACTION
   Print 'Error'  
END CATCH;  
end;