CREATE Trigger [dbo].[trigger_UserDetails_For_Insert]
ON [dbo].[UserDetails]
For Insert
As
Begin
	Declare @UserId int
	Select @UserId = UserId from inserted
	Insert Into AuditUserDetails
	Values('UserId '+ Cast(@UserId as varchar(5))+' is Added at '+ cast(GetDate() as varchar(15)))
	End