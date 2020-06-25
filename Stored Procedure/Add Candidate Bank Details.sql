create procedure [dbo].[dbAddCandidateBankDetails]
(
@FellowshipCandidateId int,
 @Name  varchar(100) ,
 @Account_Number bigint  ,
  @Is_Account_Num_Verified bit ,
  @Ifsc_code varchar(20) ,
  @is_ifsc_code_verified bit, 
  @pan_number varchar(100),
  @is_pan_number_verified bit  , 
  @addhaar_num bigint ,
  @is_addhaar_num_verified bit , 
 @creator_stamp varchar(50),
 @creator_user varchar(50)
)
as
BEGIN
    BEGIN TRY
insert into Candidate_Bank_Details(FellowshipCandidateId , Name ,Account_Number   ,Is_Account_Num_Verified  ,Ifsc_code  ,is_ifsc_code_verified , 
  pan_number ,is_pan_number_verified, addhaar_num ,is_addhaar_num_verified  , creator_stamp,  creator_user )
values(
@FellowshipCandidateId,
@Name ,
 @Account_Number   ,
  @Is_Account_Num_Verified  ,
  @Ifsc_code  ,
  @is_ifsc_code_verified , 
  @pan_number ,
  @is_pan_number_verified, 
  @addhaar_num ,
  @is_addhaar_num_verified  , 
 @creator_stamp,
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