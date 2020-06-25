CREATE procedure [dbo].[dpAddTechTypeDetails]
(
@type_name varchar(20) ,
@cur_status varchar(20),
@creator_stamp varchar(50),
@creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Tech_Type(type_name ,
cur_status ,
creator_stamp ,
creator_user )
values(@type_name ,
@cur_status ,
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
GO


