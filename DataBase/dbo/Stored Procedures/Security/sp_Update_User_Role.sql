CREATE PROCEDURE [dbo].[sp_Update_User_Role]
	 @User_Role_Id INT=NULL,
    @User_Role_Name NVARCHAR(MAX)=NULL,
   @User_Role_Description NVARCHAR(MAX)=NULL,

    @Created_On DATETIME=NULL,
    @Created_By INT=NULL,
    @Created_IP NVARCHAR(MAX)=NULL,
    @Modified_On DATETIME=NULL,
    @Modified_By INT=NULL,
    @Modified_IP NVARCHAR(MAX)=NULL,
    @Is_Active BIT=NULL

AS
BEGIN    
 BEGIN TRY   

   BEGIN
  
    UPDATE tbl_User_Role SET User_Role_Name=LTRIM(RTRIM(@User_Role_Name)),
                                             User_Role_Description=@User_Role_Description,
                          Modified_By=@Modified_By,
                          Modified_On=GETDATE(),
                          Modified_IP=@Modified_IP                  
                    WHERE User_Role_Id=@User_Role_Id

    SELECT @User_Role_Id

   END
    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

