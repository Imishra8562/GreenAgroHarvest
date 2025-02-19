CREATE PROCEDURE [dbo].[sp_Delete_Banner]
@Banner_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Banner SET Is_Active=0,Modified_On=GETDATE() WHERE Banner_Id=@Banner_Id
   SELECT @Banner_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE BANNER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END