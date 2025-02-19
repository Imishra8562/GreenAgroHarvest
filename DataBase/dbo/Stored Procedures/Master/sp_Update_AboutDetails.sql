CREATE PROCEDURE [dbo].[sp_Update_AboutDetails]

@AboutDetails_Id INT=NULL,
@AboutDetails_Code NVARCHAR(MAX)=NULL,
@Fk_About_Id INT=NULL,
@Fk_Banner_Id INT=NULL,
@About_Details NVARCHAR(MAX)=NULL,


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


             UPDATE tbl_AboutDetails SET       Fk_About_Id = @Fk_About_Id ,
                                               Fk_Banner_Id = @Fk_Banner_Id ,
                                               About_Details = @About_Details,
                                        
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE AboutDetails_Id=@AboutDetails_Id
   SELECT @AboutDetails_Id                    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE AboutDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
