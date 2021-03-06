USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_extensions]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_extensions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[enabled] [varchar](1) NOT NULL,
 CONSTRAINT [primary key13] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[si_extensions] ADD  DEFAULT ('0') FOR [enabled]
GO
