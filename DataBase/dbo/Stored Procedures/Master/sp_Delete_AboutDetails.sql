﻿CREATE PROCEDURE [dbo].[sp_Delete_AboutDetails]
@AboutDetails_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_AboutDetails SET Is_Active=0,Modified_On=GETDATE() WHERE AboutDetails_Id=@AboutDetails_Id
   SELECT @AboutDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE AboutDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
