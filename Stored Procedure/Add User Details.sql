CREATE procedure [dbo].[spAddUserDetail]
(
@Email varchar(50),
@First_Name varchar(50),
@Last_Name varchar(50),
@verified tinyint,
@creator_stamp varchar(50),
@creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into UserDetails(Email,First_Name,Last_Name,verified,creator_stamp,creator_user)
values(@Email,@First_Name,@Last_Name,@verified,@creator_stamp,@creator_user)
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


