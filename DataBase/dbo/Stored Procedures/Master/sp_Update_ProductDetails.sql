CREATE PROCEDURE [dbo].[sp_Update_ProductDetails]
@ProductDetails_Id INT=NULL,
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


             UPDATE tbl_ProductDetails SET Fk_ProductDetails_Id = @Fk_ProductDetails_Id,  
                                         ProductDetails_Name = @ProductDetails_Name,
                                         ProductDetails_Image = @ProductDetails_Image,
                                         ProductDetails_Details = @ProductDetails_Details,
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE ProductDetails_Id=@ProductDetails_Id
   SELECT @ProductDetails_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE ProductDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END

