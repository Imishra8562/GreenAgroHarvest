CREATE TABLE [dbo].[tbl_Contact]
(    
	[Contact_Id] INT IDENTITY(1,1) NOT NULL,
    [Contact_Code] NVARCHAR(Max)Null,
    [Contact_Name] NVARCHAR(Max) Null,
    [Contact_Number] NVARCHAR(MAX) Null,
    [Contact_Email] NVARCHAR(MAX) NULL,
    [Contact_Subject] NVARCHAR(MAX) NULL,
    [Contact_Comment] NVARCHAR(MAX) NULL,


    [Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_Contact_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR(MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR(MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1),

    CONSTRAINT [PK_tbl_Contact] PRIMARY KEY CLUSTERED ([Contact_Id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) ON [PRIMARY];

