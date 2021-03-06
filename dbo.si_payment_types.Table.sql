USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_payment_types]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_payment_types](
	[pt_id] [int] IDENTITY(1,1) NOT NULL,
	[domain_id] [int] NOT NULL,
	[pt_description] [varchar](250) NOT NULL,
	[pt_enabled] [varchar](1) NOT NULL,
 CONSTRAINT [primary key20] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC,
	[pt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ((1)) FOR [domain_id]
GO
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ('') FOR [pt_description]
GO
ALTER TABLE [dbo].[si_payment_types] ADD  DEFAULT ('1') FOR [pt_enabled]
GO
