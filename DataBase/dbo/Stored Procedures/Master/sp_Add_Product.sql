CREATE PROCEDURE [dbo].[sp_Add_Product]
@Product_Code NVARCHAR(MAX)=NULL,
@Product_Name NVARCHAR(MAX)=NULL,
@Product_Image NVARCHAR(MAX)=NULL,

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
	   
    DECLARE @ProductId INT
	SELECT @ProductId = Product_Id 
    FROM tbl_Product 
    WHERE Product_Code = @Product_Code AND Is_Active = 1;

	
   IF @ProductId IS NULL
      BEGIN
           SELECT @Product_Code = ('ProductCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Product (Product_Code,Product_Name, Product_Image, Created_On, Created_By, Created_IP)
           VALUES (@Product_Code,@Product_Name, @Product_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Product  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
