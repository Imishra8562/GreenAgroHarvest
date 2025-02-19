CREATE PROCEDURE [dbo].[sp_List_Blog]
@Blog_Id INT=NULL

AS
BEGIN
BEGIN TRY     
 	
  if @Blog_Id=0 SET @Blog_Id=Null
  select * from tbl_Blog Where Blog_Id=ISNULL(@Blog_Id,Blog_Id )AND Is_Active=1;

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : List Blog FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END

