CREATE PROCEDURE [dbo].[sp_Add_User]
@Registration_No NVARCHAR(MAX)=NULL,
@User_Name NVARCHAR(MAX)=NULL,
@Display_Name NVARCHAR(MAX)=NULL,
@Mobile_No NVARCHAR(MAX)=NULL,
@Email_Id NVARCHAR(200)=NULL,
@Password VARBINARY(MAX)=NULL,
@FK_User_Role_Id INT=NULL,
@Is_Locked BIT=NULL,
@Last_Login DATETIME=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
   DECLARE @User_Id INT
   SELECT @User_Id=User_Id from tbl_User where User_Name=@User_Name AND Email_Id=@Email_Id AND Mobile_No=@Mobile_No AND Is_Active=1
		 
   IF @User_Id IS NULL
      BEGIN
         INSERT INTO tbl_User(Registration_No,User_Name,Display_Name,Mobile_No,Email_Id,Password,FK_User_Role_Id,Is_Locked,Last_Login,Created_By,Created_IP)
		 VALUES(@Registration_No,@User_Name,@Display_Name,@Mobile_No,@Email_Id,@Password,@FK_User_Role_Id,@Is_Locked,@Last_Login,@Created_By,@Created_IP)
		 SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
