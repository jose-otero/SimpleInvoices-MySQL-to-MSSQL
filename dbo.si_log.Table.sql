USE [simple_invoices2011_1]
GO
/****** Object:  Table [dbo].[si_log]    Script Date: 08/21/2015 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[si_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[timestamp] [datetime2](7) NOT NULL,
	[userid] [varchar](40) NOT NULL,
	[sqlquerie] [varchar](max) NOT NULL,
	[last_id] [int] NULL,
 CONSTRAINT [primary key18] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[si_log] ADD  DEFAULT (getdate()) FOR [timestamp]
GO
ALTER TABLE [dbo].[si_log] ADD  DEFAULT ('0') FOR [userid]
GO
