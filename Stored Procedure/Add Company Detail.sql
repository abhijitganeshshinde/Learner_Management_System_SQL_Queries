Create procedure [dbo].[dpAddCompanyDetail]
(
@name varchar(50) ,
@address varchar(100),
@location varchar(50) ,
@status varchar(10) , 
@creator_stamp varchar(50),
@creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Company(name ,
address,
location ,
status , 
creator_stamp,
creator_user)
values(@name ,
@address,
@location ,
@status , 
@creator_stamp,
@creator_user)
end try
  BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;