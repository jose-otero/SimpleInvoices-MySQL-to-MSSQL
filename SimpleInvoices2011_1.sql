USE [master]
GO
/****** Object:  Database [simple_invoices2011_1]    Script Date: 08/21/2015 20:57:18 ******/
CREATE DATABASE [simple_invoices2011_1] ON  PRIMARY 
( NAME = N'simple_invoices2011_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\simple_invoices2011_1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'simple_invoices2011_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\simple_invoices2011_1_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [simple_invoices2011_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ARITHABORT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [simple_invoices2011_1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [simple_invoices2011_1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET  ENABLE_BROKER
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [simple_invoices2011_1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET  READ_WRITE
GO
ALTER DATABASE [simple_invoices2011_1] SET RECOVERY FULL
GO
ALTER DATABASE [simple_invoices2011_1] SET  MULTI_USER
GO
ALTER DATABASE [simple_invoices2011_1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [simple_invoices2011_1] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'simple_invoices2011_1', N'ON'
GO
USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_user_role]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_user_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
 CONSTRAINT [primary key3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [name1] ON [dbo].[si_user_role] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[si_user_domain]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_user_domain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
 CONSTRAINT [primary key9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [name2] ON [dbo].[si_user_domain] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[si_user]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NULL,
	[role_id] [int] NULL,
	[domain_id] [int] NOT NULL,
	[password] [varchar](255) NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
 CONSTRAINT [primary key11] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_tax]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_tax](
	[tax_id] [int] IDENTITY(1,1) NOT NULL,
	[tax_description] [varchar](50) NULL,
	[tax_percentage] [decimal](25, 6) NULL,
	[type] [varchar](1) NULL,
	[tax_enabled] [varchar](1) NOT NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
 CONSTRAINT [primary key19] PRIMARY KEY CLUSTERED 
(
	[TRIAL_COLUMN_6] ASC,
	[tax_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_system_defaults]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_system_defaults](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[value] [varchar](30) NOT NULL,
	[domain_id] [int] NOT NULL,
	[extension_id] [int] NOT NULL,
 CONSTRAINT [primary key15] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [name] ON [dbo].[si_system_defaults] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[si_sql_patchmanager]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_sql_patchmanager](
	[sql_id] [int] IDENTITY(1,1) NOT NULL,
	[sql_patch_ref] [int] NOT NULL,
	[sql_patch] [varchar](255) NOT NULL,
	[sql_release] [varchar](25) NOT NULL,
	[sql_statement] [varchar](max) NOT NULL,
 CONSTRAINT [primary key16] PRIMARY KEY CLUSTERED 
(
	[sql_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_products]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[unit_price] [decimal](25, 6) NULL,
	[default_tax_id] [int] NULL,
	[TRIAL_COLUMN_6] [int] NULL,
	[TRIAL_COLUMN_7] [decimal](25, 6) NULL,
	[TRIAL_COLUMN_8] [int] NULL,
	[TRIAL_COLUMN_9] [varchar](255) NULL,
	[TRIAL_COLUMN_10] [varchar](255) NULL,
	[TRIAL_COLUMN_11] [varchar](255) NULL,
	[TRIAL_COLUMN_12] [varchar](255) NULL,
	[TRIAL_COLUMN_13] [varchar](max) NOT NULL,
	[TRIAL_COLUMN_14] [varchar](1) NOT NULL,
	[TRIAL_COLUMN_15] [tinyint] NOT NULL,
 CONSTRAINT [primary key7] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_preferences]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_preferences](
	[pref_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[pref_description] [varchar](50) NULL,
	[pref_currency_sign] [varchar](50) NULL,
	[pref_inv_heading] [varchar](50) NULL,
	[TRIAL_COLUMN_6] [varchar](50) NULL,
	[TRIAL_COLUMN_7] [varchar](50) NULL,
	[TRIAL_COLUMN_8] [varchar](max) NULL,
	[TRIAL_COLUMN_9] [varchar](50) NULL,
	[TRIAL_COLUMN_10] [varchar](50) NULL,
	[TRIAL_COLUMN_11] [varchar](50) NULL,
	[TRIAL_COLUMN_12] [varchar](50) NULL,
	[TRIAL_COLUMN_13] [varchar](50) NULL,
	[TRIAL_COLUMN_14] [varchar](1) NOT NULL,
	[TRIAL_COLUMN_15] [int] NOT NULL,
	[TRIAL_COLUMN_16] [varchar](255) NULL,
	[TRIAL_COLUMN_17] [varchar](255) NULL,
	[TRIAL_COLUMN_18] [int] NOT NULL,
	[TRIAL_COLUMN_19] [varchar](25) NULL,
	[TRIAL_COLUMN_20] [varchar](255) NULL,
	[TRIAL_COLUMN_21] [varchar](25) NULL,
 CONSTRAINT [primary key2] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[pref_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_payment_types]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_payment_types](
	[pt_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[pt_description] [varchar](250) NOT NULL,
	[pt_enabled] [varchar](1) NOT NULL,
 CONSTRAINT [primary key20] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[pt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_payment]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ac_inv_id] [int] NOT NULL,
	[ac_amount] [decimal](25, 6) NOT NULL,
	[ac_notes] [varchar](max) NOT NULL,
	[ac_date] [datetime] NOT NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
	[TRIAL_COLUMN_7] [int] NOT NULL,
	[TRIAL_COLUMN_8] [varchar](255) NULL,
 CONSTRAINT [primary key21] PRIMARY KEY CLUSTERED 
(
	[TRIAL_COLUMN_7] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [domain_id1] ON [dbo].[si_payment] 
(
	[TRIAL_COLUMN_7] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[si_log]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[timestamp] [datetime2](7) NOT NULL,
	[userid] [varchar](40) NOT NULL,
	[sqlquerie] [varchar](max) NOT NULL,
	[last_id] [int] NULL,
 CONSTRAINT [primary key18] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_invoices]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_invoices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[index_id] [int] NOT NULL,
	[domain_id] [int] NOT NULL,
	[biller_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
	[TRIAL_COLUMN_7] [int] NOT NULL,
	[TRIAL_COLUMN_8] [datetime] NOT NULL,
	[TRIAL_COLUMN_9] [varchar](50) NULL,
	[TRIAL_COLUMN_10] [varchar](50) NULL,
	[TRIAL_COLUMN_11] [varchar](50) NULL,
	[TRIAL_COLUMN_12] [varchar](50) NULL,
	[TRIAL_COLUMN_13] [varchar](max) NULL,
 CONSTRAINT [primary key10] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [biller_id] ON [dbo].[si_invoices] 
(
	[biller_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [customer_id] ON [dbo].[si_invoices] 
(
	[customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [domain_id] ON [dbo].[si_invoices] 
(
	[domain_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[si_invoice_type]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_invoice_type](
	[inv_ty_id] [int] IDENTITY(1,1) NOT NULL,
	[inv_ty_description] [varchar](25) NOT NULL,
 CONSTRAINT [primary key1] PRIMARY KEY CLUSTERED 
(
	[inv_ty_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_invoice_items]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_invoice_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [int] NOT NULL,
	[quantity] [decimal](25, 6) NOT NULL,
	[product_id] [int] NULL,
	[unit_price] [decimal](25, 6) NULL,
	[TRIAL_COLUMN_6] [decimal](25, 6) NULL,
	[TRIAL_COLUMN_7] [decimal](25, 6) NULL,
	[TRIAL_COLUMN_8] [varchar](max) NULL,
	[TRIAL_COLUMN_9] [decimal](25, 6) NULL,
 CONSTRAINT [primary key17] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_invoice_item_tax]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_invoice_item_tax](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_item_id] [int] NOT NULL,
	[tax_id] [int] NOT NULL,
	[tax_type] [varchar](1) NOT NULL,
	[tax_rate] [decimal](25, 6) NOT NULL,
	[TRIAL_COLUMN_6] [decimal](25, 6) NOT NULL,
 CONSTRAINT [primary key12] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_inventory]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_inventory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [decimal](25, 6) NOT NULL,
	[cost] [decimal](25, 6) NULL,
	[TRIAL_COLUMN_6] [date] NOT NULL,
	[TRIAL_COLUMN_7] [varchar](max) NULL,
 CONSTRAINT [primary key] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_index]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_index](
	[id] [int] NOT NULL,
	[node] [varchar](255) NOT NULL,
	[sub_node] [varchar](255) NULL,
	[sub_node_2] [varchar](255) NULL,
	[domain_id] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_extensions]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_extensions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[enabled] [varchar](1) NOT NULL,
 CONSTRAINT [primary key13] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_customers]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[attention] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[street_address] [varchar](255) NULL,
	[TRIAL_COLUMN_6] [varchar](255) NULL,
	[TRIAL_COLUMN_7] [varchar](255) NULL,
	[TRIAL_COLUMN_8] [varchar](255) NULL,
	[TRIAL_COLUMN_9] [varchar](255) NULL,
	[TRIAL_COLUMN_10] [varchar](255) NULL,
	[TRIAL_COLUMN_11] [varchar](255) NULL,
	[TRIAL_COLUMN_12] [varchar](255) NULL,
	[TRIAL_COLUMN_13] [varchar](255) NULL,
	[TRIAL_COLUMN_14] [varchar](255) NULL,
	[TRIAL_COLUMN_15] [varchar](255) NULL,
	[TRIAL_COLUMN_16] [varchar](255) NULL,
	[TRIAL_COLUMN_17] [varchar](2) NULL,
	[TRIAL_COLUMN_18] [varchar](4) NULL,
	[TRIAL_COLUMN_19] [varchar](max) NULL,
	[TRIAL_COLUMN_20] [varchar](255) NULL,
	[TRIAL_COLUMN_21] [varchar](255) NULL,
	[TRIAL_COLUMN_22] [varchar](255) NULL,
	[TRIAL_COLUMN_23] [varchar](255) NULL,
	[TRIAL_COLUMN_24] [varchar](1) NOT NULL,
 CONSTRAINT [primary key4] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_custom_fields]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_custom_fields](
	[cf_id] [int] IDENTITY(1,1) NOT NULL,
	[cf_custom_field] [varchar](255) NULL,
	[cf_custom_label] [varchar](255) NULL,
	[cf_display] [varchar](1) NOT NULL,
	[domain_id] [int] NOT NULL,
 CONSTRAINT [primary key5] PRIMARY KEY CLUSTERED 
(
	[cf_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_cron_log]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_cron_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[cron_id] [varchar](25) NULL,
	[run_date] [date] NOT NULL,
 CONSTRAINT [primary key6] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_cron]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_cron](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[invoice_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [varchar](10) NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
	[TRIAL_COLUMN_7] [varchar](11) NOT NULL,
	[TRIAL_COLUMN_8] [int] NULL,
	[TRIAL_COLUMN_9] [int] NULL,
 CONSTRAINT [primary key8] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[si_biller]    Script Date: 08/21/2015 20:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_biller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[street_address] [varchar](255) NULL,
	[street_address2] [varchar](255) NULL,
	[TRIAL_COLUMN_6] [varchar](255) NULL,
	[TRIAL_COLUMN_7] [varchar](255) NULL,
	[TRIAL_COLUMN_8] [varchar](255) NULL,
	[TRIAL_COLUMN_9] [varchar](255) NULL,
	[TRIAL_COLUMN_10] [varchar](255) NULL,
	[TRIAL_COLUMN_11] [varchar](255) NULL,
	[TRIAL_COLUMN_12] [varchar](255) NULL,
	[TRIAL_COLUMN_13] [varchar](255) NULL,
	[TRIAL_COLUMN_14] [varchar](255) NULL,
	[TRIAL_COLUMN_15] [varchar](max) NULL,
	[TRIAL_COLUMN_16] [varchar](255) NULL,
	[TRIAL_COLUMN_17] [varchar](255) NULL,
	[TRIAL_COLUMN_18] [varchar](255) NULL,
	[TRIAL_COLUMN_19] [varchar](255) NULL,
	[TRIAL_COLUMN_20] [varchar](max) NULL,
	[TRIAL_COLUMN_21] [varchar](255) NULL,
	[TRIAL_COLUMN_22] [varchar](255) NULL,
	[TRIAL_COLUMN_23] [varchar](255) NULL,
	[TRIAL_COLUMN_24] [varchar](255) NULL,
	[TRIAL_COLUMN_25] [varchar](1) NOT NULL,
 CONSTRAINT [primary key14] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__si_user_ro__name__5165187F]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_user_role] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__si_user_do__name__398D8EEE]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_user_domain] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__si_user__domain___4F7CD00D]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_user] ADD  DEFAULT ((0)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_tax__tax_perc__24927208]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_tax] ADD  DEFAULT ((0.000000)) FOR [tax_percentage]
GO
/****** Object:  Default [DF__si_tax__tax_enab__25869641]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_tax] ADD  DEFAULT ('1') FOR [tax_enabled]
GO
/****** Object:  Default [DF__si_system___name__3C69FB99]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__si_system__value__3D5E1FD2]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ('') FOR [value]
GO
/****** Object:  Default [DF__si_system__domai__3E52440B]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ((0)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_system__exten__3F466844]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ((0)) FOR [extension_id]
GO
/****** Object:  Default [DF__si_sql_pa__sql_p__15502E78]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_sql_patchmanager] ADD  DEFAULT ('') FOR [sql_patch]
GO
/****** Object:  Default [DF__si_sql_pa__sql_r__164452B1]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_sql_patchmanager] ADD  DEFAULT ('') FOR [sql_release]
GO
/****** Object:  Default [DF__si_produc__domai__30F848ED]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_produc__unit___31EC6D26]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((0.000000)) FOR [unit_price]
GO
/****** Object:  Default [DF__si_produc__TRIAL__32E0915F]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_7]
GO
/****** Object:  Default [DF__si_produc__TRIAL__33D4B598]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_14]
GO
/****** Object:  Default [DF__si_produc__TRIAL__34C8D9D1]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((1)) FOR [TRIAL_COLUMN_15]
GO
/****** Object:  Default [DF__si_prefer__domai__36B12243]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_preferences] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_prefer__TRIAL__37A5467C]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_preferences] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_14]
GO
/****** Object:  Default [DF__si_paymen__domai__440B1D61]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_paymen__pt_de__44FF419A]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ('') FOR [pt_description]
GO
/****** Object:  Default [DF__si_paymen__pt_en__45F365D3]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ('1') FOR [pt_enabled]
GO
/****** Object:  Default [DF__si_paymen__TRIAL__182C9B23]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_payment] ADD  DEFAULT ((1)) FOR [TRIAL_COLUMN_6]
GO
/****** Object:  Default [DF__si_log__timestam__21B6055D]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_log] ADD  DEFAULT (getdate()) FOR [timestamp]
GO
/****** Object:  Default [DF__si_log__userid__22AA2996]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_log] ADD  DEFAULT ('0') FOR [userid]
GO
/****** Object:  Default [DF__si_invoic__domai__0F975522]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_invoic__bille__108B795B]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [biller_id]
GO
/****** Object:  Default [DF__si_invoic__custo__117F9D94]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [customer_id]
GO
/****** Object:  Default [DF__si_invoic__TRIAL__1273C1CD]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [TRIAL_COLUMN_6]
GO
/****** Object:  Default [DF__si_invoic__TRIAL__1367E606]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [TRIAL_COLUMN_7]
GO
/****** Object:  Default [DF__si_invoic__inv_t__1A14E395]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_type] ADD  DEFAULT ('') FOR [inv_ty_description]
GO
/****** Object:  Default [DF__si_invoic__invoi__29572725]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0)) FOR [invoice_id]
GO
/****** Object:  Default [DF__si_invoic__quant__2A4B4B5E]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [quantity]
GO
/****** Object:  Default [DF__si_invoic__produ__2B3F6F97]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0)) FOR [product_id]
GO
/****** Object:  Default [DF__si_invoic__unit___2C3393D0]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [unit_price]
GO
/****** Object:  Default [DF__si_invoic__TRIAL__2D27B809]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_6]
GO
/****** Object:  Default [DF__si_invoic__TRIAL__2E1BDC42]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_7]
GO
/****** Object:  Default [DF__si_invoic__TRIAL__2F10007B]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_9]
GO
/****** Object:  Default [DF__si_invoic__tax_t__4D94879B]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_invoice_item_tax] ADD  DEFAULT ('') FOR [tax_type]
GO
/****** Object:  Default [DF__si_index__node__4BAC3F29]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_index] ADD  DEFAULT ('') FOR [node]
GO
/****** Object:  Default [DF__si_extensi__name__1DE57479]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__si_extens__descr__1ED998B2]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__si_extens__enabl__1FCDBCEB]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('0') FOR [enabled]
GO
/****** Object:  Default [DF__si_custom__domai__412EB0B6]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_customers] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_custom__TRIAL__4222D4EF]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_customers] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_24]
GO
/****** Object:  Default [DF__si_custom__cf_di__276EDEB3]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_custom_fields] ADD  DEFAULT ('1') FOR [cf_display]
GO
/****** Object:  Default [DF__si_cron__TRIAL_C__1BFD2C07]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_cron] ADD  DEFAULT ('') FOR [TRIAL_COLUMN_7]
GO
/****** Object:  Default [DF__si_biller__domai__48CFD27E]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_biller] ADD  DEFAULT ((1)) FOR [domain_id]
GO
/****** Object:  Default [DF__si_biller__TRIAL__49C3F6B7]    Script Date: 08/21/2015 20:57:23 ******/
ALTER TABLE [dbo].[si_biller] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_25]
GO
