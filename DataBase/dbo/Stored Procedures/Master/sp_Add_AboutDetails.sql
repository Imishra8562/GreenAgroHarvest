CREATE PROCEDURE [dbo].[sp_Add_AboutDetails]
@AboutDetails_Code NVARCHAR(MAX)=NULL,
@Fk_About_Id Int=NULL,
@Fk_Banner_Id Int=Null,
@About_Details NVARCHAR(MAX)=NULL,

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
	   
    DECLARE @AboutDetailsId INT
	SELECT @AboutDetailsId = AboutDetails_Id 
    FROM tbl_AboutDetails 
    WHERE AboutDetails_Code = @AboutDetails_Code AND Is_Active = 1;

	
   IF @AboutDetailsId IS NULL
      BEGIN
           SELECT @AboutDetails_Code = ('ADC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_AboutDetails (AboutDetails_Code, Fk_About_Id ,Fk_Banner_Id, About_Details, Created_On, Created_By, Created_IP)
           VALUES (@AboutDetails_Code,@Fk_About_Id,@Fk_Banner_Id,@About_Details, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD AboutDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

