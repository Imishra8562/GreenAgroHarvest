CREATE PROCEDURE [dbo].[sp_List_Status]
@Status_Id INT

AS
BEGIN
BEGIN TRY     
 	
  IF @Status_Id=0 SET @Status_Id=NULL
    
	        SELECT * FROM tbl_Status WHERE Status_Id=ISNULL(@Status_Id,Status_Id) AND Is_Active=1

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : list Status FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

 