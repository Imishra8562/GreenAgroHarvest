CREATE PROCEDURE [dbo].[sp_Update_Gallery]
	@Gallery_Id INT=NULL,
	@Gallery_Code NVARCHAR(MAX)=NULL,
    @Gallery_Name NVARCHAR(MAX)=NULL,
    @Gallery_Heading NVARCHAR(MAX)=NULL,
    @Gallery_Image NVARCHAR(MAX)=NULL,
    
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
             UPDATE tbl_Gallery SET Gallery_Name=@Gallery_Name,
                                    Gallery_Heading=@Gallery_Heading,
                                    Gallery_Image=@Gallery_Image,
                                    Modified_On=GetDate(),
                                    Modified_By=@Modified_By,
                                    Modified_IP=@Modified_IP
                        WHERE Gallery_Id=@Gallery_Id
                        SELECT @Gallery_Id;
   END TRY
   BEGIN CATCH
            DECLARE @ErrorMessage varchar(MAX);
           SELECT @ErrorMessage ='SP ERROR : UPDATE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END