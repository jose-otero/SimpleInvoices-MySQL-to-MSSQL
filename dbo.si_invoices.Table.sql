USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_invoices]    Script Date: 08/21/2015 20:55:39 ******/
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
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((1)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [biller_id]
GO
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [customer_id]
GO
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [TRIAL_COLUMN_6]
GO
ALTER TABLE [dbo].[si_invoices] ADD  DEFAULT ((0)) FOR [TRIAL_COLUMN_7]
GO
