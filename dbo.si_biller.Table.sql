USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_biller]    Script Date: 08/21/2015 20:55:40 ******/
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
ALTER TABLE [dbo].[si_biller] ADD  DEFAULT ((1)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_biller] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_25]
GO
