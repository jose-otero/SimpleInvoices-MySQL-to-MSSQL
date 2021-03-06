USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_tax]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_tax] ADD  DEFAULT ((0.000000)) FOR [tax_percentage]
GO
ALTER TABLE [dbo].[si_tax] ADD  DEFAULT ('1') FOR [tax_enabled]
GO
