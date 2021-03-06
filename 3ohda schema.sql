USE [nozomDB]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 11/04/2019 11:35:14 AM ******/
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
/****** Object:  Table [dbo].[cat]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat](
	[catID] [int] IDENTITY(1,1) NOT NULL,
	[catName] [nvarchar](100) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[component]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[component](
	[comID] [int] IDENTITY(1,1) NOT NULL,
	[com_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_component] PRIMARY KEY CLUSTERED 
(
	[comID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[component_detail]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[component_detail](
	[com_d_id] [int] IDENTITY(1,1) NOT NULL,
	[com_detail] [nvarchar](50) NULL,
	[unite_id] [int] NULL,
	[component_id] [int] NULL,
	[brand_id] [int] NULL,
	[product_id] [int] NULL,
	[model_id] [int] NULL,
	[category_id] [int] NULL,
	[subCategory_id] [int] NULL,
	[serial] [nvarchar](100) NULL,
	[barCode] [nvarchar](100) NULL,
 CONSTRAINT [PK_component_detail] PRIMARY KEY CLUSTERED 
(
	[com_d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[convenant_event]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[convenant_event](
	[eveID] [int] IDENTITY(1,1) NOT NULL,
	[depaertment_id] [int] NULL,
	[section_id] [int] NULL,
	[sector_id] [int] NULL,
	[station_id] [int] NULL,
	[employee_id] [int] NULL,
	[dep_reg_date] [nvarchar](50) NULL,
	[stock_ID] [int] NULL,
	[transfare_to] [int] NULL,
	[transfare_date] [nvarchar](50) NULL,
	[reback] [bit] NULL,
 CONSTRAINT [PK_convenant_event] PRIMARY KEY CLUSTERED 
(
	[eveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 11/04/2019 11:35:14 AM ******/
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
/****** Object:  Table [dbo].[employee]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[emp_Name] [nvarchar](300) NULL,
	[department_id] [int] NULL,
	[section_id] [int] NULL,
	[sector_id] [int] NULL,
	[station_id] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[measurement_Unite]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[measurement_Unite](
	[unID] [int] IDENTITY(1,1) NOT NULL,
	[un_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_measurement_Unite] PRIMARY KEY CLUSTERED 
(
	[unID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ment_stok]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ment_stok](
	[ms_id] [int] IDENTITY(1,1) NOT NULL,
	[ms_brand_id] [int] NULL,
	[ms_comp_id] [int] NULL,
	[ms_comp_detail_int] [int] NULL,
	[ms_mesurment_id] [int] NULL,
	[ms_quantity] [int] NULL,
	[ms_serial_number] [int] NULL,
	[ms_add_date] [int] NULL,
 CONSTRAINT [PK_ment_stok] PRIMARY KEY CLUSTERED 
(
	[ms_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[model]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model](
	[modID] [int] IDENTITY(1,1) NOT NULL,
	[modelName] [nvarchar](50) NULL,
 CONSTRAINT [PK_model] PRIMARY KEY CLUSTERED 
(
	[modID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[privilege]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[privilege](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[modelID] [int] NULL,
 CONSTRAINT [PK_privilege] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[proID] [int] IDENTITY(1,1) NOT NULL,
	[pro_Name] [nvarchar](100) NULL,
	[brand_id] [int] NULL,
	[subCategory_id] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_model]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_model](
	[modID] [int] IDENTITY(1,1) NOT NULL,
	[model_Name] [nvarchar](100) NULL,
	[productID] [int] NULL,
	[brandID] [int] NULL,
 CONSTRAINT [PK_product_model] PRIMARY KEY CLUSTERED 
(
	[modID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[section]    Script Date: 11/04/2019 11:35:14 AM ******/
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
/****** Object:  Table [dbo].[sector]    Script Date: 11/04/2019 11:35:14 AM ******/
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
/****** Object:  Table [dbo].[station]    Script Date: 11/04/2019 11:35:14 AM ******/
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
/****** Object:  Table [dbo].[stock_detail]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock_detail](
	[std_id] [int] IDENTITY(1,1) NOT NULL,
	[stockID] [int] NULL,
	[component_id] [int] NULL,
	[component_detail_id] [int] NULL,
	[comSerialNumber] [nvarchar](100) NULL,
	[unitID] [int] NULL,
 CONSTRAINT [PK_stock_detail] PRIMARY KEY CLUSTERED 
(
	[std_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stocke]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stocke](
	[stoID] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[subCategory_id] [int] NULL,
	[brand_id] [int] NULL,
	[product_id] [int] NULL,
	[product_model_id] [int] NULL,
	[serial_Numer] [nvarchar](100) NULL,
	[service_tage] [nvarchar](100) NULL,
	[barcode] [nvarchar](100) NULL,
	[registration_date] [date] NULL,
	[waranty_start_date] [date] NULL,
	[waranty_end_date] [date] NULL,
	[personal_covenant] [bit] NULL,
	[fixed_Asset] [bit] NULL,
	[covenant_info_dep] [bit] NULL,
	[stock] [bit] NULL,
	[deducted_stock_balance] [bit] NULL,
	[reback] [bit] NULL,
 CONSTRAINT [PK_stocke] PRIMARY KEY CLUSTERED 
(
	[stoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[subCat] [int] IDENTITY(1,1) NOT NULL,
	[subCat_Name] [nvarchar](100) NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[subCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NULL,
	[upassword] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[bran_product_subcat]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bran_product_subcat]
AS
SELECT        dbo.brand.braID, dbo.brand.brand_Name, dbo.product.proID, dbo.product.pro_Name, dbo.SubCategory.subCat, dbo.SubCategory.subCat_Name
FROM            dbo.brand INNER JOIN
                         dbo.product ON dbo.brand.braID = dbo.product.brand_id INNER JOIN
                         dbo.SubCategory ON dbo.product.subCategory_id = dbo.SubCategory.subCat

GO
/****** Object:  View [dbo].[brand_product_model]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[brand_product_model]
AS
SELECT        dbo.brand.braID, dbo.brand.brand_Name, dbo.product.proID, dbo.product.pro_Name, dbo.product_model.modID, dbo.product_model.model_Name
FROM            dbo.brand INNER JOIN
                         dbo.product ON dbo.brand.braID = dbo.product.brand_id INNER JOIN
                         dbo.product_model ON dbo.brand.braID = dbo.product_model.brandID AND dbo.product.proID = dbo.product_model.productID

GO
/****** Object:  View [dbo].[cat_subCat]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cat_subCat]
AS
SELECT        dbo.cat.catID, dbo.cat.catName, dbo.SubCategory.subCat, dbo.SubCategory.subCat_Name
FROM            dbo.cat INNER JOIN
                         dbo.SubCategory ON dbo.cat.catID = dbo.SubCategory.category_id

GO
/****** Object:  View [dbo].[comDetail]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[comDetail]
AS
SELECT        dbo.component.comID, dbo.component.com_Name, dbo.component_detail.com_d_id, dbo.component_detail.com_detail, dbo.component_detail.serial, dbo.component_detail.barCode, 
                         dbo.measurement_Unite.unID, dbo.measurement_Unite.un_Name
FROM            dbo.component INNER JOIN
                         dbo.component_detail ON dbo.component.comID = dbo.component_detail.component_id INNER JOIN
                         dbo.measurement_Unite ON dbo.component_detail.unite_id = dbo.measurement_Unite.unID

GO
/****** Object:  View [dbo].[dep-sec]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dep-sec]
AS
SELECT        dbo.department.depID, dbo.department.department_Name, dbo.section.secID, dbo.section.sec_Name
FROM            dbo.department INNER JOIN
                         dbo.section ON dbo.department.depID = dbo.section.department_id

GO
/****** Object:  View [dbo].[emp_dep]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[emp_dep]
AS
SELECT        dbo.department.depID, dbo.department.department_Name, dbo.employee.empID, dbo.employee.emp_Name, dbo.section.secID, dbo.section.sec_Name, dbo.sector.sectID, dbo.sector.sector_name, 
                         dbo.station.stID, dbo.station.stationName
FROM            dbo.department INNER JOIN
                         dbo.employee ON dbo.department.depID = dbo.employee.department_id INNER JOIN
                         dbo.section ON dbo.department.depID = dbo.section.department_id AND dbo.employee.section_id = dbo.section.secID INNER JOIN
                         dbo.sector ON dbo.employee.sector_id = dbo.sector.sectID INNER JOIN
                         dbo.station ON dbo.employee.station_id = dbo.station.stID AND dbo.sector.sectID = dbo.station.sector_ID

GO
/****** Object:  View [dbo].[general_all]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[general_all]
AS
SELECT        dbo.stocke.stoID, dbo.stocke.personal_covenant, dbo.stocke.fixed_Asset, dbo.stocke.covenant_info_dep, dbo.stocke.stock, dbo.stocke.deducted_stock_balance, dbo.department.depID, 
                         dbo.department.department_Name, dbo.section.secID, dbo.section.sec_Name, dbo.sector.sectID, dbo.sector.sector_name, dbo.station.stID, dbo.station.stationName, dbo.SubCategory.subCat, 
                         dbo.SubCategory.subCat_Name, dbo.stocke.serial_Numer, dbo.stocke.service_tage, dbo.stocke.barcode, dbo.brand.braID, dbo.brand.brand_Name, dbo.product_model.modID, dbo.product_model.model_Name, 
                         dbo.stocke.registration_date
FROM            dbo.SubCategory INNER JOIN
                         dbo.stocke ON dbo.SubCategory.subCat = dbo.stocke.subCategory_id INNER JOIN
                         dbo.brand ON dbo.stocke.brand_id = dbo.brand.braID INNER JOIN
                         dbo.product_model ON dbo.stocke.product_model_id = dbo.product_model.modID AND dbo.brand.braID = dbo.product_model.brandID FULL OUTER JOIN
                         dbo.station INNER JOIN
                         dbo.sector ON dbo.station.sector_ID = dbo.sector.sectID RIGHT OUTER JOIN
                         dbo.convenant_event ON dbo.station.stID = dbo.convenant_event.station_id AND dbo.sector.sectID = dbo.convenant_event.sector_id LEFT OUTER JOIN
                         dbo.department INNER JOIN
                         dbo.section ON dbo.department.depID = dbo.section.department_id ON dbo.convenant_event.depaertment_id = dbo.department.depID AND dbo.convenant_event.section_id = dbo.section.secID ON 
                         dbo.stocke.stoID = dbo.convenant_event.stock_ID

GO
/****** Object:  View [dbo].[sec_station]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sec_station]
AS
SELECT        dbo.sector.sectID, dbo.sector.sector_name, dbo.station.stID, dbo.station.stationName
FROM            dbo.sector INNER JOIN
                         dbo.station ON dbo.sector.sectID = dbo.station.sector_ID

GO
/****** Object:  View [dbo].[stock_report]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stock_report]
AS
SELECT        dbo.cat.catID, dbo.cat.catName, dbo.SubCategory.subCat, dbo.SubCategory.subCat_Name, dbo.brand.braID, dbo.brand.brand_Name, dbo.product.proID, dbo.product.pro_Name, dbo.product_model.modID, 
                         dbo.product_model.model_Name, dbo.stocke.stoID, dbo.stocke.serial_Numer, dbo.stocke.service_tage, dbo.stocke.barcode, dbo.stocke.registration_date, dbo.stocke.waranty_start_date, 
                         dbo.stocke.waranty_end_date, dbo.stocke.reback, dbo.stocke.deducted_stock_balance, dbo.stocke.stock, dbo.stocke.covenant_info_dep, dbo.stocke.fixed_Asset, dbo.stocke.personal_covenant
FROM            dbo.brand INNER JOIN
                         dbo.product ON dbo.brand.braID = dbo.product.brand_id INNER JOIN
                         dbo.product_model ON dbo.brand.braID = dbo.product_model.brandID AND dbo.product.proID = dbo.product_model.productID INNER JOIN
                         dbo.stocke ON dbo.brand.braID = dbo.stocke.brand_id AND dbo.product.proID = dbo.stocke.product_id AND dbo.product_model.modID = dbo.stocke.product_model_id INNER JOIN
                         dbo.cat ON dbo.stocke.category_id = dbo.cat.catID INNER JOIN
                         dbo.SubCategory ON dbo.product.subCategory_id = dbo.SubCategory.subCat AND dbo.stocke.subCategory_id = dbo.SubCategory.subCat AND dbo.cat.catID = dbo.SubCategory.category_id

GO
/****** Object:  View [dbo].[stock-full-technical-detail]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stock-full-technical-detail]
AS
SELECT        dbo.stocke.stoID, dbo.stocke.serial_Numer, dbo.stocke.service_tage, dbo.stocke.barcode, dbo.component.com_Name, dbo.component_detail.com_detail, dbo.measurement_Unite.unID, 
                         dbo.measurement_Unite.un_Name, dbo.component_detail.serial, component_detail_1.component_id, component_detail_1.serial AS Expr1, dbo.stock_detail.comSerialNumber, dbo.stock_detail.std_id
FROM            dbo.component INNER JOIN
                         dbo.component_detail ON dbo.component.comID = dbo.component_detail.component_id INNER JOIN
                         dbo.measurement_Unite ON dbo.component_detail.unite_id = dbo.measurement_Unite.unID INNER JOIN
                         dbo.component_detail AS component_detail_1 ON dbo.component.comID = component_detail_1.component_id AND dbo.measurement_Unite.unID = component_detail_1.unite_id INNER JOIN
                         dbo.stock_detail ON dbo.component.comID = dbo.stock_detail.component_id AND dbo.component_detail.com_d_id = dbo.stock_detail.component_detail_id AND 
                         dbo.measurement_Unite.unID = dbo.stock_detail.unitID AND component_detail_1.com_d_id = dbo.stock_detail.component_detail_id INNER JOIN
                         dbo.stocke ON dbo.stock_detail.stockID = dbo.stocke.stoID

GO
/****** Object:  View [dbo].[View_3ohda_location]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_3ohda_location]
AS
SELECT        dbo.stocke.stoID, dbo.stocke.serial_Numer, dbo.stocke.service_tage, dbo.stocke.barcode, dbo.stocke.registration_date, dbo.stocke.fixed_Asset, dbo.stocke.personal_covenant, dbo.stocke.covenant_info_dep, 
                         dbo.stocke.stock, dbo.cat.catID, dbo.cat.catName, dbo.SubCategory.subCat, dbo.SubCategory.subCat_Name, dbo.convenant_event.eveID, dbo.convenant_event.depaertment_id, dbo.convenant_event.section_id, 
                         dbo.convenant_event.sector_id, dbo.convenant_event.section_id AS Expr1, dbo.convenant_event.transfare_date, dbo.convenant_event.station_id, dbo.brand.braID, dbo.brand.brand_Name, 
                         dbo.product_model.modID, dbo.product_model.model_Name, dbo.product.proID, dbo.product.pro_Name, dbo.department.depID, dbo.department.department_Name, dbo.section.secID, dbo.section.sec_Name, 
                         dbo.sector.sectID, dbo.sector.sector_name, dbo.station.stID, dbo.station.stationName, dbo.employee.emp_Name, dbo.employee.empID
FROM            dbo.stocke LEFT OUTER JOIN
                         dbo.cat ON dbo.stocke.category_id = dbo.cat.catID LEFT OUTER JOIN
                         dbo.SubCategory ON dbo.stocke.subCategory_id = dbo.SubCategory.subCat LEFT OUTER JOIN
                         dbo.convenant_event ON dbo.stocke.stoID = dbo.convenant_event.stock_ID LEFT OUTER JOIN
                         dbo.brand ON dbo.stocke.brand_id = dbo.brand.braID LEFT OUTER JOIN
                         dbo.product_model ON dbo.stocke.product_model_id = dbo.product_model.modID LEFT OUTER JOIN
                         dbo.product ON dbo.stocke.product_id = dbo.product.proID LEFT OUTER JOIN
                         dbo.department ON dbo.convenant_event.depaertment_id = dbo.department.depID LEFT OUTER JOIN
                         dbo.section ON dbo.convenant_event.section_id = dbo.section.secID LEFT OUTER JOIN
                         dbo.sector ON dbo.convenant_event.sector_id = dbo.sector.sectID LEFT OUTER JOIN
                         dbo.station ON dbo.convenant_event.station_id = dbo.station.stID LEFT OUTER JOIN
                         dbo.employee ON dbo.convenant_event.employee_id = dbo.employee.empID

GO
/****** Object:  View [dbo].[View_conv_location]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_conv_location]
AS
SELECT        dbo.stocke.stoID, dbo.stocke.serial_Numer, dbo.stocke.service_tage, dbo.stocke.barcode, dbo.sector.sectID, dbo.sector.sector_name, dbo.station.stID, dbo.station.stationName, 
                         dbo.convenant_event.dep_reg_date, dbo.convenant_event.transfare_date, dbo.convenant_event.transfare_to, dbo.convenant_event.reback, dbo.department.depID, dbo.department.department_Name, 
                         dbo.section.secID, dbo.section.sec_Name
FROM            dbo.convenant_event LEFT OUTER JOIN
                         dbo.sector ON dbo.convenant_event.sector_id = dbo.sector.sectID LEFT OUTER JOIN
                         dbo.station ON dbo.convenant_event.station_id = dbo.station.stID AND dbo.sector.sectID = dbo.station.sector_ID LEFT OUTER JOIN
                         dbo.stocke ON dbo.convenant_event.stock_ID = dbo.stocke.stoID LEFT OUTER JOIN
                         dbo.section ON dbo.convenant_event.section_id = dbo.section.secID LEFT OUTER JOIN
                         dbo.department ON dbo.section.department_id = dbo.department.depID AND dbo.convenant_event.depaertment_id = dbo.department.depID

GO
/****** Object:  View [dbo].[view_convenant]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_convenant]
AS
SELECT        dbo.convenant_event.sector_id, dbo.sector.sector_name, dbo.convenant_event.station_id, dbo.station.stationName, dbo.convenant_event.dep_reg_date, dbo.convenant_event.stock_ID, 
                         dbo.convenant_event.transfare_date, dbo.convenant_event.reback, dbo.convenant_event.depaertment_id, dbo.department.department_Name, dbo.convenant_event.section_id, dbo.section.sec_Name
FROM            dbo.convenant_event LEFT OUTER JOIN
                         dbo.department ON dbo.convenant_event.depaertment_id = dbo.department.depID LEFT OUTER JOIN
                         dbo.station ON dbo.convenant_event.station_id = dbo.station.stID LEFT OUTER JOIN
                         dbo.sector ON dbo.station.sector_ID = dbo.sector.sectID AND dbo.convenant_event.sector_id = dbo.sector.sectID LEFT OUTER JOIN
                         dbo.section ON dbo.convenant_event.section_id = dbo.section.secID AND dbo.department.depID = dbo.section.department_id

GO
/****** Object:  View [dbo].[View_Emp]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Emp]
AS
SELECT        dbo.employee.empID, dbo.employee.emp_Name, dbo.department.depID, dbo.department.department_Name, dbo.section.secID, dbo.section.sec_Name, dbo.sector.sectID, dbo.sector.sector_name, 
                         dbo.station.stID, dbo.station.stationName
FROM            dbo.employee LEFT OUTER JOIN
                         dbo.department ON dbo.employee.department_id = dbo.department.depID LEFT OUTER JOIN
                         dbo.section ON dbo.employee.section_id = dbo.section.secID LEFT OUTER JOIN
                         dbo.sector ON dbo.employee.sector_id = dbo.sector.sectID LEFT OUTER JOIN
                         dbo.station ON dbo.employee.station_id = dbo.station.stID

GO
/****** Object:  View [dbo].[View_Gen_report_location]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Gen_report_location]
AS
SELECT        dbo.convenant_event.eveID, dbo.stocke.stoID, dbo.SubCategory.subCat, dbo.SubCategory.subCat_Name, dbo.brand.braID, dbo.brand.brand_Name, dbo.product.pro_Name, dbo.product_model.modID, 
                         dbo.product_model.model_Name, dbo.stocke.serial_Numer, dbo.stocke.registration_date, dbo.department.department_Name, dbo.section.sec_Name, dbo.sector.sector_name, dbo.station.stationName, 
                         dbo.stocke.stock, dbo.stocke.fixed_Asset, dbo.stocke.covenant_info_dep, dbo.stocke.personal_covenant
FROM            dbo.stocke LEFT OUTER JOIN
                         dbo.convenant_event ON dbo.convenant_event.stock_ID = dbo.stocke.stoID LEFT OUTER JOIN
                         dbo.SubCategory ON dbo.stocke.subCategory_id = dbo.SubCategory.subCat LEFT OUTER JOIN
                         dbo.brand ON dbo.stocke.brand_id = dbo.brand.braID LEFT OUTER JOIN
                         dbo.product ON dbo.stocke.product_id = dbo.product.proID LEFT OUTER JOIN
                         dbo.product_model ON dbo.stocke.product_model_id = dbo.product_model.modID LEFT OUTER JOIN
                         dbo.department ON dbo.convenant_event.depaertment_id = dbo.department.depID LEFT OUTER JOIN
                         dbo.section ON dbo.convenant_event.section_id = dbo.section.secID LEFT OUTER JOIN
                         dbo.sector ON dbo.convenant_event.sector_id = dbo.sector.sectID LEFT OUTER JOIN
                         dbo.station ON dbo.convenant_event.station_id = dbo.station.stID

GO
/****** Object:  View [dbo].[View_user_privilege]    Script Date: 11/04/2019 11:35:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_user_privilege]
AS
SELECT        dbo.privilege.pid, dbo.[user].uid, dbo.[user].uname, dbo.[user].upassword, dbo.model.modID, dbo.model.modelName
FROM            dbo.privilege LEFT OUTER JOIN
                         dbo.[user] ON dbo.privilege.userID = dbo.[user].uid LEFT OUTER JOIN
                         dbo.model ON dbo.privilege.modelID = dbo.model.modID

GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([braID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_brand]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[cat] ([catID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_category]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_component] FOREIGN KEY([component_id])
REFERENCES [dbo].[component] ([comID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_component]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_measurement_Unite] FOREIGN KEY([unite_id])
REFERENCES [dbo].[measurement_Unite] ([unID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_measurement_Unite]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([proID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_product]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_product_model] FOREIGN KEY([model_id])
REFERENCES [dbo].[product_model] ([modID])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_product_model]
GO
ALTER TABLE [dbo].[component_detail]  WITH CHECK ADD  CONSTRAINT [FK_component_detail_SubCategory] FOREIGN KEY([subCategory_id])
REFERENCES [dbo].[SubCategory] ([subCat])
GO
ALTER TABLE [dbo].[component_detail] CHECK CONSTRAINT [FK_component_detail_SubCategory]
GO
ALTER TABLE [dbo].[convenant_event]  WITH CHECK ADD  CONSTRAINT [FK_convenant_event_department] FOREIGN KEY([depaertment_id])
REFERENCES [dbo].[department] ([depID])
GO
ALTER TABLE [dbo].[convenant_event] CHECK CONSTRAINT [FK_convenant_event_department]
GO
ALTER TABLE [dbo].[convenant_event]  WITH CHECK ADD  CONSTRAINT [FK_convenant_event_section] FOREIGN KEY([section_id])
REFERENCES [dbo].[section] ([secID])
GO
ALTER TABLE [dbo].[convenant_event] CHECK CONSTRAINT [FK_convenant_event_section]
GO
ALTER TABLE [dbo].[convenant_event]  WITH CHECK ADD  CONSTRAINT [FK_convenant_event_sector] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([sectID])
GO
ALTER TABLE [dbo].[convenant_event] CHECK CONSTRAINT [FK_convenant_event_sector]
GO
ALTER TABLE [dbo].[convenant_event]  WITH CHECK ADD  CONSTRAINT [FK_convenant_event_station] FOREIGN KEY([station_id])
REFERENCES [dbo].[station] ([stID])
GO
ALTER TABLE [dbo].[convenant_event] CHECK CONSTRAINT [FK_convenant_event_station]
GO
ALTER TABLE [dbo].[convenant_event]  WITH CHECK ADD  CONSTRAINT [FK_convenant_event_stocke] FOREIGN KEY([stock_ID])
REFERENCES [dbo].[stocke] ([stoID])
GO
ALTER TABLE [dbo].[convenant_event] CHECK CONSTRAINT [FK_convenant_event_stocke]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([depID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_department]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_section] FOREIGN KEY([section_id])
REFERENCES [dbo].[section] ([secID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_section]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_sector] FOREIGN KEY([sector_id])
REFERENCES [dbo].[sector] ([sectID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_sector]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_station] FOREIGN KEY([station_id])
REFERENCES [dbo].[station] ([stID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_station]
GO
ALTER TABLE [dbo].[privilege]  WITH CHECK ADD  CONSTRAINT [FK_privilege_model] FOREIGN KEY([modelID])
REFERENCES [dbo].[model] ([modID])
GO
ALTER TABLE [dbo].[privilege] CHECK CONSTRAINT [FK_privilege_model]
GO
ALTER TABLE [dbo].[privilege]  WITH CHECK ADD  CONSTRAINT [FK_privilege_user] FOREIGN KEY([userID])
REFERENCES [dbo].[user] ([uid])
GO
ALTER TABLE [dbo].[privilege] CHECK CONSTRAINT [FK_privilege_user]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([braID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_brand]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_SubCategory] FOREIGN KEY([subCategory_id])
REFERENCES [dbo].[SubCategory] ([subCat])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_SubCategory]
GO
ALTER TABLE [dbo].[product_model]  WITH CHECK ADD  CONSTRAINT [FK_product_model_brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[brand] ([braID])
GO
ALTER TABLE [dbo].[product_model] CHECK CONSTRAINT [FK_product_model_brand]
GO
ALTER TABLE [dbo].[product_model]  WITH CHECK ADD  CONSTRAINT [FK_product_model_product] FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([proID])
GO
ALTER TABLE [dbo].[product_model] CHECK CONSTRAINT [FK_product_model_product]
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
ALTER TABLE [dbo].[stock_detail]  WITH CHECK ADD  CONSTRAINT [FK_stock_detail_component] FOREIGN KEY([component_id])
REFERENCES [dbo].[component] ([comID])
GO
ALTER TABLE [dbo].[stock_detail] CHECK CONSTRAINT [FK_stock_detail_component]
GO
ALTER TABLE [dbo].[stock_detail]  WITH CHECK ADD  CONSTRAINT [FK_stock_detail_component_detail] FOREIGN KEY([component_detail_id])
REFERENCES [dbo].[component_detail] ([com_d_id])
GO
ALTER TABLE [dbo].[stock_detail] CHECK CONSTRAINT [FK_stock_detail_component_detail]
GO
ALTER TABLE [dbo].[stock_detail]  WITH CHECK ADD  CONSTRAINT [FK_stock_detail_measurement_Unite] FOREIGN KEY([unitID])
REFERENCES [dbo].[measurement_Unite] ([unID])
GO
ALTER TABLE [dbo].[stock_detail] CHECK CONSTRAINT [FK_stock_detail_measurement_Unite]
GO
ALTER TABLE [dbo].[stock_detail]  WITH CHECK ADD  CONSTRAINT [FK_stock_detail_stocke] FOREIGN KEY([stockID])
REFERENCES [dbo].[stocke] ([stoID])
GO
ALTER TABLE [dbo].[stock_detail] CHECK CONSTRAINT [FK_stock_detail_stocke]
GO
ALTER TABLE [dbo].[stocke]  WITH CHECK ADD  CONSTRAINT [FK_stocke_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([braID])
GO
ALTER TABLE [dbo].[stocke] CHECK CONSTRAINT [FK_stocke_brand]
GO
ALTER TABLE [dbo].[stocke]  WITH CHECK ADD  CONSTRAINT [FK_stocke_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[cat] ([catID])
GO
ALTER TABLE [dbo].[stocke] CHECK CONSTRAINT [FK_stocke_category]
GO
ALTER TABLE [dbo].[stocke]  WITH CHECK ADD  CONSTRAINT [FK_stocke_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([proID])
GO
ALTER TABLE [dbo].[stocke] CHECK CONSTRAINT [FK_stocke_product]
GO
ALTER TABLE [dbo].[stocke]  WITH CHECK ADD  CONSTRAINT [FK_stocke_product_model] FOREIGN KEY([product_model_id])
REFERENCES [dbo].[product_model] ([modID])
GO
ALTER TABLE [dbo].[stocke] CHECK CONSTRAINT [FK_stocke_product_model]
GO
ALTER TABLE [dbo].[stocke]  WITH CHECK ADD  CONSTRAINT [FK_stocke_SubCategory] FOREIGN KEY([subCategory_id])
REFERENCES [dbo].[SubCategory] ([subCat])
GO
ALTER TABLE [dbo].[stocke] CHECK CONSTRAINT [FK_stocke_SubCategory]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[cat] ([catID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_category]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[11] 3) )"
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
         Begin Table = "brand"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 6
               Left = 455
               Bottom = 119
               Right = 625
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bran_product_subcat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bran_product_subcat'
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
         Begin Table = "brand"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 161
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 172
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product_model"
            Begin Extent = 
               Top = 6
               Left = 455
               Bottom = 163
               Right = 625
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'brand_product_model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'brand_product_model'
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
         Begin Table = "cat"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 128
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 134
               Right = 416
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'cat_subCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'cat_subCat'
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
         Begin Table = "component"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "component_detail"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 211
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "measurement_Unite"
            Begin Extent = 
               Top = 6
               Left = 455
               Bottom = 102
               Right = 625
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'comDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'comDetail'
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
         Begin Table = "department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 119
               Right = 434
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dep-sec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dep-sec'
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
         Begin Table = "department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 148
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "employee"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 202
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 6
               Left = 472
               Bottom = 119
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 6
               Left = 680
               Bottom = 102
               Right = 850
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 6
               Left = 888
               Bottom = 119
               Right = 1058
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
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
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'emp_dep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Alias = 900
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'emp_dep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'emp_dep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[5] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[55] 4[23] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[37] 2[19] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[56] 3) )"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[50] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3) )"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[75] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4[60] 2) )"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4) )"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2) )"
      End
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -40
      End
      Begin Tables = 
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 114
               Left = 243
               Bottom = 227
               Right = 413
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stocke"
            Begin Extent = 
               Top = 173
               Left = 845
               Bottom = 334
               Right = 1063
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "brand"
            Begin Extent = 
               Top = 114
               Left = 1101
               Bottom = 210
               Right = 1271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product_model"
            Begin Extent = 
               Top = 126
               Left = 643
               Bottom = 256
               Right = 813
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 0
               Left = 991
               Bottom = 113
               Right = 1161
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 0
               Left = 666
               Bottom = 125
               Right = 836
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "convenant_event"
            Begin Extent = 
               Top = 71
               Left = 433
               Bottom = 341
               Right = 605
            End
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'general_all'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 101
               Left = 17
               Bottom = 234
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 0
               Left = 231
               Bottom = 113
               Right = 401
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'general_all'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'general_all'
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
         Begin Table = "sector"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 142
               Right = 416
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sec_station'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sec_station'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[5] 2[5] 3) )"
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
         Begin Table = "brand"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cat"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 625
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product_model"
            Begin Extent = 
               Top = 6
               Left = 663
               Bottom = 136
               Right = 833
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stocke"
            Begin Extent = 
               Top = 6
               Left = 871
               Bottom = 211
               Right = 1089
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 102
               Left = 38
               Bottom = 215
               Right = 208
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
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock_report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock_report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock_report'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[8] 2[7] 3) )"
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
         Begin Table = "component"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 196
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "component_detail"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 211
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "measurement_Unite"
            Begin Extent = 
               Top = 135
               Left = 451
               Bottom = 262
               Right = 621
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "component_detail_1"
            Begin Extent = 
               Top = 30
               Left = 626
               Bottom = 193
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "stock_detail"
            Begin Extent = 
               Top = 6
               Left = 1091
               Bottom = 225
               Right = 1284
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stocke"
            Begin Extent = 
               Top = 13
               Left = 835
               Bottom = 143
               Right = 1053
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock-full-technical-detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1905
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock-full-technical-detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stock-full-technical-detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[10] 2[23] 3) )"
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
         Begin Table = "stocke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cat"
            Begin Extent = 
               Top = 6
               Left = 294
               Bottom = 102
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 6
               Left = 502
               Bottom = 119
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "convenant_event"
            Begin Extent = 
               Top = 6
               Left = 710
               Bottom = 209
               Right = 882
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "brand"
            Begin Extent = 
               Top = 102
               Left = 294
               Bottom = 198
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product_model"
            Begin Extent = 
               Top = 120
               Left = 502
               Bottom = 250
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 209
            End
            DisplayFlag' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3ohda_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N's = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 198
               Left = 247
               Bottom = 294
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 210
               Left = 710
               Bottom = 323
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 252
               Left = 473
               Bottom = 348
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 383
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "employee"
            Begin Extent = 
               Top = 6
               Left = 920
               Bottom = 136
               Right = 1090
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
      Begin ColumnWidths = 37
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3ohda_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3ohda_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[5] 2[5] 3) )"
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
         Begin Table = "convenant_event"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 238
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 0
               Left = 267
               Bottom = 139
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 223
               Left = 395
               Bottom = 393
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stocke"
            Begin Extent = 
               Top = 166
               Left = 716
               Bottom = 341
               Right = 934
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 0
               Left = 1017
               Bottom = 96
               Right = 1205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 101
               Left = 1062
               Bottom = 214
               Right = 1232
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_conv_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_conv_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_conv_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[23] 3) )"
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
         Begin Table = "convenant_event"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 188
               Left = 282
               Bottom = 284
               Right = 452
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 134
               Left = 565
               Bottom = 247
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 0
               Left = 433
               Bottom = 96
               Right = 621
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 64
               Left = 890
               Bottom = 177
               Right = 1060
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
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_convenant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_convenant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_convenant'
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
         Begin Table = "department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "employee"
            Begin Extent = 
               Top = 71
               Left = 309
               Bottom = 276
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 6
               Left = 560
               Bottom = 119
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 77
               Left = 720
               Bottom = 173
               Right = 890
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 102
               Left = 38
               Bottom = 215
               Right = 208
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
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
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Emp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Column = 1440
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Emp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Emp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[5] 3) )"
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
         Begin Table = "stocke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "convenant_event"
            Begin Extent = 
               Top = 6
               Left = 294
               Bottom = 136
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategory"
            Begin Extent = 
               Top = 6
               Left = 504
               Bottom = 119
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "brand"
            Begin Extent = 
               Top = 6
               Left = 712
               Bottom = 102
               Right = 882
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 920
               Bottom = 136
               Right = 1091
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product_model"
            Begin Extent = 
               Top = 102
               Left = 712
               Bottom = 232
               Right = 882
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 120
               Left = 504
               Bottom = 216
               Right = 692
            End
            Displ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Gen_report_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ayFlags = 280
            TopColumn = 0
         End
         Begin Table = "section"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 251
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sector"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 234
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "station"
            Begin Extent = 
               Top = 138
               Left = 920
               Bottom = 251
               Right = 1090
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
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Gen_report_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Gen_report_location'
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
         Begin Table = "privilege"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "user"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "model"
            Begin Extent = 
               Top = 195
               Left = 451
               Bottom = 291
               Right = 621
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_user_privilege'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_user_privilege'
GO
