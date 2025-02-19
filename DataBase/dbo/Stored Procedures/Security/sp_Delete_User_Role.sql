CREATE PROCEDURE [dbo].[sp_Delete_User_Role]
	@User_Role_Id INT

AS
BEGIN    
 BEGIN TRY  

	BEGIN
	UPDATE tbl_User_Role SET Is_Active=0 WHERE User_Role_Id=@User_Role_Id
	SELECT @User_Role_Id
	END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
