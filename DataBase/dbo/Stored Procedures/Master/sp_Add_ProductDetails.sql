CREATE PROCEDURE [dbo].[sp_Add_ProductDetails]

@ProductDetails_Code NVARCHAR(MAX)=NULL,
@Fk_ProductDetails_Id Int=NULL,
@ProductDetails_Name NVARCHAR(MAX)=NULL,
@ProductDetails_Image NVARCHAR(MAX)=NULL,
@ProductDetails_Details NVARCHAR(MAX)=NULL,



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
	   
    DECLARE @ProductDetailsId INT
	SELECT @ProductDetailsId = ProductDetails_Id 
    FROM tbl_ProductDetails 
    WHERE ProductDetails_Code = @ProductDetails_Code AND Is_Active = 1;

	
   IF @ProductDetailsId IS NULL
      BEGIN
           SELECT @ProductDetails_Code = ('ProductDetailsCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_ProductDetails (ProductDetails_Code, Fk_ProductDetails_Id , ProductDetails_Name, ProductDetails_Image, ProductDetails_Details, Created_On, Created_By, Created_IP)
           VALUES (@ProductDetails_Code, @Fk_ProductDetails_Id,@ProductDetails_Name, @ProductDetails_Image, @ProductDetails_Details, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD ProductDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
