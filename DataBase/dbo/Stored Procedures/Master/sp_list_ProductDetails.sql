CREATE PROCEDURE [dbo].[sp_List_ProductDetails]
@ProductDetails_Id INT=NULL,
@Fk_ProductDetails_Id INT=NULL

AS
BEGIN    
 BEGIN TRY   

    IF @ProductDetails_Id=0 SET @ProductDetails_Id=NULL
    IF @Fk_ProductDetails_Id=0 SET @Fk_ProductDetails_Id=NULL

    SELECT * FROM tbl_ProductDetails B 
    INNER JOIN tbl_Product D ON B.Fk_ProductDetails_Id=D.Product_Id
	WHERE B.ProductDetails_Id=ISNULL(@ProductDetails_Id,B.ProductDetails_Id) 
    AND B.Fk_ProductDetails_Id=ISNULL(@Fk_ProductDetails_Id,B.Fk_ProductDetails_Id) 
	AND B.Is_Active=1 
	ORDER BY B.ProductDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST ProductDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END