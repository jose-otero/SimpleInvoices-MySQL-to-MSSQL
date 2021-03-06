USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_preferences]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_preferences](
	[pref_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[pref_description] [varchar](50) NULL,
	[pref_currency_sign] [varchar](50) NULL,
	[pref_inv_heading] [varchar](50) NULL,
	[TRIAL_COLUMN_6] [varchar](50) NULL,
	[TRIAL_COLUMN_7] [varchar](50) NULL,
	[TRIAL_COLUMN_8] [varchar](max) NULL,
	[TRIAL_COLUMN_9] [varchar](50) NULL,
	[TRIAL_COLUMN_10] [varchar](50) NULL,
	[TRIAL_COLUMN_11] [varchar](50) NULL,
	[TRIAL_COLUMN_12] [varchar](50) NULL,
	[TRIAL_COLUMN_13] [varchar](50) NULL,
	[TRIAL_COLUMN_14] [varchar](1) NOT NULL,
	[TRIAL_COLUMN_15] [int] NOT NULL,
	[TRIAL_COLUMN_16] [varchar](255) NULL,
	[TRIAL_COLUMN_17] [varchar](255) NULL,
	[TRIAL_COLUMN_18] [int] NOT NULL,
	[TRIAL_COLUMN_19] [varchar](25) NULL,
	[TRIAL_COLUMN_20] [varchar](255) NULL,
	[TRIAL_COLUMN_21] [varchar](25) NULL,
 CONSTRAINT [primary key2] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[pref_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_preferences] ADD  DEFAULT ((1)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_preferences] ADD  DEFAULT ('1') FOR [TRIAL_COLUMN_14]
GO
