CREATE PROCEDURE [dbo].[spCandidateMap]
(
@CandidateMapId int
)
As
BEGIN
    BEGIN TRY
SELECT CandidateMapId,FellowshipCandidate.First_Name,FellowshipCandidate.Last_Name, Company.name, location, Mentor.name , mentor_type
   FROM CandidateMap 
    INNER JOIN Company 
   on Company.CompanyId = CandidateMap.CompanyId
    INNER JOIN FellowshipCandidate 
   on FellowshipCandidate.FellowshipCandidateId = CandidateMap.FellowshipCandidateId
   INNER JOIN Mentor 
   on Mentor.MentorId = CandidateMap.LeadId
   where CandidateMap.CandidateMapId = @CandidateMapId
   end try
   BEGIN CATCH  
   Print 'Error '  
END CATCH;  
end;
GO