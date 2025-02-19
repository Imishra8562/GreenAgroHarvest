CREATE PROCEDURE [dbo].[sp_Add_BlogDetails]
	 
 @BlogDetails_Code NVARCHAR(MAX)=NULL,  
 @Fk_Blog_Id       INT=NULL, 
 @BlogDetails_Description  NVARCHAR(max)=NULL, 
 @BlogDetails_Description1  NVARCHAR(max)=NULL,
 @BlogDetails_Image   NVARCHAR(max)=NULL, 
 @BlogDetails_ImageA NVARCHAR(max)=NULL, 
 @BlogDetails_ImageB NVARCHAR(max)=NULL, 
 @BlogDetails_Heading    NVARCHAR(MAX) NULL,

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
	   
    DECLARE @BlogDetailsId INT
	SELECT @BlogDetailsId = BlogDetails_Id 
    FROM tbl_BlogDetails 
    WHERE BlogDetails_Code = @BlogDetails_Code AND Is_Active = 1;

	
   IF @BlogDetailsId IS NULL
      BEGIN
           SELECT @BlogDetails_Code = ('ADC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_BlogDetails (
           BlogDetails_Code,     
           Fk_Blog_Id ,    
           BlogDetails_Description ,
           BlogDetails_Description1,
           BlogDetails_Image ,
           BlogDetails_ImageA ,
           BlogDetails_ImageB ,
           BlogDetails_Heading,
           Created_On, Created_By, Created_IP)
           VALUES (
           @BlogDetails_Code,     
           @Fk_Blog_Id ,    
           @BlogDetails_Description ,
           @BlogDetails_Description1,
           @BlogDetails_Image ,
           @BlogDetails_ImageA ,
           @BlogDetails_ImageB ,
           @BlogDetails_Heading,
           GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD BlogDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

