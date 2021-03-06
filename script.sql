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
	[role] [nvarchar](255) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Details](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[userId] [int] NULL,
	[groupId] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Group](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[groupValue] [int] NOT NULL,
	[groupName] [nvarchar](255) NULL,
	[fromDate] [date] NULL,
	[toDate] [date] NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mra','123456','MrA','4 Chau Van Liem street','camyen.dao78@hotmail.com','84 2113847297 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrb','123456','MrB','181 Phan Dang Luu, Ward 1','tuquyen37@yahoo.com','(84-511)818042','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrc','123456','MrC','398 Le Hong Phong Str., Vung Tau city','thuylien.phung@hotmail.com','(84-37) 3 851 096','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrd','123456','MrD','4 Chau Van Liem street','bichnha_pham@yahoo.com','(84-8) 8272702 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mre','123456','MrE','Hamlet 2','tantai47@hotmail.com','84-4-8352439','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrf','123456','MrF','  21/7 My Hoa 2 Street, Tan Xuan Ward','hongthu.ngo@gmail.com','(08) 38226228 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrg','123456','MrG','99 Phuong Mai Street','bichvan.tang58@yahoo.com','(08) 37701112  ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrh','123456','MrH',' Avenue 17, Binh Han Ward','haianh.ha75@hotmail.com','(04) 39784125 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrj','123456','MrJ','258 Hoang Hoa Tham St., Ward 12','conglap_nguyen41@hotmail.com','(84-8) 3911 1537  ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrk','123456','MrK','5 Nguyen Quy Duc Street','thehung58@yahoo.com','(84-8) 39 870 095 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrl','123456','MrL','St. 948, An Loi Hamlet','camyen.dao78@hotmail.com','84 211. 3847297 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrm','123456','MrM','43A Ho Van Hue Street, Ward 9','bichdiep_truong38@gmail.com','84 211. 3847297 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrn','123456','MrN','151 Dong Khoi Street, Ben Nghe Ward, District 1','hoaithuong.hoang67@hotmail.com','(84-8) 3751 5834 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mru','123456','MrU','11A Nguyen Khuyen, Văn Mieu Ward','quangloc95@hotmail.com','(84-4) 3 511 4319 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrp','123456','MrP','Huu Nghi StDong Hoi City','tathieu83@gmail.com','(08) 38251424 ','')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrq','123456','MrQ','235/44 Khuong Viet Street, Phu Trung Ward','khaituan68@hotmail.com','210-3846694 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrr','123456','MrR','216D XO VIET NGHE TINH STREET, WARD 21','xuanbinh_duong@hotmail.com','(04) 3942 5958 ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mrt','123456','MrT',' No. 1 / 200Van Cao Street','chihieu_vuong@gmail.com','84-8-9290569  ','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mri','123456','MrI',' Str.19, Tan Thuan EPZ., Dist.7','nhahong_phung11@yahoo.com','84-0839292 747','USER')
INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[role])
VALUES ('mro','123456','MrO','10/4A Phan Van Hon St., Tan Thoi Nhat Ward, Dist. 12','quochien_phung@yahoo.com','321-3945343  ','USER')

--userid,groupid,truefalse-->
insert into dbo.Details 
values(1,1,0)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (101, N'Du lịch Mù Cang Chải','2022-10-05','2022-10-09','',52000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (101, N'Du lịch Mù Cang Chải','2022-10-02','2022-10-04','',6200000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (101, N'Du lịch Mù Cang Chải','2022-10-06','2022-10-10','',6000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (101, N'Du lịch Mù Cang Chải','2022-10-05','2022-10-07','',5900000)


INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (102, N'Du lịch Trạm Tấu','2022-11-02','2022-11-05','',55000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (102, N'Du lịch Trạm Tấu','2022-10-29','2022-11-05','',65000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (102, N'Du lịch Trạm Tấu','2022-10-10','2022-11-15','',6000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (103, N'Du lịch Nghĩa Lộ','2022-11-20','2022-11-22','',58000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (103, N'Du lịch Nghĩa Lộ','2022-10-23','2022-10-25','',68000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (103, N'Du lịch Nghĩa Lộ','2022-10-28','2022-10-30','',62000000)



INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (104, N'Du lịch Chiến Khu Vần','2022-12-02','2022-10-02','',72000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (104, N'Du lịch Chiến Khu Vần','2022-12-02','2022-10-02','',73000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (104, N'Du lịch Chiến Khu Vần','2022-10-02','2022-10-07','',82000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (104, N'Du lịch Chiến Khu Vần','2022-10-04','2022-10-09','',80000000)


INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (105, N'Du lịch Suối Giàng','2022-12-02','2022-12-05','',76000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (105, N'Du lịch Suối Giàng','2022-12-05','2022-12-10','',78000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (105, N'Du lịch Suối Giàng','2022-12-06','2022-12-11','',86000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (105, N'Du lịch Suối Giàng','2022-12-10','2022-12-16','',80000000)


INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-02','2022-10-04','',70000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-05','2022-10-08','',73000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-10','2022-10-13','',80000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (106,N'Du lịch Khu bảo tồn thiên nhiên Nà Hẩu','2022-10-11','2022-10-16','',89000000)


INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (107, N'Du lịch Hồ Thác Bà','2022-01-22','2022-01-25','',72000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (107, N'Du lịch Hồ Thác Bà','2022-01-26','2022-01-29','',71000000)

INSERT [dbo].[group] ([groupValue],[groupname],[fromdate],[todate],[quantity],[price]) 
VALUES (107, N'Du lịch Hồ Thác Bà','2022-01-20','2022-01-23','',68000000)


GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([id])
GO

ALTER TABLE [dbo].[Details]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Account] ([id])
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
