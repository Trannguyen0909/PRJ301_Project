USE [master]
GO
/****** Object:  Database [Project]    Script Date: 2/23/2022 1:19:12 PM ******/
CREATE DATABASE [Project]
drop database [Project]
GO
USE [Project]
GO
/****** Object:  Table [dbo].[detail]    Script Date: 2/23/2022 1:19:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
drop table dbo.Account
drop table dbo.OrderDetail
drop table dbo.Orders
drop table dbo.Shipping
drop table [dbo].[Group]
drop table [dbo].[detail]
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 2/24/2022 7:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[detail](
	[id][int]not null,
	[groupid][int] NOT NULL,
	[memberid][int] not null,
	[Membername] [nvarchar](255) NULL,	
	[gmail] [nvarchar](255) NULL,
	[phone][varchar](50) NULL,
	[price][int] null,
 CONSTRAINT [PK_detail] PRIMARY KEY CLUSTERED 
(	
	[memberid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 2/23/2022 1:19:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
Go

CREATE TABLE [dbo].[Group](
	[id] [int] NOT NULL,
	[groupid][int]not null,
	[groupname] [nvarchar](255) NULL,	
	[from_date] [date] NULL,
	[to_date][date] null,
	[quantity][nvarchar](255) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,001,N'Trần Nguyên','trannguyen@gmail.com',5971205145,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,002,N'Đặng Ðức Toản','toandt@gmail.com',6725706984,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,003,N'Linh Ðình Chương','chuongld@gmail.com',0175183540,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price])
VALUES ( 1,101,004,N'Thi Minh Dân','dantm@gmail.com',7508206722,52000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (1,101, 005,N'Liên Thành Ðạt','datlt@gmail.com',9490015525,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (1, 101,006,N'Cai Bình Ðạt','datcb@gmail.com',0488833860,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,007,N'Ngạc Xuân Cung','cungnx@gmail.com',9671452304,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,008,N'Bảo Tuấn Ðức','ducbt@gmail.com',5760063861,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 1,101,009,N'Cầm Phúc Hòa','hoaphuc@gmail.com',2102116885,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price])
VALUES ( 1,101,010,N'Cầm Huy Lâm','lamhuy@gmail.com',6792033498,52000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (1,101, 011,N'Thập Bảo Long','longtb@gmail.com',5932218411,52000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (1, 101,012,N'Quách Ngọc Minh','Minhqn@gmail.com',1382061617,52000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2, 101,013,N'Tri Hải Giang','giangth@gmail.com',7877550720,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2, 101,014,N'Đương Tiến Dũng','dungtd@gmail.com',1113776246,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2,101, 015,N'Lộ Minh Khôi','khoiml@gmail.com',3456733881,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2, 101,016,N'Thiều Thế Doanh','doangnt@gmail.com',1934284119,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2, 101,017,N'Đương Huy Khiêm','khiemhuy@gmail.com',4236178249,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (2,101, 018,N'Hàn Việt Huy','huyhv@gmail.com',2279430262,62000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3, 101,019,N'Mã Nhật Huy','huymn@gmail.com',5920993014,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3,101, 020,N'Nhâm Sơn Lâm','lamnn@gmail.com',3880415098,60000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (3, 101,021,N'Đống Phương Nam','namdp@gmail.com',4538816981,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3, 101,022,N'Lãnh Chiêu Quân','quanlm@gmail.com',0280591015,60000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (3, 101,023, N'Mạnh Minh Quốc','quocmm@gmail.com',9531040995,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3, 101,024,N'Khương Công Ân','ankc@gmail.com',3863213637,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3,101, 025,N'Trác Hữu Ðịnh','dinhth@gmail.com',8821012691,60000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (3, 101,026,N'Liên Anh Khôi','khoila@gmail.com',5594527240,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3, 101,027,N'Lộ Thành Lợi','loilt@gmail.com',1432795494,60000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (3, 101,028, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (3, 101,029,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,60000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (3, 101,030, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,60000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (4,101,031,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,59000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (4,101,032, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,59000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (4,101,033,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,59000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (4,101,034, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,59000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (5, 102,035,N'Quách Ðình Thiện','thienqd@gmail.com',0255221692,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (5, 102,036,N'Linh Minh Cảnh','canhlm@gmail.com',1311584954,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (5,102, 037,N'Tăng Minh Dân','dantm@gmail.com',6013216337,55000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (5,102, 038,N'Thế Thịnh Cường','cuongtt@gmail.com',9281451672,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 5, 102,039,N'Khà Ngọc Dũng','dungkn@gmail.com',9457843299,55000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (5, 102,040,N'Đoạn Thành Ân','andt@gmail.com',5989104702,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (5, 102,041,N'Lãnh Trung Ðức','duclt@gmail.com',5585387899,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (5,102, 042,N'Trưng Trường Phát','phattt@gmail.com',7355853389,55000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (5,102, 043,N'Uông Kim Phú','phuuk@gmail.com',7847327532,55000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 5, 102,044,N'Đổng Ðức Quảng','quangdd@gmail.com',1830629557,55000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (6, 102,045,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6, 102,046,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102, 047,N'Lục Kiến Bình','phattt@gmail.com',7272350664,65000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (6,102, 048,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102,049,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,65000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (6, 102,050,N'Cồ Xuân Nam','andt@gmail.com',4040404716,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6, 102,051,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102, 052,N'Lã Khánh Bình','phattt@gmail.com',7272350664,65000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (6,102, 053,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102,054,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102, 055,N'Phù Công Hiếu','phattt@gmail.com',7272350664,65000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (6,102, 056,N'Danh Duy Luận','phuuk@gmail.com',0511992623,65000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (6,102,057,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,65000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (7, 102,058,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,6000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7, 102,059,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7,102, 060,N'Lục Kiến Bình','phattt@gmail.com',7272350664,60000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (7,102, 061,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7,102,062,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,60000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (7, 102,063,N'Cồ Xuân Nam','andt@gmail.com',4040404716,1000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7, 102,064,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7,102, 065,N'Lã Khánh Bình','phattt@gmail.com',7272350664,60000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (7,102, 066,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,60000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (7,102,067,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,60000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (8, 103,068,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,58000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8, 103,069,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,58000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8,103, 070,N'Lục Kiến Bình','phattt@gmail.com',7272350664,58000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (8,103, 071,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,58000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8,103,072,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,58000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (8, 103,073,N'Cồ Xuân Nam','andt@gmail.com',4040404716,1000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8, 103,074,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,58000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8,103, 075,N'Lã Khánh Bình','phattt@gmail.com',7272350664,58000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (8,103, 076,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,58000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (8,103,077,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,58000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (9, 103,078,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9, 103,079,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103, 080,N'Lục Kiến Bình','phattt@gmail.com',7272350664,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (9,103, 081,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103,082,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (9, 103,083,N'Cồ Xuân Nam','andt@gmail.com',4040404716,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9, 103,084,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103, 085,N'Lã Khánh Bình','phattt@gmail.com',7272350664,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (9,103, 086,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103,087,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103, 088,N'Phù Công Hiếu','phattt@gmail.com',7272350664,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (9,103, 089,N'Danh Duy Luận','phuuk@gmail.com',0511992623,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (9,103,090,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,68000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (10, 103,091,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10, 103,092,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10,103, 093,N'Lục Kiến Bình','phattt@gmail.com',7272350664,62000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (10,103, 094,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10,103,095,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,62000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (10, 103,096,N'Cồ Xuân Nam','andt@gmail.com',4040404716,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10, 103,097,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10,103, 098,N'Lã Khánh Bình','phattt@gmail.com',7272350664,62000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (10,103, 099,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10,103,100,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,62000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (10,103,101,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,62000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11, 104,102,N'Mã Nhật Huy','huymn@gmail.com',5920993014,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11,104, 103,N'Nhâm Sơn Lâm','lamnn@gmail.com',3880415098,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (11, 104,104,N'Đống Phương Nam','namdp@gmail.com',4538816981,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11, 104,105,N'Lãnh Chiêu Quân','quanlm@gmail.com',0280591045,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (11, 104,106, N'Mạnh Minh Quốc','quocmm@gmail.com',9531040995,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11, 104,107,N'Khương Công Ân','ankc@gmail.com',3863213637,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11,104, 108,N'Trác Hữu Ðịnh','dinhth@gmail.com',8821042691,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (11, 104,109,N'Liên Anh Khôi','khoila@gmail.com',5594527240,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11, 104,110,N'Lộ Thành Lợi','loilt@gmail.com',1432795494,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (11, 104,111, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (11, 104,112,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (11, 104,113, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,72000000)


INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12,104,114,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,73000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12,104,115, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,73000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12,104,116,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,73000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12,104,117, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,73000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12, 104,118, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,73000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (12, 104,119,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,73000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (12, 104,120, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,73000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (13,104,121, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,82000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (13, 104,122, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,82000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (13, 104,123,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,82000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (13, 104,124, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,82000000)


INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14,104,125,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14,104,126, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14,104,127,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14,104,128, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,80000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14, 104,129, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (14, 104,130,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,80000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14, 104,131, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14,104,132, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,80000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14, 104,133, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (14, 104,134,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,80000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (14, 104,135, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,80000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15,105,136,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,76000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15,105,137, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,76000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15,105,138,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,76000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15,105,139, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,76000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15, 105,140, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,76000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (15, 105,141,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,76000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15, 105,142, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,76000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15, 105,143, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,76000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15,105,144, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,76000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15, 105,145, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,76000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (15, 105,146,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,76000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (15, 105,147, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,76000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (16,105,148, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,78000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (16, 105,149, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,78000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (16, 105,150,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,78000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (16, 105,151, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,78000000)


INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17,105,154,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,86000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17,105,155, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,86000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17,105,156,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,86000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17,105,157, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,86000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17, 105,158, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,86000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (17, 105,159,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,86000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (17, 105,160, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,86000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (18, 105,161,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,80000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (18, 105,162, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,80000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (19, 106,163,N'Nhan Tuấn Anh','andt@gmail.com',4040404716,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19, 106,164,N'Ninh Hòa Bình','duclt@gmail.com',1171351672,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19,106, 165,N'Lục Kiến Bình','phattt@gmail.com',7272350664,70000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (19,106,166,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19,106,167,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,70000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (19, 106,168,N'Cồ Xuân Nam','andt@gmail.com',4040404716,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19, 106,169,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19,106, 170,N'Lã Khánh Bình','phattt@gmail.com',7272350664,70000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (19,106,171,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19,106,172,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,70000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (19,106,173,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,70000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (20, 106,174,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,73000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (20,106, 175,N'Lã Khánh Bình','phattt@gmail.com',7272350664,73000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (20,106,176,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,73000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (20,106,177,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,73000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (20,106,178,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,73000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21,106, 179,N'Lục Kiến Bình','phattt@gmail.com',7272350664,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (21,106,180,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21,106,181,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (21, 106,182,N'Cồ Xuân Nam','andt@gmail.com',4040404716,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21, 106,183,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21,106, 184,N'Lã Khánh Bình','phattt@gmail.com',7272350664,80000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (21,106,185,N'Bùi Yên Bình','phuuk@gmail.com',0511992623,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21,106,186,N'Đăng Hồng Ðăng','quangdd@gmail.com',0505672930,80000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (21,106,187,N'Uông Đình Chiến','quangdd@gmail.com',0505672930,80000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (22,106, 188,N'Lục Kiến Bình','phattt@gmail.com',7272350664,89000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (22,106,189,N'Quán Xuân Cao','phuuk@gmail.com',0511992623,89000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (22,106,190,N'Bồ Quốc Hải','quangdd@gmail.com',0505672930,89000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (22, 106,191,N'Cồ Xuân Nam','andt@gmail.com',4040404716,89000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (22, 106,192,N'Phạm Quốc Bảo','duclt@gmail.com',1171351672,89000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (22,106, 193,N'Lã Khánh Bình','phattt@gmail.com',7272350664,89000000)

INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23,107,194,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23,107,195, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23,107,196,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23,107,197, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23, 107,198, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (23, 107,199,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23, 107,200, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23, 107,201, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,72000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23,107,202, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23, 107,203, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,72000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (23, 107,204,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,72000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (23, 107,205, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,72000000)

INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (24, 107,206,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,71000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (24, 107,207, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,71000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (24, 107,208, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,71000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (24,107,209, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,71000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (24, 107,210, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,71000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (24, 107,211,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,71000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (24, 107,212, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,7100000)


INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25,107,213,N'Doãn Chính Thuận','thuandc@gmail.com',3325924115,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25,107,214, N'Nghiêm Duy Thành','thanhnd@gmail.com',0599700380,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25,107,215,N'Nghị Cao Minh','Minhnc@gmail.com',4066276035,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25,107,216, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,68000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25, 107,217, N'Phó Hoàng Mỹ','myph@gmail.com',1642911097,68000000)
INSERT [dbo].[detail] ([id],[groupid],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (25, 107,218,N'Ngô Thế Trung','trungnt@gmail.com',9111946057,68000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25, 107,219, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,68000000)
INSERT [dbo].[detail] ([id], [groupid],[memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25, 107,220, N'Âu Dương Quang Nhật','Nhatqd@gmail.com',8028667008,68000000)
INSERT [dbo].[detail] ([id],[groupid], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (25,107,221, N'Linh Nguyên Lộc','locln@gmail.com',4619314063,68000000)
GO

INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (1,101, N'Du lịch Mù Cang Chải','2022-10-05','2022-10-09','',5200000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (2,101, N'Du lịch Mù Cang Chải','2022-10-02','2022-10-04','',6200000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (3,101, N'Du lịch Mù Cang Chải','2022-10-06','2022-10-10','',6000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (4,101, N'Du lịch Mù Cang Chải','2022-10-05','2022-10-07','',5900000)

INSERT [dbo].[group] ([id],[groupid], [groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (5,102, N'Du lịch Trạm Tấu','2022-11-02','2022-11-05','',55000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (6,102, N'Du lịch Trạm Tấu','2022-10-29','2022-11-05','',65000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (7,102, N'Du lịch Trạm Tấu','2022-10-10','2022-11-15','',6000000)

INSERT [dbo].[group] ([id],[groupid], [groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (8,103, N'Du lịch Nghĩa Lộ','2022-11-20','2022-11-22','',58000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (9,103, N'Du lịch Nghĩa Lộ','2022-10-23','2022-10-25','',68000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (10,103, N'Du lịch Nghĩa Lộ','2022-10-28','2022-10-30','',62000000)


INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (11,104, N'Du lịch Chiến Khu Vần','2022-12-02','2022-10-02','',72000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (12,104, N'Du lịch Chiến Khu Vần','2022-12-02','2022-10-02','',73000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (13,104, N'Du lịch Chiến Khu Vần','2022-10-02','2022-10-07','',82000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (14,104, N'Du lịch Chiến Khu Vần','2022-10-04','2022-10-09','',80000000)

INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (15,105, N'Du lịch Suối Giàng','2022-12-02','2022-12-05','',76000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (16,105, N'Du lịch Suối Giàng','2022-12-05','2022-12-10','',78000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (17,105, N'Du lịch Suối Giàng','2022-12-06','2022-12-11','',86000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (18,105, N'Du lịch Suối Giàng','2022-12-10','2022-12-16','',80000000)

INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (19, 106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-02','2022-10-04','',70000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (20, 106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-05','2022-10-08','',73000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (21, 106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-10','2022-10-13','',80000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (22, 106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-11','2022-10-16','',89000000)

INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (23,107, N'Du lịch Hồ Thác Bà','2022-01-22','2022-01-25','',72000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (24,107, N'Du lịch Hồ Thác Bà','2022-01-26','2022-01-29','',71000000)
INSERT [dbo].[group] ([id], [groupid],[groupname],[from_date],[to_date],[quantity],[price]) 
VALUES (25,107, N'Du lịch Hồ Thác Bà','2022-01-20','2022-01-23','',68000000)










ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO

GO
ALTER TABLE [dbo].[detail]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[group] ([id])
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
