CREATE PROCEDURE [dbo].[sp_Add_User_Role]

@User_Role_Name NVARCHAR (MAX)=NULL,
@User_Role_Description NVARCHAR (MAX)=NULL,

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

   DECLARE @User_Role_Id INT
   SELECT @User_Role_Id=User_Role_Id FROM tbl_User_Role WHERE User_Role_Name=@User_Role_Name AND Is_Active=1
  
   IF @User_Role_Id IS NULL 
   BEGIN

    INSERT INTO tbl_User_Role(User_Role_Name,User_Role_Description,
                               Created_By,
                               Created_IP)
                        VALUES(LTRIM(RTRIM(@User_Role_Name)),@User_Role_Description,
                                @Created_By,
                                @Created_IP)
    SELECT SCOPE_IDENTITY()

   END

   END
    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
