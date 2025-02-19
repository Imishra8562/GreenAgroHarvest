CREATE TABLE [dbo].[tbl_CustomberFeedback] 
(   
    [CustomberFeedback_Id] INT IDENTITY(1,1) NOT NULL, 
    [CustomberFeedback_Code] NVARCHAR(MAX) NULL, 
    [CustomberFeedback_Name] NVARCHAR(MAX) NULL, 
    [CustomberFeedback_Email] NVARCHAR(MAX) NULL, 
    [CustomberFeedback_Number] NVARCHAR(MAX) NULL, 
    [CustomberFeedback_Comment] NVARCHAR(MAX) NULL, 
    [Fk_Status_Id] INT NULL,

    [Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_CustomberFeedback_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR(MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR(MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1),

    CONSTRAINT [PK_tbl_CustomberFeedback] PRIMARY KEY CLUSTERED ([CustomberFeedback_Id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) ON [PRIMARY];
