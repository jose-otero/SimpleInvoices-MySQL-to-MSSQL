USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_inventory]    Script Date: 08/21/2015 20:55:39 ******/
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
