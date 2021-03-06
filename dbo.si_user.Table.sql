USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_user]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NULL,
	[role_id] [int] NULL,
	[domain_id] [int] NOT NULL,
	[password] [varchar](255) NULL,
	[TRIAL_COLUMN_6] [int] NOT NULL,
 CONSTRAINT [primary key11] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_user] ADD  DEFAULT ((0)) FOR [domain_id]
GO
