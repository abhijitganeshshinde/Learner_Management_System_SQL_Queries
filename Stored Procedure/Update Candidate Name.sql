create procedure [dbo].[spUpdateCandidateName]
(
@FellowshipCandidateId int,
@First_Name varchar(50)
)
as 
begin
update FellowshipCandidate
set First_Name=@First_Name
where FellowshipCandidateId=@FellowshipCandidateId
end