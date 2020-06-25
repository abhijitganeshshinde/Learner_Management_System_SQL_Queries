create procedure [dbo].[dbAddCandidateDocumentsDetails]
(
@FellowshipCandidateId int, 
 @doc_type varchar(10),
 @doc_path varchar(max),
 @Status varchar(20),
 @creator_stamp varchar(50),
 @creator_user varchar(50)
)
as
BEGIN
    BEGIN TRY
insert into Candidate_Documents(FellowshipCandidateId , 
 doc_type,
 doc_path,
 Status,
 creator_stamp,
 creator_user)
values(
@FellowshipCandidateId , 
 @doc_type,
 @doc_path,
 @Status,
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