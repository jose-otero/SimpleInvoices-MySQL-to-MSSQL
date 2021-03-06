USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_system_defaults]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_system_defaults](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[value] [varchar](30) NOT NULL,
	[domain_id] [int] NOT NULL,
	[extension_id] [int] NOT NULL,
 CONSTRAINT [primary key15] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [name] ON [dbo].[si_system_defaults] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ('') FOR [value]
GO
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ((0)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_system_defaults] ADD  DEFAULT ((0)) FOR [extension_id]
GO
