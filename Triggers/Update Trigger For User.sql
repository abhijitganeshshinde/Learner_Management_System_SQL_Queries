
CREATE Trigger [dbo].[trigger_UserDetails_For_Update]
ON [dbo].[UserDetails]
For Update
As
Begin
	Declare @UserId int
	Select @UserId = UserId from inserted
	Insert Into AuditUserDetails
	Values('UserId '+ Cast(@userId as varchar(5))+' is Updated at '+ cast(GetDate() as varchar(10)))
	End