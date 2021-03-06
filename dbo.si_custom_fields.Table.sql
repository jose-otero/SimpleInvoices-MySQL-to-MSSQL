USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_custom_fields]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_custom_fields](
	[cf_id] [int] IDENTITY(1,1) NOT NULL,
	[cf_custom_field] [varchar](255) NULL,
	[cf_custom_label] [varchar](255) NULL,
	[cf_display] [varchar](1) NOT NULL,
	[domain_id] [int] NOT NULL,
 CONSTRAINT [primary key5] PRIMARY KEY CLUSTERED 
(
	[cf_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_custom_fields] ADD  DEFAULT ('1') FOR [cf_display]
GO
