create procedure [dbo].[dpAddMakerProgramDetails]
(
@program_name varchar(50),
@program_type varchar(50),
 @program_link varchar(max) , 
 @tech_stack_id int ,
 @tech_type_id int , 
 @is_program_approved bit ,
 @Description varchar(Max),
 @status varchar(20) ,
 @creator_stamp varchar(50)  ,
 @creator_user varchar(50) 
)
as 
BEGIN
    BEGIN TRY
insert into MakerProgram(program_name ,
program_type ,
 program_link  , 
 tech_stack_id ,
 tech_type_id , 
 is_program_approved  ,
 Description ,
 status ,
 creator_stamp  ,
 creator_user  )
values(@program_name ,
@program_type ,
 @program_link  , 
 @tech_stack_id ,
 @tech_type_id , 
 @is_program_approved  ,
 @Description ,
 @status ,
 @creator_stamp  ,
 @creator_user )

       -- if not error, commit the transcation
              COMMIT TRANSACTION
end try
  BEGIN CATCH  
           -- if error, roll back any chanegs done by any of the sql statements
              ROLLBACK TRANSACTION
   Print 'Error'  
END CATCH;  
end;