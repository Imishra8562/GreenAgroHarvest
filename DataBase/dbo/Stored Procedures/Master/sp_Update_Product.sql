CREATE PROCEDURE [dbo].[sp_Update_Product]

@Product_Id INT=NULL,
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


             UPDATE tbl_Product SET  Product_Name = @Product_Name,
                                         Product_Image = @Product_Image,
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE Product_Id=@Product_Id
   SELECT @Product_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE Product FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
