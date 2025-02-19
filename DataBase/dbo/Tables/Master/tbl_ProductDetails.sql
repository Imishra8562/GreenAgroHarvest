CREATE TABLE [dbo].[tbl_ProductDetails]
(
	
	[ProductDetails_Id] INT IDENTITY(1,1) NOT NULL, 
    [ProductDetails_Code] NVARCHAR(MAX) NULL, 
    [Fk_ProductDetails_Id] Int NULL, 
    [ProductDetails_Name] NVARCHAR(MAX) NULL,
    [ProductDetails_Details] NVARCHAR(MAX) NULL,
    [ProductDetails_Image] NVARCHAR(MAX) NULL,
    

	[Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_ProductDetails_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR (MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR (MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1)
    CONSTRAINT [PK_tbl_ProductDetails] PRIMARY KEY CLUSTERED ([ProductDetails_Id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]
