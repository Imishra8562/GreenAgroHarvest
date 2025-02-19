CREATE PROCEDURE [dbo].[sp_Add_Gallery]

@Gallery_Code NVARCHAR(MAX)=NULL,
@Gallery_Name NVARCHAR(MAX)=NULL,
@Gallery_Heading NVARCHAR(MAX)=NULL,
@Gallery_Image NVARCHAR(MAX)=NULL,

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
	   
    DECLARE @GalleryId INT
	SELECT @GalleryId = Gallery_Id 
    FROM tbl_Gallery 
    WHERE Gallery_Code = @Gallery_Code AND Is_Active = 1;

	
   IF @GalleryId IS NULL
      BEGIN
           SELECT @Gallery_Code = ('GalleryCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Gallery (Gallery_Code, Gallery_Name, Gallery_Heading,  Gallery_Image,Created_On, Created_By, Created_IP)
           VALUES (@Gallery_Code, @Gallery_Name, @Gallery_Heading, @Gallery_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Gallery  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END