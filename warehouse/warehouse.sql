USE [RedmineReports]
GO
/****** Object:  Table [dbo].[categories] е   Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[project_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[custom_values]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_values](
	[id] [int] NULL,
	[customized_type] [nvarchar](30) NULL,
	[customized_id] [int] NULL,
	[custom_field_id] [int] NULL,
	[value] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hours_cache]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hours_cache](
	[id] [int] NOT NULL,
	[client_hours] [int] NULL,
	[gmcs_hours] [int] NULL,
 CONSTRAINT [PK_hours_cache] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups_users]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups_users](
	[group_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [ntext] NULL,
	[homepage] [nvarchar](255) NULL,
	[is_public] [bit] NULL,
	[parent_id] [int] NULL,
	[created_on] [datetime] NULL,
	[updated_on] [datetime] NULL,
	[identifier] [nvarchar](255) NULL,
	[status] [int] NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
 CONSTRAINT [PK_projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[priorities]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[priorities](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
 CONSTRAINT [PK_priorities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[journals]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journals](
	[id] [int] NOT NULL,
	[journalized_id] [int] NULL,
	[journalized_type] [nvarchar](30) NULL,
	[user_id] [int] NULL,
	[notes] [ntext] NULL,
	[created_on] [datetime] NULL,
 CONSTRAINT [PK_journals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statuses]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statuses](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
 CONSTRAINT [PK_statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[PK_Date] [datetime] NOT NULL,
	[Date_Name] [nvarchar](50) NULL,
	[Year] [datetime] NULL,
	[Year_Name] [nvarchar](50) NULL,
	[Quarter] [datetime] NULL,
	[Quarter_Name] [nvarchar](50) NULL,
	[Month] [datetime] NULL,
	[Month_Name] [nvarchar](50) NULL,
	[Day_Of_Year] [int] NULL,
	[Day_Of_Year_Name] [nvarchar](50) NULL,
	[Day_Of_Quarter] [int] NULL,
	[Day_Of_Quarter_Name] [nvarchar](50) NULL,
	[Day_Of_Month] [int] NULL,
	[Day_Of_Month_Name] [nvarchar](50) NULL,
	[Month_Of_Year] [int] NULL,
	[Month_Of_Year_Name] [nvarchar](50) NULL,
	[Month_Of_Quarter] [int] NULL,
	[Month_Of_Quarter_Name] [nvarchar](50) NULL,
	[Quarter_Of_Year] [int] NULL,
	[Quarter_Of_Year_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[PK_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f3b65c51-1376-4f8a-bc71-23d71b48bde1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'CONSTRAINT',@level2name=N'PK_Time'
GO
/****** Object:  Table [dbo].[statuses_info]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[statuses_info](
	[name] [varchar](30) NULL,
	[mode] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[DATEDIFFEXCLWEEKENDS]    Script Date: 12/22/2011 11:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[DATEDIFFEXCLWEEKENDS](@start DATETIME, @finish DATETIME)
RETURNS int
AS
	BEGIN
		DECLARE @result int
		SET @result = 0

		WHILE @start < @finish
			BEGIN
				IF (DATEPART(dw, @start) <> 7) AND (DATEPART(dw, @start) <> 1)
					BEGIN
						SET @result = @result + 1
					END		
				SET @start = DATEADD(dd, 1, @start)
			END
			
		RETURN(@result)			
	END
GO
/****** Object:  Table [dbo].[IssuesTime]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuesTime](
	[JournalId] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[DaysActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuesInformation]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuesInformation](
	[ID] [int] NOT NULL,
	[CreatingDate] [datetime] NOT NULL,
	[ProjectName] [nvarchar](50) NOT NULL,
	[Priority] [nvarchar](20) NOT NULL,
	[AssignedTo] [nvarchar](50) NOT NULL,
	[SuppDays] [int] NULL,
	[ClientDays] [int] NULL,
	[IsClosed] [int] NOT NULL,
	[ClosingDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[login] [nvarchar](30) NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[mail] [nvarchar](60) NULL,
	[admin] [bit] NULL,
	[fullname] [nvarchar](70) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trackers]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trackers](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
	[is_in_chlog] [bit] NULL,
	[position] [int] NULL,
	[is_in_roadmap] [bit] NULL,
 CONSTRAINT [PK_trackers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[working_hours]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[working_hours](
	[point] [datetime] NOT NULL,
	[mode] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[users_list]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[users_list]
AS
	SELECT * FROM users WHERE id NOT IN
		(SELECT group_id FROM groups_users)
GO
/****** Object:  StoredProcedure [dbo].[users_by_group]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[users_by_group](@group int)
AS
SET NOCOUNT ON

SELECT * FROM users WHERE id IN 
	(SELECT user_id FROM groups_users WHERE group_id = @group)
GO
/****** Object:  UserDefinedFunction [dbo].[TIMEDIFFEXCLWEEKENDS]    Script Date: 12/22/2011 11:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TIMEDIFFEXCLWEEKENDS](@start DATETIME, @finish DATETIME)
RETURNS int
AS
	BEGIN
		declare @result int
	
		select @result=COUNT(point) from working_hours
		where mode = 2
		and point > @start and point < @finish
			
		RETURN(@result)			
	END
GO
/****** Object:  View [dbo].[user_groups]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[user_groups]
AS
	SELECT * FROM users WHERE id IN
		(SELECT group_id FROM groups_users)
GO
/****** Object:  Table [dbo].[issues]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issues](
	[id] [int] NOT NULL,
	[tracker_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[subject] [nvarchar](255) NULL,
	[description] [ntext] NULL,
	[category_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[assigned_to_id] [int] NOT NULL,
	[priority_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_on] [datetime] NULL,
	[start_date] [datetime] NULL,
	[done_ratio] [int] NULL,
	[estimated_hours] [real] NULL,
	[payment] [ntext] NULL,
	[old_scr_id] [ntext] NULL,
	[created_time] [datetime] NULL,
	[days_to_resolve] [int] NULL,
	[facttype] [nvarchar](10) NULL,
	[periodstart] [int] NULL,
	[periodfinish] [int] NULL,
	[pk] [int] NOT NULL,
	[updated_time] [datetime] NULL,
	[client_hours] [int] NULL,
	[gmcs_hours] [int] NULL,
	[module] [ntext] NULL,
	[functionality] [ntext] NULL,
	[periodfinish_and_close] [int] NULL,
 CONSTRAINT [PK_issues] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[journal_details]    Script Date: 12/22/2011 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journal_details](
	[id] [int] NULL,
	[journal_id] [int] NOT NULL,
	[property] [nvarchar](30) NULL,
	[prop_key] [nvarchar](30) NULL,
	[old_value] [ntext] NULL,
	[value] [ntext] NULL,
	[value_int] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[fill_default_statuses]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[fill_default_statuses]
as 
delete from statuses_info
insert into statuses_info values('Создано', 2);
insert into statuses_info values('Оценка', 2);
insert into statuses_info values('В работе', 2);
insert into statuses_info values('Разработка', 2);
insert into statuses_info values('Ожидание', 2);
insert into statuses_info values('Выполнено', 2);
insert into statuses_info values('Сборка', 2);
insert into statuses_info values('Закрыто', 2);

insert into statuses_info values('Ожидание', 1);
insert into statuses_info values('Выполнено', 1);

insert into statuses_info values('Приостановлено', 0);
GO
/****** Object:  StoredProcedure [dbo].[create_working_hours]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[create_working_hours]
as
declare @startPoint datetime
declare @finishPoint datetime
declare @currentPoint datetime
declare @timePoint datetime
declare @i int

set @startPoint = CONVERT(datetime, '01.01.2005', 104)
set @finishPoint = CONVERT(datetime, '01.01.2016', 104)
set @currentPoint = @startPoint

delete from working_hours

while @currentPoint < @finishPoint
begin
	if (DATEPART(dw, @currentPoint) <> 7) AND (DATEPART(dw, @currentPoint) <> 1)
        begin
            insert into working_hours values(@currentPoint, 1)
            
            set @i = 10
            while @i < 19
              begin
				set @timePoint = DATEADD(HH, @i, @currentPoint)
				insert into working_hours values(@timePoint, 2)
				set @i = @i + 1
              end
              
        end    	
	set @currentPoint = DATEADD(dd, 1, @currentPoint)	
end
GO
/****** Object:  StoredProcedure [dbo].[create_stub_user]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[create_stub_user]
AS
	SET NOCOUNT ON;
	DELETE FROM users WHERE users.id = 0;
	INSERT INTO users VALUES(0, 'unassigned', 'unassigned', 'unassigned', '', 0, 'unassigned')
GO
/****** Object:  StoredProcedure [dbo].[create_stub_categories]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[create_stub_categories]
AS
	SET NOCOUNT ON;
	DELETE FROM categories WHERE categories.id = 0;
	INSERT INTO categories 
		SELECT 0 AS ID, id AS project_id, 'Не назначено' AS name  FROM projects
GO
/****** Object:  StoredProcedure [dbo].[clear_all_tables]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[clear_all_tables]
AS
	SET NOCOUNT ON;
	DELETE FROM issues;
	DELETE FROM projects;
	DELETE FROM trackers;
	DELETE FROM priorities;
	DELETE FROM users;
	DELETE FROM categories;
	DELETE FROM statuses;
	DELETE FROM journal_details;
	DELETE FROM journals;
	DELETE FROM custom_values;
GO
/****** Object:  View [dbo].[statuses_history]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[statuses_history] 
as
select journal_details.id,
	   journalized_id,
	   journals.created_on,	   
	   statuses.name as new_status
from journals, journal_details, statuses
where journals.id = journal_details.journal_id
and prop_key = 'status_id'
and journal_details.value_int = statuses.id
GO
/****** Object:  View [dbo].[issue_list]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[issue_list] 
AS
SELECT 
   issues.id, 
   projects.name as project_name,
   trackers.name as tracker_name,   
   priorities.name as priority,
   statuses.name as status, 
   issues.subject, 
   issues.description,
   authors.fullname as author,
   assigned.fullname as aggigned,
   issues.updated_on, 
   categories.name as category,
   issues.start_date, 
   -- issues.due_date, 
   issues.estimated_hours, 
   issues.done_ratio, 
   issues.created_on,
   issues.payment,
   issues.old_scr_id,
   issues.days_to_resolve,
   issues.client_hours,
   issues.gmcs_hours,
   CAST(issues.module AS nvarchar(max)) as module,
   CAST(issues.functionality AS nvarchar(max)) as functionality   
FROM 
  issues, projects, trackers, priorities, statuses, categories,
  users as authors,
  users as assigned
WHERE   
  issues.project_id = projects.id   
    AND
  issues.tracker_id = trackers.id
    AND
  issues.priority_id = priorities.id 
    AND 
  issues.status_id = statuses.id
	AND  
  issues.author_id = authors.id
    AND
  issues.assigned_to_id = assigned.id
    AND 
  categories.id = issues.category_id AND categories.project_id = issues.project_id    
    AND
  issues.periodstart = 0
GO
/****** Object:  StoredProcedure [dbo].[set_days_to_resolve]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[set_days_to_resolve]
AS
	SET NOCOUNT ON;      
	UPDATE issues SET days_to_resolve = dbo.DATEDIFFEXCLWEEKENDS(start_date, updated_on) where periodfinish = 1;
	UPDATE issues SET days_to_resolve = 0 where periodfinish = 0;
GO
/****** Object:  StoredProcedure [dbo].[set_custom_values]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[set_custom_values]
AS
	SET NOCOUNT ON;
	
	UPDATE issues
	SET issues.payment = custom_values.value
	FROM issues, custom_values
	WHERE issues.id = custom_values.customized_id AND
		  custom_values.custom_field_id = 2;
		  
	UPDATE issues SET payment = '0' where payment IS NULL;
	
	UPDATE issues
	SET issues.old_scr_id = custom_values.value
	FROM issues, custom_values
	WHERE issues.id = custom_values.customized_id AND
		  custom_values.custom_field_id = 1;
		  
	UPDATE issues SET old_scr_id = '' where old_scr_id IS NULL;		  

	UPDATE issues
	SET issues.module = custom_values.value
	FROM issues, custom_values
	WHERE issues.id = custom_values.customized_id AND
		  custom_values.custom_field_id = 11;
		  
	UPDATE issues SET module = '' where module IS NULL;		  

	UPDATE issues
	SET issues.functionality = custom_values.value
	FROM issues, custom_values
	WHERE issues.id = custom_values.customized_id AND
		  custom_values.custom_field_id = 12;

	UPDATE issues SET functionality = '' where functionality IS NULL;
GO
/****** Object:  StoredProcedure [dbo].[data_purify]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[data_purify]
AS
	SET NOCOUNT ON;      
	UPDATE issues SET created_on = DATEADD(dd, 0, DATEDIFF(dd, 0, created_on));      
	UPDATE issues SET updated_on = DATEADD(dd, 0, DATEDIFF(dd, 0, updated_on));      
	UPDATE issues SET start_date = DATEADD(dd, 0, DATEDIFF(dd, 0, start_date));  
	UPDATE issues SET estimated_hours = 0 WHERE estimated_hours IS NULL;    
	UPDATE issues SET assigned_to_id = 0 WHERE assigned_to_id IS NULL;	    
 
	DELETE projects WHERE projects.id NOT IN
		(SELECT project_id FROM issues)
    
	UPDATE issues SET periodfinish_and_close = 0
		WHERE periodfinish_and_close = 1 AND done_ratio < 100
GO
/****** Object:  StoredProcedure [dbo].[refresh_hours_cache]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[refresh_hours_cache]
as
delete from hours_cache;

insert into hours_cache
	select id, client_hours,gmcs_hours from issues where periodfinish = 1 and status_id = 2 and client_hours is not null;
GO
/****** Object:  View [dbo].[real_close_dates]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[real_close_dates]
AS
  SELECT journalized_id AS id, 
         created_on AS close_date 
  FROM statuses_history 
  WHERE new_status = 'Закрыто'
GO
/****** Object:  StoredProcedure [dbo].[set_hours_per_issue]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[set_hours_per_issue](@issue_id int)
as	
	declare @startingTime datetime	
	declare @id int
	declare @created_on datetime
	declare @status nvarchar(30)
	declare @mode int
	declare @delta int

	declare @client int
	declare @gmcs int

	set @client = 0
	set @gmcs = 0
	set @mode = 1

	select @startingTime = created_time from issues 
       where id = @issue_id and periodstart = 1

	declare notes cursor for
	select id, created_on, new_status 
	from dbo.statuses_history where journalized_id = @issue_id;

	open notes;

	fetch next from notes
	into @id, @created_on, @status; 

	while @@FETCH_STATUS = 0
	begin
		set @delta = dbo.TIMEDIFFEXCLWEEKENDS(@startingTime, @created_on);
		set @startingTime = @created_on;
	
		select @mode = mode from statuses_info where name = @status;
		if @mode = 1
		begin	    
			set @client = @client + @delta;
		end	    
	
		if @mode = 2
		begin		
			set @gmcs = @gmcs + @delta;
		end
	
		fetch next from notes
		into @id, @created_on, @status; 	
	end

	deallocate notes;

	update issues set client_hours = @client where id = @issue_id and periodfinish = 1
	update issues set gmcs_hours = @gmcs where id = @issue_id and periodfinish = 1
    update issues set client_hours = 0 where id = @issue_id and periodfinish = 0
	update issues set gmcs_hours = 0 where id = @issue_id and periodfinish = 0
GO
/****** Object:  StoredProcedure [dbo].[set_hours]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[set_hours]
as

declare @id int
declare @gmcs int
declare @client int

declare icursor cursor for
	select id
	from dbo.issues;
	
open icursor;	

fetch next from icursor
into @id;

while @@FETCH_STATUS = 0
begin
	select @gmcs=gmcs_hours, @client=client_hours from hours_cache where id = @id;
	if @gmcs is null
	begin
		exec [dbo].[set_hours_per_issue] @issue_id = @id;
	end
	else
	begin
		update issues set client_hours = @client, gmcs_hours = @gmcs  where id = @id and periodfinish = 1		
		update issues set client_hours = 0, gmcs_hours = 0 where id = @id and periodfinish = 0		
	end		
	fetch next from icursor into @id;
end

deallocate icursor;
GO
/****** Object:  View [dbo].[report_close_dates]    Script Date: 12/22/2011 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[report_close_dates]
AS  
	SELECT issues.id, ISNULL(real_close_dates.close_date, GETDATE()) as close_date
	FROM issues
	LEFT OUTER JOIN real_close_dates
	ON issues.id = real_close_dates.id
GO
/****** Object:  StoredProcedure [dbo].[set_close_date]    Script Date: 12/22/2011 11:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[set_close_date]
AS
	SET NOCOUNT ON;  

	UPDATE issues SET created_on = DATEADD(dd, 0, DATEDIFF(dd, 0, report_close_dates.close_date))
			FROM issues, report_close_dates
			WHERE issues.id = report_close_dates.id and
				issues.periodfinish  =1
GO
/****** Object:  ForeignKey [FK_issues_categories]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_categories] FOREIGN KEY([category_id], [project_id])
REFERENCES [dbo].[categories] ([id], [project_id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_categories]
GO
/****** Object:  ForeignKey [FK_issues_priorities]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_priorities] FOREIGN KEY([priority_id])
REFERENCES [dbo].[priorities] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_priorities]
GO
/****** Object:  ForeignKey [FK_issues_projects]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_projects]
GO
/****** Object:  ForeignKey [FK_issues_statuses]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_statuses] FOREIGN KEY([status_id])
REFERENCES [dbo].[statuses] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_statuses]
GO
/****** Object:  ForeignKey [FK_issues_Time]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_Time] FOREIGN KEY([created_on])
REFERENCES [dbo].[Time] ([PK_Date])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_Time]
GO
/****** Object:  ForeignKey [FK_issues_trackers]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_trackers] FOREIGN KEY([tracker_id])
REFERENCES [dbo].[trackers] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_trackers]
GO
/****** Object:  ForeignKey [FK_issues_users]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_users] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_users]
GO
/****** Object:  ForeignKey [FK_issues_users1]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[issues]  WITH NOCHECK ADD  CONSTRAINT [FK_issues_users1] FOREIGN KEY([assigned_to_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [FK_issues_users1]
GO
/****** Object:  ForeignKey [FK_journal_details_journals]    Script Date: 12/22/2011 11:27:18 ******/
ALTER TABLE [dbo].[journal_details]  WITH NOCHECK ADD  CONSTRAINT [FK_journal_details_journals] FOREIGN KEY([journal_id])
REFERENCES [dbo].[journals] ([id])
GO
ALTER TABLE [dbo].[journal_details] CHECK CONSTRAINT [FK_journal_details_journals]
GO
