create procedure [dbo].[dpAddCandidateQualification]
(
@FellowshipCandidateId int,
@diploma varchar(30) ,
@degree_name varchar(30),
  @is_degree_name_verified bit,
  @employee_decipline  bit,
  @is_employee_decipline_verified bit,
  @passing_year int,
  @is_passing_year_verified bit, 
  @aggr_per float,
  @final_year_per float,
  @is_final_year_per_verified bit, 
  @training_institute varchar(50),
  @is_training_institute_verified bit,
  @training_duration_month int,
  @is_training_duration_month_verified bit,
  @other_training varchar(50),
  @is_other_training_verified bit, 
  @creator_stamp varchar(50) , 
  @creator_user varchar(50)
)
as 
BEGIN
    BEGIN TRY
insert into Candidate_Qualification(FellowshipCandidateId,
diploma,
degree_name,
 is_degree_name_verified,
  employee_decipline,
  is_employee_decipline_verified,
  passing_year ,
  is_passing_year_verified, 
  aggr_per ,
  final_year_per,
  is_final_year_per_verified , 
  training_institute ,
  is_training_institute_verified,
  training_duration_month ,
  is_training_duration_month_verified,
  other_training,
  is_other_training_verified , 
  creator_stamp  , 
  creator_user)
values(@FellowshipCandidateId,
@diploma,
@degree_name,
  @is_degree_name_verified,
  @employee_decipline,
  @is_employee_decipline_verified,
  @passing_year ,
  @is_passing_year_verified, 
  @aggr_per ,
  @final_year_per,
  @is_final_year_per_verified , 
  @training_institute ,
  @is_training_institute_verified,
  @training_duration_month ,
  @is_training_duration_month_verified,
  @other_training,
  @is_other_training_verified , 
  @creator_stamp  , 
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