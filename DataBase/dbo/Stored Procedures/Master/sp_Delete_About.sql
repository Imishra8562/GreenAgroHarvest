CREATE PROCEDURE [dbo].[sp_Delete_About]
@About_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_About SET Is_Active=0,Modified_On=GETDATE() WHERE About_Id=@About_Id
   SELECT @About_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE About FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END