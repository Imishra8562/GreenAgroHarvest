CREATE PROCEDURE [dbo].[sp_List_Gallery]
    @Gallery_Id INT=NULL

    As
    BEGIN 
       BEGIN TRY
               IF @Gallery_Id=0 SET @Gallery_Id=NUll
                SELECT * From tbl_Gallery Where  Gallery_Id=ISNULL(@Gallery_Id,Gallery_Id) AND Is_Active=1;
      
       END TRY
       BEGIN CATCH
                  DECLARE @ErrorMessage Varchar(MAX);
                  SELECT @ErrorMessage ='SP ERROR : LIST GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
	      RAISERROR (@ErrorMessage, 16, 1)   
       END CATCH
    END