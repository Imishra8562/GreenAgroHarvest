CREATE PROCEDURE [dbo].[sp_List_Contact]
    @Contact_Id INT=NULL
AS
BEGIN
    BEGIN TRY
        IF @Contact_Id = 0 SET @Contact_Id =NULL
            SELECT * FROM tbl_Contact WHERE Contact_Id=ISNULL(@Contact_Id,Contact_Id) AND Is_Active = 1;
       
  END TRY             
    BEGIN CATCH
        DECLARE @ErrorMessage VARCHAR(MAX);
        SELECT @ErrorMessage =  'SP ERROR: List Contact FAILED' + CHAR(13) + CHAR(10) +'THE ERROR WAS: ' + CHAR(13) + CHAR(10) + ERROR_MESSAGE();
        RAISERROR (@ErrorMessage, 16, 1);
    END CATCH
END