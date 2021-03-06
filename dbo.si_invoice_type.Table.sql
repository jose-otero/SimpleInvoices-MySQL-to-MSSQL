USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_invoice_type]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_invoice_type] ADD  DEFAULT ('') FOR [inv_ty_description]
GO
