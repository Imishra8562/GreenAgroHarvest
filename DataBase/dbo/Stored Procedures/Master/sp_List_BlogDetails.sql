CREATE PROCEDURE [dbo].[sp_List_BlogDetails]
@BlogDetails_Id Int=NULL,
@Blog_Id Int=NULL
AS
BEGIN
BEGIN TRY     
 	
  IF @BlogDetails_Id=0 SET @BlogDetails_Id=Null
  IF @Blog_Id=0 SET @Blog_Id=Null
  select * from tbl_BlogDetails BD  
  INNER JOIN tbl_Blog B ON BD.Fk_Blog_Id=B.BLog_Id
  where BD.BlogDetails_Id=ISNULL(@BlogDetails_Id,BD.BlogDetails_Id)
  AND   BD.Fk_Blog_Id=ISNULL (@Blog_Id,Bd.FK_Blog_Id)   
  AND   BD.Is_Active=1
  ORDER BY BD.BlogDetails_Id 
 
 
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST BlogDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
   