USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_invoice_items]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0)) FOR [invoice_id]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [quantity]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0)) FOR [product_id]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [unit_price]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_6]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_7]
GO
ALTER TABLE [dbo].[si_invoice_items] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_9]
GO
