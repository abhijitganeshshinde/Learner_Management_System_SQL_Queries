CREATE PROCEDURE [dbo].[spFullLabDetails]
(
@Lap_Id int
)
As
BEGIN
    BEGIN TRY
SELECT Lab.Lap_Id, name, location, address , lab_capacity , lead_threshold ,ideation_engg_threshold ,buddy_engg_threshold
   FROM Lab 
    INNER JOIN Lab_Threshold 
   on Lab.Lap_Id = Lab_Threshold.lab_id
   where Lab.Lap_Id = @Lap_Id 
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO
