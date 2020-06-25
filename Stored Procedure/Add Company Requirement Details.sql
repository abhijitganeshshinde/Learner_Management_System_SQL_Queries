CREATE procedure [dbo].[spAddCompanyRequirementDetail]
(
@company_id int,
 @requested_month int ,
 @city varchar(20),
  @is_doc_verifrication bit,
  @requirement_doc_path varchar(max) ,
  @no_of_engg int,
  @tech_stack_id int, 
  @tech_type_id int,
  @maker_program_id int, 
  @lead_id int,
  @ideation_engg_id int,
  @buddy_engg_id int,
  @special_remark varchar(20),
 @Status varchar(20) ,
 @creator_stamp varchar(50) ,
 @creator_user varchar(50) 
)
as 
BEGIN
    BEGIN TRY
insert into Company_Requirement(company_id ,requested_month ,city,is_doc_verifrication,requirement_doc_path,no_of_engg ,
  tech_stack_id , tech_type_id ,maker_program_id , lead_id ,ideation_engg_id ,buddy_engg_id ,special_remark ,Status ,creator_stamp ,
 creator_user)
values(@company_id ,@requested_month ,@city,@is_doc_verifrication,@requirement_doc_path,@no_of_engg ,
  @tech_stack_id , @tech_type_id ,@maker_program_id , @lead_id ,@ideation_engg_id ,@buddy_engg_id ,@special_remark ,@Status ,
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

