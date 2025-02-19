CREATE PROCEDURE [dbo].[sp_Update_About]

@About_Id INT=NULL,
@About_Code NVARCHAR(MAX)=NULL,
@Name NVARCHAR(MAX)=NULL,
@Image NVARCHAR(MAX)=NULL,
@About_Us NVARCHAR(MAX)=NULL,


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


             UPDATE tbl_About SET        Name = @Name,
                                         Image = @Image,
                                         About_Us = @About_Us,

                                         Modified_On=GetDate(),
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE About_Id=@About_Id
   SELECT @About_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE About FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
