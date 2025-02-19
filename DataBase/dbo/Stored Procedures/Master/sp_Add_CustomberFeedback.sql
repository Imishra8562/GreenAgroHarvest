CREATE PROCEDURE [dbo].[sp_Add_CustomberFeedback]
    @CustomberFeedback_Code NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Name NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Email NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Number NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Comment  NVARCHAR(MAX) = NULL, 
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
    DECLARE @CustomberFeedbackId INT;

    SELECT @CustomberFeedbackId = CustomberFeedback_Id
    FROM tbl_CustomberFeedback
    WHERE @CustomberFeedback_Code = CustomberFeedback_Code AND Is_Active = 1;

    IF @CustomberFeedbackId IS NULL
    BEGIN
        SELECT @CustomberFeedback_Code = ('CFC') + 
            CAST(CONVERT(NUMERIC(8, 0), RAND() * 8999999) + 1000000 AS NVARCHAR);

        INSERT INTO tbl_CustomberFeedback 
        (CustomberFeedback_Code, CustomberFeedback_Name, CustomberFeedback_Email, 
         CustomberFeedback_Number,CustomberFeedback_Comment, Fk_Status_Id, Created_On, Created_By, Created_IP)
        VALUES 
        (@CustomberFeedback_Code, @CustomberFeedback_Name, @CustomberFeedback_Email, 
         @CustomberFeedback_Number,@CustomberFeedback_Comment, @Fk_Status_Id, GETDATE(), @Created_By, @Created_IP);

        SELECT SCOPE_IDENTITY();
    END
END TRY   
BEGIN CATCH    
    DECLARE @ErrorMessage VARCHAR(MAX);    
    SELECT @ErrorMessage = 'SP ERROR: ADD CustomberFeedback FAILED' + CHAR(13) + CHAR(10) +
        'THE ERROR WAS: ' + CHAR(13) + CHAR(10) + ERROR_MESSAGE();
    RAISERROR (@ErrorMessage, 16, 1);
END CATCH
END;
