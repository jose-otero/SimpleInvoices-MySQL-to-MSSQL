USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_invoice_item_tax]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_invoice_item_tax] ADD  DEFAULT ('') FOR [tax_type]
GO
