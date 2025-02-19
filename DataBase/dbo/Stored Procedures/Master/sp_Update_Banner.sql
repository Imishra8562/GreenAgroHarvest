CREATE PROCEDURE [dbo].[sp_Update_Banner]

@Banner_Id INT=NULL,
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


             UPDATE tbl_Banner SET  Banner_heading = @Banner_heading,
                                         Banner_description = @Banner_description,
                                         Banner_image = @Banner_image,

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE Banner_Id=@Banner_Id
   SELECT @Banner_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE BANNER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
