CREATE PROCEDURE [dbo].[sp_Delete_BlogDetails]
@BlogDetails_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_BlogDetails SET Is_Active=0,Modified_On=GETDATE() WHERE BlogDetails_Id=@BlogDetails_Id
   SELECT @BlogDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE BlogDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END