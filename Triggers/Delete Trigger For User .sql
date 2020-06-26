CREATE Trigger [dbo].[trigger_UserDetails_For_Delete]
ON [dbo].[UserDetails]
For Delete
As
Begin
	Declare @UserId int
	Select @UserId = UserId from deleted
	Insert Into AuditUserDetails
	Values('UserId '+ Cast(@userId as varchar(5))+' is deleted at '+ cast(GetDate() as varchar(15)))
	End