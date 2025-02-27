﻿CREATE TABLE [dbo].[tbl_Status]
(
    [Status_Id] INT IDENTITY(1,1) NOT NULL, 
    [Status_Code] NVARCHAR(MAX) NULL, 
    [Status_Name] NVARCHAR(MAX) NULL,

    [Created_On] DATETIME NOT NULL CONSTRAINT DF_tbl_Status_Created_On DEFAULT (GETDATE()),
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR(MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL, 
    [Modified_IP] NVARCHAR(MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1),

    CONSTRAINT [PK_tbl_Status] PRIMARY KEY CLUSTERED ([Status_Id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) ON [PRIMARY];
