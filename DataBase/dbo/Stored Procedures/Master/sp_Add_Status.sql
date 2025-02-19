CREATE PROCEDURE [dbo].[sp_Add_Status]
  
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
 	   
     DECLARE @StatusId INT
 	SELECT @StatusId = Status_Id 
     FROM tbl_Status 
     WHERE Status_Code = @Status_Code AND Is_Active = 1;
 
 	
    IF @StatusId IS NULL
       BEGIN
            SELECT @Status_Code = ('StatusCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
            INSERT INTO tbl_Status (Status_Code, Status_Name,Created_On, Created_By, Created_IP)
            VALUES (@Status_Code, @Status_Name, GETDATE(), @Created_By, @Created_IP);
          SELECT SCOPE_IDENTITY()
       END
 
  END TRY   
 BEGIN CATCH    
    DECLARE @ErrorMessage VARCHAR(MAX);    
    SELECT @ErrorMessage ='SP ERROR : ADD Status  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
    RAISERROR (@ErrorMessage, 16, 1)   
 END CATCH
END
 
