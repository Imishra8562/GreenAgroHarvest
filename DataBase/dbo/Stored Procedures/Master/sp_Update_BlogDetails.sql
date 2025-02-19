CREATE PROCEDURE [dbo].[sp_Update_BlogDetails]
 @BlogDetails_Id  INT=NULL,
 @BlogDetails_Code  NVARCHAR(max)=NULL, 
 @Fk_Blog_Id        INT=NULL, 
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
         UPDATE  tbl_BlogDetails set
                                     BlogDetails_Code = @BlogDetails_Code ,
                                     Fk_Blog_Id       = @Fk_Blog_Id       ,
                                     BlogDetails_Description  =@BlogDetails_Description ,
                                     BlogDetails_Description1 =@BlogDetails_Description1,
                                     BlogDetails_Image  =@BlogDetails_Image  ,
                                     BlogDetails_ImageA =@BlogDetails_ImageA ,
                                     BlogDetails_ImageB =@BlogDetails_ImageB ,
                                     BlogDetails_Heading=@BlogDetails_Heading,
                                     Modified_On=@Modified_On,
                                     Modified_By=@Modified_By,
                                     Modified_IP=@Modified_IP
      where BlogDetails_Id = @BlogDetails_Id
      select  @BlogDetails_Id
END TRY
BEGIN CATCH
           Declare @ErrorMessage varchar(max);
           select  @ErrorMessage ='sp ERROR : UPDATE BlogDetail FAILED' +CHAR(13)+CHAR(10)+ 'THE ERROR WAS : ' +CHAR(13)+CHAR(10)+ ERROR_MESSAGE();
           RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END