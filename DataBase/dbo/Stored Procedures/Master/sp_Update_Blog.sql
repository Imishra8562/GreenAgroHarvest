CREATE PROCEDURE [dbo].[sp_Update_Blog]
@Blog_Id   INT=NULL,
@Blog_Code NVARCHAR(MAX)=NULL, 
@Blog_Name NVARCHAR(MAX)=NULL,
@Blog_Image NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL
As 
BEGIN
BEGIN TRY
       UPDATE tbl_Blog SET Blog_Code= @Blog_Code,
                           Blog_Name= @Blog_Name,
                           Blog_Image=@Blog_Image,
                           Modified_On=GetDate(),
                           Modified_By=@Modified_By,
                           Modified_IP=@Modified_IP
         WHERE  Blog_Id  = @Blog_Id
         SELECT @Blog_Id;
END TRY
BEGIN CATCH
           DECLARE @ErrorMessage NVARCHAR(MAX);
           SELECT  @ErrorMessage ='SP ERROR : UPDATE STATUS FAILED' +CHAR(13)+CHAR(10)+ 'THE ERROR WAS : ' + CHAR(13)+CHAR(10)+ ERROR_MESSAGE();
           RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END