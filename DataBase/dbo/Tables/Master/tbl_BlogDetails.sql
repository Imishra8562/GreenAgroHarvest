CREATE TABLE [dbo].[tbl_BlogDetails]
(
	[BlogDetails_Id] INT Identity(1,1) NOT NULL,
    [BlogDetails_Code] NVARCHAR(MAX) NULL, 
    [Fk_Blog_Id] INT NULL, 
    [BlogDetails_Description] NVARCHAR(MAX) NULL, 
    [BlogDetails_Description1] nvarchar(Max) NULL,
    [BlogDetails_Image] NVARCHAR(MAX) NULL, 
    [BlogDetails_ImageA] NVARCHAR(MAX) NULL, 
    [BlogDetails_ImageB] NVARCHAR(MAX) NULL, 
    [BlogDetails_Heading] NVARCHAR(MAX) NULL,
     
    [Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_BlogDetails_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR (MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR (MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1)
    CONSTRAINT [PK_tbl_BlogDetails] PRIMARY KEY CLUSTERED ([BlogDetails_Id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

