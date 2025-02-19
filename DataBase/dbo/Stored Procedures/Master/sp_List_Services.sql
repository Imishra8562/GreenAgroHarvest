CREATE PROCEDURE [dbo].[sp_List_Services]
	@Services_Id INT=NULL

	As
	BEGIN 
	BEGIN TRY
	         
			 IF @Services_Id=0 SET @Services_Id=NULL
			 SELECT *From tbl_Services WHERE Services_Id=ISNULL(@Services_Id,Services_Id) And Is_Active=1;
    END TRY
	BEGIN CATCH
		   DECLARE @ErrorMessage nvarchar(max)
           SELECT @ErrorMessage ='SP ERROR : LIST SERVICES FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
	      RAISERROR (@ErrorMessage, 16, 1)   
    END CATCH    
END


