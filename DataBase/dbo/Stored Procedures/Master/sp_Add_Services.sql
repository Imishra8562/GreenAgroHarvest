CREATE PROCEDURE [dbo].[sp_Add_Services]

@Services_Code  NVARCHAR(MAX)=NULL,
@Services_Heading  NVARCHAR(MAX)=NULL,
@Services_Description  NVARCHAR(MAX)=NULL,
@Services_Image       NVARCHAR(MAX)=NULL,

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
	   
    DECLARE @ServicesId INT
	SELECT @ServicesId = Services_Id 
    FROM tbl_Services 
    WHERE Services_Code = @Services_Code AND Is_Active = 1;

	
   IF @ServicesId IS NULL
      BEGIN
           SELECT @Services_Code = ('ServicesCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Services (Services_Code,Services_Heading,Services_Description, Services_Image,Created_On, Created_By, Created_IP)
           VALUES (@Services_Code,@Services_Heading,@Services_Description,@Services_Image,               GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Services  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END