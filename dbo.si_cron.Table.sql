USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_cron]    Script Date: 08/21/2015 20:55:40 ******/
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
ALTER TABLE [dbo].[si_cron] ADD  DEFAULT ('') FOR [TRIAL_COLUMN_7]
GO
