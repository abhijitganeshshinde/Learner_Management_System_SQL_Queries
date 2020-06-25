create procedure [dbo].[dpAddMentorDetails]
(
@name  varchar(50)  ,
@mentor_type varchar(50)  ,
@lab_id  int ,
  @Status varchar(20),
  @creator_stamp varchar(50),
  @creator_user varchar(50) 
)
as 
BEGIN
    BEGIN TRY
insert into Mentor(name  ,
mentor_type   ,
lab_id   ,
  Status ,
  creator_stamp ,
  creator_user   )
values(@name  ,
@mentor_type   ,
@lab_id   ,
  @Status ,
  @creator_stamp ,
  @creator_user )
end try
  BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;