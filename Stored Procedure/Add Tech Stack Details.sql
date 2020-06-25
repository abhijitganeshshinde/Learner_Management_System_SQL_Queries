CREATE procedure [dbo].[dpAddTechStackDetails]
(
@tech_name varchar(50) ,
@framework FLOAT ,
 @cur_status varchar(20) ,
 @creator_stamp varchar(50) ,
 @creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Tech_Stack(tech_name  ,
framework ,
 cur_status  ,
 creator_stamp  ,
 creator_user)
values(@tech_name  ,
@framework ,
 @cur_status  ,
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