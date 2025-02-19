CREATE PROCEDURE [dbo].[sp_Delete_Services]
	@Services_Id INT

	AS
    BEGIN
	BEGIN TRY
	         
			  UPDATE tbl_Services Set Is_Active=0 ,Modified_On=GETDATE() WHERE  Services_Id=@Services_Id
			  SELECT @Services_Id 

  END TRY
  BEGIN CATCH
             DECLARE @ErrorMessage  varchar (MAX)
			 SELECT  @ErrorMessage ='SP ERROR : DELETE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()  
			 RAISERROR (@ErrorMessage, 16, 1)   
  END CATCH
  END

