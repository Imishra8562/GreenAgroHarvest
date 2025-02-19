CREATE PROCEDURE [dbo].[sp_Delete_Contact]
@Contact_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Contact SET Is_Active=0,Modified_On=GETDATE() WHERE Contact_Id=@Contact_Id
   SELECT @Contact_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE Contact FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END