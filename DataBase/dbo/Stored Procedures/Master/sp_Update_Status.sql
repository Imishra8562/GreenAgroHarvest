CREATE PROCEDURE [dbo].[sp_Update_Status]
 @Status_Id   INT=NULL ,
 @Status_Code NVARCHAR(MAX)=NULL, 
 @Status_Name NVARCHAR(MAX)=NULL,
 
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
  update tbl_Status set Status_Name=@Status_Name,
                        Modified_On=GetDate(),
                        Modified_By=@Modified_By,
                        Modified_IP=@Modified_IP
                  WHERE Status_Id=@Status_Id
                  SELECT @Status_Id
  END TRY
  BEGIN CATCH
  DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE STATUS FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END

          


