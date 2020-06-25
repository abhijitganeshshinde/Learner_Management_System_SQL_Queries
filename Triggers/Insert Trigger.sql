CREATE TRIGGER trgAfterInsert ON [dbo].[FellowshipCandidate]   
FOR INSERT  
AS  
declare @FellowshipCandidateId int;  
declare @First_Name varchar(50);  
declare @Opration decimal(10,2); 
select @FellowshipCandidateId=i.FellowshipCandidateId from inserted i;   
select @First_Name=i.First_Name from inserted i;     
set @Opration='Inserted Record';  
  
insert into [dbo].[Audit_Candidate_Details] 
(FellowshipCandidateId,First_Name,Opration,UpdateDate)   
values(@FellowshipCandidateId,@First_Name,@Opration,getdate());  
  
PRINT 'AFTER INSERT trigger fired.'  
GO