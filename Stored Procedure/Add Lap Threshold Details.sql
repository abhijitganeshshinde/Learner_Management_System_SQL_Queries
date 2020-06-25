CREATE procedure [dbo].[spAddLapThresholdDetail]
(
@lab_id int,
@lab_capacity int,
@lead_threshold int,
 @ideation_engg_threshold int ,
 @buddy_engg_threshold int ,
 @Status varchar(20),
 @creator_stamp varchar(50),
 @creator_user varchar(50)
 )
as 
BEGIN
    BEGIN TRY
insert into Lab_Threshold(lab_id,lab_capacity,lead_threshold,ideation_engg_threshold,buddy_engg_threshold,Status,creator_stamp,creator_user)
values(@lab_id,@lab_capacity,@lead_threshold,@ideation_engg_threshold,@buddy_engg_threshold,@Status,@creator_stamp,@creator_user)
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

