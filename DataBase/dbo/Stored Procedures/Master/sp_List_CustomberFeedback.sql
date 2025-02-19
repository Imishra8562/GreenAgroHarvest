CREATE PROCEDURE [dbo].[sp_List_CustomberFeedback]
@CustomberFeedback_Id  INT=NULL,
@Status_Id       INT=NULL

AS
BEGIN
BEGIN TRY     
     
    if @CustomberFeedback_Id=0  SET @CustomberFeedback_Id=NUll
    If @Status_Id=0 SET @Status_Id=Null
   
    SELECT * From tbl_CustomberFeedback CF
    INNER JOIN  tbl_Status S ON CF.Fk_Status_Id=S.Status_Id
    Where CF.CustomberFeedback_Id=ISNULL(@CustomberFeedback_Id,CF.CustomberFeedback_Id)
    AND CF.Fk_Status_Id = ISNULL(@Status_Id, CF.Fk_Status_Id)
    AND CF.Is_Active = 1
    ORDER BY CF.CustomberFeedback_Id



END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : List CustomberFeedback FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END