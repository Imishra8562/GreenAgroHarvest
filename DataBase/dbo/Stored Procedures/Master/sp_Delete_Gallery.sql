CREATE PROCEDURE [dbo].[sp_Delete_Gallery]
	@Gallery_Id INT

	As 
	Begin 
	Begin Try

    Update tbl_Gallery Set Is_Active=0,Modified_On=GETDATE() WHERE Gallery_Id=@Gallery_Id
    SELECT @Gallery_Id

   END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END