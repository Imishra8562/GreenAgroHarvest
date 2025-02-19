CREATE PROCEDURE [dbo].[sp_Add_Banner]
@Banner_Code NVARCHAR(MAX)=NULL,
@Banner_heading NVARCHAR(MAX)=NULL,
@Banner_description NVARCHAR(MAX)=NULL,
@Banner_image NVARCHAR(MAX)=NULL,



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
	   
    DECLARE @BannerId INT
	SELECT @BannerId = Banner_Id 
    FROM tbl_Banner 
    WHERE Banner_Code = @Banner_Code AND Is_Active = 1;

	
   IF @BannerId IS NULL
      BEGIN
           SELECT @Banner_Code = ('BannerCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Banner (Banner_Code, Banner_heading, Banner_description, Banner_image, Created_On, Created_By, Created_IP)
           VALUES (@Banner_Code, @Banner_heading, @Banner_description, @Banner_image,             GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD BANNER  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
