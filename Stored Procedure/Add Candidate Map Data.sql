Create procedure [dbo].[dbAddCandidate_Map]
(
@FellowshipCandidateId int,
@CompanyId int,
@LeadId int
)
as
BEGIN
    BEGIN TRY
insert into CandidateMap(FellowshipCandidateId,CompanyId,LeadId)
values(
@FellowshipCandidateId ,
@CompanyId ,
@LeadId)

   -- if not error, commit the transcation
              COMMIT TRANSACTION
  end try
   BEGIN CATCH  
        -- if error, roll back any chanegs done by any of the sql statements
              ROLLBACK TRANSACTION
   Print 'Error'  
END CATCH;  
end;