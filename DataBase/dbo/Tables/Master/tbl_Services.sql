CREATE TABLE [dbo].[tbl_Services]
(
	[Services_Id] INT  IDENTITY(1,1)NOT NULL, 
    [Services_Code] NVARCHAR(MAX) NULL, 
    [Services_Heading] NVARCHAR(MAX) NULL, 
    [Services_Description] NVARCHAR(MAX) NULL, 
    [Services_Image] NVARCHAR(MAX) NULL ,

    [Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_Services_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR (MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR (MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1)
    CONSTRAINT [PK_tbl_Services] PRIMARY KEY CLUSTERED ([Services_Id] ASC)
    WITH 
        (
        PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
        ) 
        ON [PRIMARY]
    ) ON [PRIMARY]



