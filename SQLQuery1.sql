create database Groceryapp
use Groceryapp



CREATE  TABLE [dbo].[Feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](10) NULL,
	[rating] [int] NULL,
	[comments] [nvarchar](max) NULL,
	
PRIMARY KEY CLUSTERED  
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

Select * From Feedback  

