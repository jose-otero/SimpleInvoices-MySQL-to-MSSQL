USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_cron_log]    Script Date: 08/21/2015 20:55:39 ******/
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
