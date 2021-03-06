USE [SFSM]
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet](
	[WalletID] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [int] NOT NULL,
	[DateCreated] [date] NOT NULL,
 CONSTRAINT [PK_Pocket] PRIMARY KEY CLUSTERED 
(
	[WalletID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[RoleNumber] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[BOD] [date] NOT NULL,
	[WalletID] [int] NOT NULL,
	[DateCreated] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NOT NULL,
	[ProviderName] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Picture] [nvarchar](50) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotiID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiverName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[NotiID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[SenderName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuyBalance]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuyBalance](
	[BBID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[WalletID] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_BuyBalance] PRIMARY KEY CLUSTERED 
(
	[BBID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceReview]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceReview](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ServiceReview] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[ProviderName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[ProviderName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/16/2018 16:33:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[ProviderName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_Pocket]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Pocket] FOREIGN KEY([WalletID])
REFERENCES [dbo].[Wallet] ([WalletID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Pocket]
GO
/****** Object:  ForeignKey [FK_Bill_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Account]
GO
/****** Object:  ForeignKey [FK_Bill_Service]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Service]
GO
/****** Object:  ForeignKey [FK_BuyBalance_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[BuyBalance]  WITH CHECK ADD  CONSTRAINT [FK_BuyBalance_Account] FOREIGN KEY([AccountName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[BuyBalance] CHECK CONSTRAINT [FK_BuyBalance_Account]
GO
/****** Object:  ForeignKey [FK_BuyBalance_Pocket]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[BuyBalance]  WITH CHECK ADD  CONSTRAINT [FK_BuyBalance_Pocket] FOREIGN KEY([WalletID])
REFERENCES [dbo].[Wallet] ([WalletID])
GO
ALTER TABLE [dbo].[BuyBalance] CHECK CONSTRAINT [FK_BuyBalance_Pocket]
GO
/****** Object:  ForeignKey [FK_Report_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Report_Account] FOREIGN KEY([SenderName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Report_Account]
GO
/****** Object:  ForeignKey [FK_Notification_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([ReceiverName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_Order_Product]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
/****** Object:  ForeignKey [FK_Order_Service]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service]
GO
/****** Object:  ForeignKey [FK_Product_Service]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Service]
GO
/****** Object:  ForeignKey [FK_Service_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Account] FOREIGN KEY([ProviderName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Account]
GO
/****** Object:  ForeignKey [FK_ServiceReview_Account]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[ServiceReview]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReview_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([AccountName])
GO
ALTER TABLE [dbo].[ServiceReview] CHECK CONSTRAINT [FK_ServiceReview_Account]
GO
/****** Object:  ForeignKey [FK_ServiceReview_Service]    Script Date: 07/16/2018 16:33:09 ******/
ALTER TABLE [dbo].[ServiceReview]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReview_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[ServiceReview] CHECK CONSTRAINT [FK_ServiceReview_Service]
GO
