USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_products]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((1)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((0.000000)) FOR [unit_price]
GO
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((0.000000)) FOR [TRIAL_COLUMN_7]
GO
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_14]
GO
ALTER TABLE [dbo].[si_products] ADD  DEFAULT ((1)) FOR [TRIAL_COLUMN_15]
GO
