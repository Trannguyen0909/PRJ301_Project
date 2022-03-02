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
drop table [dbo].[Group]
drop table [dbo].[detail]
CREATE TABLE [dbo].[detail](
	[id][int] NOT NULL,
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
	[groupname] [nvarchar](255) NULL,	
	[from_date] [date] NULL,
	[to_date][date] null,
	[img][nvarchar](255) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,001,N'Trần Nguyên','trannguyen@gmail.com',597-1205145,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,002,N'Đặng Ðức Toản','toandt@gmail.com',672-5706984,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,003,N'Linh Ðình Chương','chuongld@gmail.com',017-8183540,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price])
VALUES ( 101,004,N'Thi Minh Dân','dantm@gmail.com',750-8206722,1000000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (101, 005,N'Liên Thành Ðạt','datlt@gmail.com',949-0015525,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,006,N'Cai Bình Ðạt','datcb@gmail.com',048-8833860,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,007,N'Tri Hải Giang','giangth@gmail.com',787-7550720,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 101,008,N'Đương Tiến Dũng','dungtd@gmail.com',111-3776246,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (101, 009,N'Lộ Minh Khôi','khoiml@gmail.com',345-6733881,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 102,010,N'Mã Nhật Huy','huymn@gmail.com',592-0993014,1200000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (102, 011,N'Nhâm Sơn Lâm','lamnn@gmail.com',388-0415098,1200000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES ( 102,012,N'Đống Phương Nam','namdp@gmail.com',453-8816981,1200000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 102,013,N'Lãnh Chiêu Quân','quanlm@gmail.com',028-0591015,1200000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (102,014, N'Mạnh Minh Quốc','quocmm@gmail.com',953-1040995,1200000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (102,015,N'Doãn Chính Thuận','thuandc@gmail.com',332-5924115,1200000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (102,016, N'Nghiêm Duy Thành','thanhnd@gmail.com',059-9700380,1200000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES ( 103,017,N'Quách Ðình Thiện','thienqd@gmail.com',229-6386829,1000000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 103,018,N'Linh Minh Cảnh','canhlm@gmail.com',551-8930461,1500000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES (103, 019,N'Tăng Minh Dân','dantm@gmail.com',607-6115297,1500000)
INSERT [dbo].[detail] ([id], [memberid],[Membername],[gmail],[phone],[price]) 
VALUES (103, 020,N'Thế Thịnh Cường','cuongtt@gmail.com',948-8071097,1500000)
INSERT [dbo].[detail] ([id],[memberid], [Membername],[gmail],[phone],[price]) 
VALUES ( 103,021,N'Khà Ngọc Dũng','dungkn@gmail.com',082-5274332,1500000)

GO

INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (101, N'Du lịch Mù Cang Chải','2022-10-02','2022-10-04','images/mucangchai.jpg',1200000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (102, N'Du lịch Trạm Tấu','2022-11-02','2022-11-05','images/tramtau.jpg',1500000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (103, N'Du lịch Nghĩa Lộ','2022-11-20','2022-11-22','images/nghialo.jpg',3800000)

INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (104, N'Du lịch Mù Cang Chải','2022-10-02','2022-10-04','images/mucangchai.jpg',4200000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (105, N'Du lịch Trạm Tấu','2022-10-29','2022-11-05','images/tramtau.jpg',1500000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[price]) 
VALUES (106, N'Du lịch Nghĩa Lộ','2022-10-23','2022-10-25','images/nghialo.jpg',5800000)

/*
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[description],[price]) 
VALUES (108, N'Du lịch Chiến Khu Vần','2022-12-02','2022-10-02',1200000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[description],[price]) 
VALUES (109, N'Du lịch Suối Giàng','2022-12-02','2022-10-02',1600000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[description],[price]) 
VALUES ( 110,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-02','2022-10-04','','',1000000)
INSERT [dbo].[group] ([id], [groupname],[from_date],[to_date],[img],[description],[price]) 
VALUES (111, N'Du lịch Hồ Thác Bà','2022-01-22','2022-10-02',2000000)
*/


GO
ALTER TABLE [dbo].[detail]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[group] ([id])
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
