CREATE PROCEDURE [dbo].[spLab_Threshold]
AS
BEGIN
    BEGIN TRY
select * from Lab_Threshold
   end try
   BEGIN CATCH  
   Print 'Error'  
END CATCH;  
end;
GO