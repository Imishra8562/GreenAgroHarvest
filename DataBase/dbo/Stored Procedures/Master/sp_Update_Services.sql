CREATE PROCEDURE [dbo].[sp_Update_Services]
 @Services_Id INT=NULL,	
 @Services_Code  NVARCHAR(MAX)=NULL,
 @Services_Heading  NVARCHAR(MAX)=NULL,
 @Services_Description  NVARCHAR(MAX)=NULL,
 @Services_Image       NVARCHAR(MAX)=NULL,


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
  UPDATE tbl_Services SET  Services_Heading = @Services_Heading,          
                           Services_Description = @Services_Description,
                           Services_Image = @Services_Image ,  

                           Modified_On=GetDate(),
                           Modified_By=@Modified_By,
                           Modified_IP=@Modified_IP
                  WHERE Services_Id=@Services_Id
                 SELECT @Services_Id;
  END TRY
  BEGIN CATCH
  DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE Services FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END