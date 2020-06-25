CREATE procedure [dbo].[spAddHiredCandidateDetails]
(
@First_Name varchar(20),
@Middle_Name varchar(20),
@Last_Name varchar(20),
@EmailId varchar(20),
@Hired_City varchar(20),
@Degree varchar(20),
@Hired_Date date,
@Mobile_Number bigint,
@Permanent_Pincode int,
@Hired_Lab int,
@Attitude varchar(20),
@Communication_Remark varchar(20),
@Knowledge_Remark varchar(20),
@Aggregate_Remark varchar(20),
@Status varchar(20),
@Creator_Stamp varchar(20),
@Creator_User varchar(20)
)
as 
BEGIN
    BEGIN TRY
insert into HiredCandidate(First_Name,Middle_Name,Last_Name,EmailId,Hired_City,Degree,Hired_Date,Mobile_Number
           ,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark,Aggregate_Remark
           ,Status,Creator_Stamp,Creator_User)
values(@First_Name,@Middle_Name,@Last_Name,@EmailId,@Hired_City,@Degree,@Hired_Date,@Mobile_Number
           ,@Permanent_Pincode,@Hired_Lab,@Attitude,@Communication_Remark,@Knowledge_Remark,@Aggregate_Remark
           ,@Status,@Creator_Stamp,@Creator_User)

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


