CREATE PROCEDURE [dbo].[sp_Update_CustomberFeedBack]
    @CustomberFeedback_Id     INT=NULL,
	@CustomberFeedback_Code   NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Name   NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Email  NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Number NVARCHAR(MAX) = NULL,
    @CustomberFeedback_Comment NVARCHAR(MAX) = NULL,
    @Fk_Status_Id INT = NULL,

    @Created_On DATETIME = NULL,
    @Created_By INT = NULL,
    @Created_IP NVARCHAR(MAX) = NULL,
    @Modified_On DATETIME = NULL,
    @Modified_By INT = NULL,
    @Modified_IP NVARCHAR(MAX) = NULL,
    @Is_Active BIT = NULL
AS
BEGIN
BEGIN TRY  
          UPDATE tbl_CustomberFeedback set     
                                           CustomberFeedback_Code   = @CustomberFeedback_Code  ,
                                           CustomberFeedback_Name    =@CustomberFeedback_Name  ,
                                           CustomberFeedback_Email  = @CustomberFeedback_Email ,
                                           CustomberFeedback_Number  =@CustomberFeedback_Number,
                                           CustomberFeedback_Comment =@CustomberFeedback_Comment,
                                           Fk_Status_Id=@Fk_Status_Id,
                                           Modified_On=GETDATE(),
                                           Modified_By=@Modified_By,
                                           Modified_IP=@Modified_IP
          WHERE CustomberFeedback_Id =  @CustomberFeedback_Id   
          SELECT @CustomberFeedback_Id 
END TRY
BEGIN CATCH
      DECLARE @ErrorMessage varchar(MAX);
      SELECT @ErrorMessage = 'SP ERROR: ADD CustomberFeedback FAILED' +char(16)+char(13)+'THE ERROR WAS: '+ Char(13)+ char(10)+ ERROR_MESSAGE();
      RAISERROR (@ErrorMessage, 16, 1);
END CATCH
END;