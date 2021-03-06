USE [a7barDB]
GO
/****** Object:  Table [dbo].[auser]    Script Date: 11/04/2019 11:38:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auser](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[uName] [nvarchar](50) NULL,
	[uPassword] [nvarchar](50) NULL,
 CONSTRAINT [PK_auser] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[brand]    Script Date: 11/04/2019 11:38:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[braID] [int] IDENTITY(1,1) NOT NULL,
	[brand_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[braID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_fail]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_fail](
	[crtfID] [int] IDENTITY(1,1) NOT NULL,
	[cartfID] [int] NULL,
	[cartf_quantity] [int] NULL,
	[cartf_trans_date] [int] NULL,
 CONSTRAINT [PK_cart_fail] PRIMARY KEY CLUSTERED 
(
	[crtfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_running]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_running](
	[crtrID] [int] IDENTITY(1,1) NOT NULL,
	[cartrID] [int] NULL,
	[cartr_Quantity] [int] NULL,
	[crtr_trans_date] [date] NULL,
 CONSTRAINT [PK_cart_running] PRIMARY KEY CLUSTERED 
(
	[crtrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[depID] [int] IDENTITY(1,1) NOT NULL,
	[department_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[depID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[deps_stock]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deps_stock](
	[dsid] [int] IDENTITY(1,1) NOT NULL,
	[cartdsID] [int] NULL,
	[Quantity] [int] NULL,
	[dsTransDate] [datetime] NULL,
	[depID] [int] NULL,
	[sect_id] [int] NULL,
	[station_idd] [int] NULL,
 CONSTRAINT [PK_deps_stock] PRIMARY KEY CLUSTERED 
(
	[dsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inctype]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inctype](
	[tID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](500) NULL,
 CONSTRAINT [PK_inctype] PRIMARY KEY CLUSTERED 
(
	[tID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[model]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model](
	[modID] [int] IDENTITY(1,1) NOT NULL,
	[brandID] [int] NULL,
	[modName] [nvarchar](500) NULL,
	[inc_Type] [int] NULL,
	[printer_id] [int] NULL,
	[model_type] [int] NULL,
 CONSTRAINT [PK_model] PRIMARY KEY CLUSTERED 
(
	[modID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mtype]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtype](
	[mtID] [int] IDENTITY(1,1) NOT NULL,
	[mType_name] [nvarchar](500) NULL,
 CONSTRAINT [PK_mtype] PRIMARY KEY CLUSTERED 
(
	[mtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[printer]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[printer](
	[prID] [int] IDENTITY(1,1) NOT NULL,
	[printer_name] [nvarchar](500) NULL,
 CONSTRAINT [PK_printer] PRIMARY KEY CLUSTERED 
(
	[prID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[section]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[section](
	[secID] [int] IDENTITY(1,1) NOT NULL,
	[sec_Name] [nvarchar](100) NULL,
	[department_id] [int] NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[secID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sector]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sector](
	[sectID] [int] IDENTITY(1,1) NOT NULL,
	[sector_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_sector] PRIMARY KEY CLUSTERED 
(
	[sectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[station]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[station](
	[stID] [int] IDENTITY(1,1) NOT NULL,
	[stationName] [nvarchar](100) NULL,
	[sector_ID] [int] NULL,
 CONSTRAINT [PK_station] PRIMARY KEY CLUSTERED 
(
	[stID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stoke]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stoke](
	[stkID] [int] IDENTITY(1,1) NOT NULL,
	[cart_id] [int] NULL,
	[cart_quantity] [int] NULL,
	[trans_date] [date] NULL,
 CONSTRAINT [PK_stoke] PRIMARY KEY CLUSTERED 
(
	[stkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_model]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_model]
AS
SELECT        dbo.model.modID, dbo.model.modName, dbo.inctype.tID, dbo.inctype.Type, dbo.mtype.mtID, dbo.mtype.mType_name, dbo.printer.prID, dbo.printer.printer_name
FROM            dbo.inctype INNER JOIN
                         dbo.model ON dbo.inctype.tID = dbo.model.inc_Type INNER JOIN
                         dbo.mtype ON dbo.model.model_type = dbo.mtype.mtID INNER JOIN
                         dbo.printer ON dbo.model.printer_id = dbo.printer.prID

GO
/****** Object:  View [dbo].[View_stock]    Script Date: 11/04/2019 11:38:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_stock]
AS
SELECT        dbo.stoke.stkID, dbo.stoke.cart_quantity, dbo.stoke.trans_date, dbo.inctype.tID, dbo.inctype.Type, dbo.model.modID, dbo.model.modName, dbo.mtype.mtID, dbo.mtype.mType_name, dbo.printer.prID, 
                         dbo.printer.printer_name
FROM            dbo.inctype INNER JOIN
                         dbo.model ON dbo.inctype.tID = dbo.model.inc_Type INNER JOIN
                         dbo.mtype ON dbo.model.model_type = dbo.mtype.mtID INNER JOIN
                         dbo.printer ON dbo.model.printer_id = dbo.printer.prID INNER JOIN
                         dbo.stoke ON dbo.model.modID = dbo.stoke.cart_id

GO
ALTER TABLE [dbo].[cart_fail]  WITH CHECK ADD  CONSTRAINT [FK_cart_fail_model] FOREIGN KEY([cartfID])
REFERENCES [dbo].[model] ([modID])
GO
ALTER TABLE [dbo].[cart_fail] CHECK CONSTRAINT [FK_cart_fail_model]
GO
ALTER TABLE [dbo].[cart_running]  WITH CHECK ADD  CONSTRAINT [FK_cart_running_model] FOREIGN KEY([cartrID])
REFERENCES [dbo].[model] ([modID])
GO
ALTER TABLE [dbo].[cart_running] CHECK CONSTRAINT [FK_cart_running_model]
GO
ALTER TABLE [dbo].[deps_stock]  WITH CHECK ADD  CONSTRAINT [FK_deps_stock_department] FOREIGN KEY([depID])
REFERENCES [dbo].[department] ([depID])
GO
ALTER TABLE [dbo].[deps_stock] CHECK CONSTRAINT [FK_deps_stock_department]
GO
ALTER TABLE [dbo].[deps_stock]  WITH CHECK ADD  CONSTRAINT [FK_deps_stock_sector] FOREIGN KEY([sect_id])
REFERENCES [dbo].[sector] ([sectID])
GO
ALTER TABLE [dbo].[deps_stock] CHECK CONSTRAINT [FK_deps_stock_sector]
GO
ALTER TABLE [dbo].[deps_stock]  WITH CHECK ADD  CONSTRAINT [FK_deps_stock_station] FOREIGN KEY([station_idd])
REFERENCES [dbo].[station] ([stID])
GO
ALTER TABLE [dbo].[deps_stock] CHECK CONSTRAINT [FK_deps_stock_station]
GO
ALTER TABLE [dbo].[model]  WITH CHECK ADD  CONSTRAINT [FK_model_brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[brand] ([braID])
GO
ALTER TABLE [dbo].[model] CHECK CONSTRAINT [FK_model_brand]
GO
ALTER TABLE [dbo].[model]  WITH CHECK ADD  CONSTRAINT [FK_model_inctype] FOREIGN KEY([inc_Type])
REFERENCES [dbo].[inctype] ([tID])
GO
ALTER TABLE [dbo].[model] CHECK CONSTRAINT [FK_model_inctype]
GO
ALTER TABLE [dbo].[model]  WITH CHECK ADD  CONSTRAINT [FK_model_mtype] FOREIGN KEY([model_type])
REFERENCES [dbo].[mtype] ([mtID])
GO
ALTER TABLE [dbo].[model] CHECK CONSTRAINT [FK_model_mtype]
GO
ALTER TABLE [dbo].[model]  WITH CHECK ADD  CONSTRAINT [FK_model_printer] FOREIGN KEY([printer_id])
REFERENCES [dbo].[printer] ([prID])
GO
ALTER TABLE [dbo].[model] CHECK CONSTRAINT [FK_model_printer]
GO
ALTER TABLE [dbo].[section]  WITH CHECK ADD  CONSTRAINT [FK_section_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([depID])
GO
ALTER TABLE [dbo].[section] CHECK CONSTRAINT [FK_section_department]
GO
ALTER TABLE [dbo].[station]  WITH CHECK ADD  CONSTRAINT [FK_station_sector] FOREIGN KEY([sector_ID])
REFERENCES [dbo].[sector] ([sectID])
GO
ALTER TABLE [dbo].[station] CHECK CONSTRAINT [FK_station_sector]
GO
ALTER TABLE [dbo].[stoke]  WITH CHECK ADD  CONSTRAINT [FK_stoke_model] FOREIGN KEY([cart_id])
REFERENCES [dbo].[model] ([modID])
GO
ALTER TABLE [dbo].[stoke] CHECK CONSTRAINT [FK_stoke_model]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "inctype"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 153
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "model"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 193
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mtype"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 128
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "printer"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 102
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "inctype"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 180
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "model"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 186
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mtype"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 165
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "printer"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 166
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stoke"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 195
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_stock'
GO
