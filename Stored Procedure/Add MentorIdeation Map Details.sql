CREATE procedure [dbo].[dpAddMentorIdeationMapDetails]
(
@mentor_id int,
@Status varchar(20), 
@creator_stamp varchar(50) ,
@creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Mentor_Ideation_Map(mentor_id ,
Status , 
creator_stamp ,
creator_user )
values(@mentor_id ,
@Status , 
@creator_stamp ,
@creator_user)


         -- if not error, commit the transcation
              COMMIT TRANSACTION
end try
  BEGIN CATCH  
               -- if error, roll back any chanegs done by any of the sql statements
              ROLLBACK TRANSACTION
   Print 'Error'  
END CATCH;  
end;