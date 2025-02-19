CREATE PROCEDURE [dbo].[sp_Add_Contact]
    @Contact_Code NVARCHAR(MAX)= NULL,  
    @Contact_Name NVARCHAR(MAX)=NULL,
    @Contact_Number NVARCHAR(MAX)= NULL,
    @Contact_Email NVARCHAR(MAX) =NULL,
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
	   
    DECLARE @ContactId INT
	SELECT @ContactId = Contact_Id 
    FROM tbl_Contact 
    WHERE Contact_Code = @Contact_Code AND Is_Active = 1;

	
   IF @ContactId IS NULL
      BEGIN
           SELECT @Contact_Code = 'ContactCode' + CAST(CAST(CONVERT(NUMERIC(8,0), RAND() * 8999999) + 1000000 AS NVARCHAR) AS NVARCHAR)
           --SELECT @Contact_Code = ('CC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Contact (Contact_Code,Contact_Name, Contact_Number,Contact_Email, Contact_Subject,Contact_Comment, Created_On, Created_By, Created_IP)
           VALUES (@Contact_Code,@Contact_Name, @Contact_Number,@Contact_Email, @Contact_Subject,@Contact_Comment, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Contact  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

      
     

