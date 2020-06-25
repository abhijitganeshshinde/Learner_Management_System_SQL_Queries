CREATE PROCEDURE [dbo].[spCandidateFullDetails]
(
@FellowshipCandidateId int
)
As
BEGIN
    BEGIN TRY
SELECT FellowshipCandidate.FellowshipCandidateId, First_Name, Last_Name, Account_Number , Ifsc_code , doc_type , doc_path ,degree_name ,passing_year
   FROM FellowshipCandidate 
    INNER JOIN Candidate_Bank_Details 
   on FellowshipCandidate.FellowshipCandidateId = Candidate_Bank_Details.FellowshipCandidateId
    INNER JOIN Candidate_Documents 
   on FellowshipCandidate.FellowshipCandidateId = Candidate_Documents.FellowshipCandidateId
    INNER JOIN Candidate_Qualification 
   on FellowshipCandidate.FellowshipCandidateId = Candidate_Qualification.FellowshipCandidateId
   where FellowshipCandidate.FellowshipCandidateId = @FellowshipCandidateId 
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO
