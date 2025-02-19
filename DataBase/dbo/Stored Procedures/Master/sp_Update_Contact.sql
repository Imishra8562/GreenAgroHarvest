CREATE PROCEDURE [dbo].[sp_Update_Contact]
    
    @Contact_Id INT=NULL,
	@Contact_Code NVARCHAR(Max)=Null,
    @Contact_Name   NVARCHAR(Max)=Null,
    @Contact_Number NVARCHAR(MAX)= Null,
    @Contact_Email  NVARCHAR(MAX) =NULL,
    @Contact_Subject NVARCHAR(MAX) =NULL,
    @Contact_Comment NVARCHAR(MAX) =NULL,
   
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
          update tbl_Contact set  Contact_Name   = @Contact_Name  , 
                                  Contact_Number = @Contact_Number ,
                                  Contact_Email  = @Contact_Email  ,
                                  Contact_Subject= @Contact_Subject,
                                  Contact_Comment= @Contact_Comment,
                                  Modified_On=GetDate(),
                                  Modified_By=@Modified_By,
                                  Modified_IP=@Modified_IP

        WHERE Contact_Id =@Contact_Id 
        SELECT @Contact_Id
END TRY
BEGIN CATCH
          DECLARE @ErrorMessage Nvarchar(max);
          Select @ErrorMessage ='SP ERROR : UPDATE CONTACT FAILED'+  Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
          RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END


                                  