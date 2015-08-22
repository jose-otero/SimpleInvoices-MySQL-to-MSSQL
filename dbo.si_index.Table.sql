USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_index]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_index](
	[id] [int] NOT NULL,
	[node] [varchar](255) NOT NULL,
	[sub_node] [varchar](255) NULL,
	[sub_node_2] [varchar](255) NULL,
	[domain_id] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_index] ADD  DEFAULT ('') FOR [node]
GO
