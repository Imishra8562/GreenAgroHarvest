CREATE TABLE [dbo].[tbl_User]
(
	[User_Id] INT IDENTITY(1,1) NOT NULL, 
    [Registration_No] NVARCHAR(MAX) NULL, 
    [User_Name] NVARCHAR(MAX) NULL, 
    [Display_Name] NVARCHAR(MAX) NULL, 
    [Mobile_No] NVARCHAR(MAX) NULL, 
    [Email_Id] NVARCHAR(MAX) NULL, 
    [Password] VARBINARY(MAX) NULL, 
    [FK_User_Role_Id] INT NULL, 
    [Is_Locked] BIT NOT NULL, 
    [Last_Login] DATETIME NULL, 

   
    [Created_On] DATETIME NOT NULL DEFAULT (GETDATE()), 
    [Created_By] INT NOT NULL, 
    [Created_IP] NVARCHAR(MAX) NULL, 
    [Modified_On] DATETIME NULL, 
    [Modified_By] INT NULL,    
    [Modified_IP] NVARCHAR(MAX) NULL, 
    [Is_Active] BIT NOT NULL DEFAULT (1)
CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED ([User_Id] ASC)
 WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]
