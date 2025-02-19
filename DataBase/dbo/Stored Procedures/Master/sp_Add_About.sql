CREATE PROCEDURE [dbo].[sp_Add_About]
@About_Code NVARCHAR(MAX)=NULL,
@Name NVARCHAR(MAX)=NULL,
@Image NVARCHAR(MAX)=NULL,
@About_Us NVARCHAR(MAX)=NULL,



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
	   
    DECLARE @AboutId INT
	SELECT @AboutId = About_Id 
    FROM tbl_About 
    WHERE About_Code = @About_Code AND Is_Active = 1;

	
   IF @AboutId IS NULL
      BEGIN
           SELECT @About_Code = ('AboutCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_About (About_Code, Name, Image, About_Us, Created_On, Created_By, Created_IP)
           VALUES (@About_Code, @Name, @Image, @About_Us, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD About  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
