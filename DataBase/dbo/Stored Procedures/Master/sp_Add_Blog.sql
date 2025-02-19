CREATE PROCEDURE [dbo].[sp_Add_Blog]
	
@Blog_Code NVARCHAR(MAX)=NULL, 
@Blog_Name NVARCHAR(MAX)=NULL,
@Blog_Image NVARCHAR(MAX)=NULL,

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
	   
    DECLARE @BlogId INT
	SELECT @BlogId = Blog_Id 
    FROM tbl_Blog 
    WHERE Blog_Code = @Blog_Code AND Is_Active = 1;

	
   IF @BlogId IS NULL
      BEGIN
           SELECT @Blog_Code = ('BlogCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Blog (Blog_Code, Blog_Name,Blog_Image,Created_On, Created_By, Created_IP)
           VALUES (@Blog_Code, @Blog_Name,@Blog_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Blog  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
