USE [DB3]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Id] [char](5) NOT NULL,
	[AppointmentTime] [date] NOT NULL,
	[State] [varchar](30) NULL,
	[Reason] [varchar](30) NULL,
	[Result] [varchar](30) NULL,
	[ReDate] [date] NULL,
	[DoctorId] [char](5) NULL,
	[PatientId] [char](5) NULL,
	[WorkShiftId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[PatientId] [char](5) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[PhoneNumber] [char](10) NULL,
	[Email] [varchar](30) NULL,
	[Relation] [varchar](20) NULL,
	[Address] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disease]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disease](
	[PrescriptionId] [char](5) NOT NULL,
	[Disease] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PrescriptionId] ASC,
	[Disease] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Id] [char](5) NOT NULL,
	[Specialty] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [char](5) NOT NULL,
	[PaymentState] [varchar](30) NULL,
	[PaymentDate] [date] NULL,
	[InvoiceDate] [date] NULL,
	[SumMoney] [decimal](10, 0) NULL,
	[PrescriptionId] [char](5) NULL,
	[PatientId] [char](5) NULL,
	[AppointmentId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Id] [char](5) NOT NULL,
	[Description] [varchar](30) NULL,
	[Price] [decimal](10, 0) NULL,
	[MedicineName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [char](5) NOT NULL,
	[FName] [varchar](15) NOT NULL,
	[LName] [varchar](15) NOT NULL,
	[BDate] [date] NULL,
	[StartDate] [date] NULL,
	[Sex] [char](1) NULL,
	[Email] [varchar](30) NULL,
	[HomeNumber] [int] NULL,
	[District] [varchar](15) NULL,
	[Province] [varchar](15) NULL,
	[PhoneNumber] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personnel](
	[Id] [char](5) NOT NULL,
	[Email] [varchar](30) NULL,
	[FName] [varchar](15) NOT NULL,
	[LName] [varchar](15) NOT NULL,
	[BDate] [date] NULL,
	[Salary] [decimal](10, 2) NULL,
	[Position] [varchar](20) NOT NULL,
	[Sex] [char](1) NULL,
	[HomeNumber] [int] NULL,
	[District] [varchar](15) NULL,
	[Province] [varchar](15) NULL,
	[PhoneNumber] [char](10) NULL,
	[WorkDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[ManagementId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Id] [char](5) NOT NULL,
	[DoctorId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrescriptionDetail]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrescriptionDetail](
	[PrescriptionId] [char](5) NOT NULL,
	[MedicineId] [char](5) NOT NULL,
	[Quantity] [int] NULL,
	[Intruction] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PrescriptionId] ASC,
	[MedicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[PatientId] [char](5) NOT NULL,
	[AppointmentId] [char](5) NOT NULL,
	[Score] [int] NULL,
	[Comment] [varchar](15) NULL,
	[ReviewTime] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC,
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [char](5) NOT NULL,
	[ServiceName] [varchar](15) NULL,
	[Description] [varchar](200) NULL,
	[Price] [decimal](10, 0) NULL,
	[ServiceId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceAppointment]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAppointment](
	[AppointmentId] [char](5) NOT NULL,
	[ServiceId] [char](5) NOT NULL,
	[Result] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceInvoice]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceInvoice](
	[InvoiceId] [char](5) NOT NULL,
	[ServiceId] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SideEffect]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SideEffect](
	[MedicineId] [char](5) NOT NULL,
	[SideEffect] [char](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicineId] ASC,
	[SideEffect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkShift]    Script Date: 12/10/2024 6:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkShift](
	[Id] [char](5) NOT NULL,
	[Number] [int] NOT NULL,
	[MaxSlot] [int] NULL,
	[StartTime] [date] NULL,
	[EndTime] [date] NULL,
	[DoctorId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP001', CAST(N'2023-12-01' AS Date), N'Ðang ch?', N'Khám m?n', N'Ðang di?u tr?', CAST(N'2023-12-08' AS Date), N'P002 ', N'PA001', N'WS001')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP002', CAST(N'2023-12-01' AS Date), N'Hoàn thành', N'Ki?m tra da', N'T?t', NULL, N'P004 ', N'PA002', N'WS002')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP003', CAST(N'2023-12-02' AS Date), N'Hoàn thành', N'Ði?u tr? nám', N'Khá', CAST(N'2023-12-10' AS Date), N'P007 ', N'PA003', N'WS003')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP004', CAST(N'2023-12-02' AS Date), N'Ðang ch?', N'Tu v?n da li?u', N'Ðang theo dõi', CAST(N'2023-12-15' AS Date), N'P002 ', N'PA004', N'WS004')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP005', CAST(N'2023-12-03' AS Date), N'Hoàn thành', N'Khám m?n', N'?n d?nh', NULL, N'P004 ', N'PA005', N'WS005')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP006', CAST(N'2023-12-03' AS Date), N'Ðang ch?', N'Cham sóc da', N'Ðang di?u tr?', CAST(N'2023-12-20' AS Date), N'P007 ', N'PA006', N'WS006')
INSERT [dbo].[Appointment] ([Id], [AppointmentTime], [State], [Reason], [Result], [ReDate], [DoctorId], [PatientId], [WorkShiftId]) VALUES (N'AP007', CAST(N'2023-12-04' AS Date), N'Hoàn thành', N'Ki?m tra da', N'T?t', NULL, N'P002 ', N'PA007', N'WS007')
GO
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P001 ', N'T?ng quát')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P002 ', N'Da li?u')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P003 ', N'PT th?m m?')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P004 ', N'Th?m m?')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P005 ', N'T?ng quát')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P006 ', N'TV da li?u')
INSERT [dbo].[Doctor] ([Id], [Specialty]) VALUES (N'P007 ', N'Da li?u')
GO
INSERT [dbo].[Employee] ([Id]) VALUES (N'P001 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P002 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P003 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P004 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P005 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P006 ')
INSERT [dbo].[Employee] ([Id]) VALUES (N'P007 ')
GO
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV001', N'Ðã thanh toán', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date), CAST(1500000 AS Decimal(10, 0)), N'PR001', N'PA001', N'AP001')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV002', N'Ðang ch?', NULL, CAST(N'2023-12-02' AS Date), CAST(3000000 AS Decimal(10, 0)), N'PR002', N'PA002', N'AP002')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV003', N'Ðã thanh toán', CAST(N'2023-12-03' AS Date), CAST(N'2023-12-03' AS Date), CAST(4500000 AS Decimal(10, 0)), N'PR003', N'PA003', N'AP003')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV004', N'Ðang ch?', NULL, CAST(N'2023-12-04' AS Date), CAST(2000000 AS Decimal(10, 0)), N'PR004', N'PA004', N'AP004')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV005', N'Ðã thanh toán', CAST(N'2023-12-05' AS Date), CAST(N'2023-12-05' AS Date), CAST(3500000 AS Decimal(10, 0)), N'PR005', N'PA005', N'AP005')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV006', N'Ðang ch?', NULL, CAST(N'2023-12-06' AS Date), CAST(4000000 AS Decimal(10, 0)), N'PR006', N'PA006', N'AP006')
INSERT [dbo].[Invoice] ([Id], [PaymentState], [PaymentDate], [InvoiceDate], [SumMoney], [PrescriptionId], [PatientId], [AppointmentId]) VALUES (N'IV007', N'Ðã thanh toán', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-07' AS Date), CAST(2500000 AS Decimal(10, 0)), N'PR007', N'PA007', N'AP007')
GO
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M001 ', N'Ði?u tr? m?n tr?ng cá', CAST(150000 AS Decimal(10, 0)), N'Acnotin 10mg')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M002 ', N'Du?ng ?m da', CAST(300000 AS Decimal(10, 0)), N'Hyaluronic Acid 2%')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M003 ', N'Ch?ng n?ng', CAST(250000 AS Decimal(10, 0)), N'KCN SPF 50')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M004 ', N'Ði?u tr? nám', CAST(400000 AS Decimal(10, 0)), N'Tretinoin 0.05%')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M005 ', N'Kháng viêm', CAST(200000 AS Decimal(10, 0)), N'Ibuprofen 400mg')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M006 ', N'Du?ng tr?ng da', CAST(350000 AS Decimal(10, 0)), N'Vitamin C Serum')
INSERT [dbo].[Medicine] ([Id], [Description], [Price], [MedicineName]) VALUES (N'M007 ', N'Cham sóc da', CAST(100000 AS Decimal(10, 0)), N'S?a r?a m?t d?u nh?')
GO
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA001', N'Tr?n', N'Van H', CAST(N'2000-01-15' AS Date), CAST(N'2023-05-20' AS Date), N'M', N'tran.van.h@gmail.com', 12, N'Qu?n 4', N'TP.HCM', N'0911234567')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA002', N'Lê', N'Th? I', CAST(N'1998-03-20' AS Date), CAST(N'2023-05-22' AS Date), N'F', N'le.thi.i@gmail.com', 34, N'Qu?n 9', N'TP.HCM', N'0923456789')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA003', N'Nguy?n', N'Van J', CAST(N'1995-06-10' AS Date), CAST(N'2023-05-25' AS Date), N'M', N'nguyen.van.j@gmail.com', 56, N'Qu?n 6', N'TP.HCM', N'0939876543')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA004', N'Ph?m', N'Th? K', CAST(N'1985-09-05' AS Date), CAST(N'2023-06-01' AS Date), N'F', N'pham.thi.k@gmail.com', 78, N'Qu?n 11', N'TP.HCM', N'0941237890')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA005', N'Hoàng', N'Van L', CAST(N'1990-11-25' AS Date), CAST(N'2023-06-10' AS Date), N'M', N'hoang.van.l@gmail.com', 90, N'Qu?n Gò V?p', N'TP.HCM', N'0952348901')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA006', N'Tr?n', N'Th? M', CAST(N'2002-05-30' AS Date), CAST(N'2023-06-15' AS Date), N'F', N'tran.thi.m@gmail.com', 112, N'Qu?n 12', N'TP.HCM', N'0963459012')
INSERT [dbo].[Patient] ([Id], [FName], [LName], [BDate], [StartDate], [Sex], [Email], [HomeNumber], [District], [Province], [PhoneNumber]) VALUES (N'PA007', N'Nguy?n', N'Van N', CAST(N'1997-07-20' AS Date), CAST(N'2023-06-20' AS Date), N'M', N'nguyen.van.n@gmail.com', 134, N'Qu?n Tân Bình', N'TP.HCM', N'0974560123')
GO
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P001 ', N'nguyen.van.a@gmail.com', N'Nguy?n', N'Van A', CAST(N'1980-05-15' AS Date), CAST(15000000.00 AS Decimal(10, 2)), N'Qu?n lý', N'M', 123, N'Qu?n 1', N'TP.HCM', N'0123456789', CAST(N'2010-01-01' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), NULL)
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P002 ', N'tran.thi.b@gmail.com', N'Tr?n', N'Th? B', CAST(N'1985-08-10' AS Date), CAST(12000000.00 AS Decimal(10, 2)), N'Bác si', N'F', 456, N'Qu?n 3', N'TP.HCM', N'0987654321', CAST(N'2012-02-15' AS Date), CAST(N'07:30:00' AS Time), CAST(N'16:30:00' AS Time), N'P001 ')
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P003 ', N'le.van.c@gmail.com', N'Lê', N'Van C', CAST(N'1990-01-25' AS Date), CAST(8000000.00 AS Decimal(10, 2)), N'Y tá', N'M', 789, N'Qu?n 5', N'TP.HCM', N'0934567890', CAST(N'2015-06-01' AS Date), CAST(N'08:30:00' AS Time), CAST(N'17:30:00' AS Time), N'P001 ')
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P004 ', N'hoang.thi.d@gmail.com', N'Hoàng', N'Th? D', CAST(N'1992-03-10' AS Date), CAST(9500000.00 AS Decimal(10, 2)), N'Bác si', N'F', 147, N'Qu?n 7', N'TP.HCM', N'0961234567', CAST(N'2016-05-20' AS Date), CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), N'P002 ')
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P005 ', N'pham.van.e@gmail.com', N'Ph?m', N'Van E', CAST(N'1988-10-15' AS Date), CAST(7000000.00 AS Decimal(10, 2)), N'Nhân viên l? tân', N'M', 258, N'Qu?n 10', N'TP.HCM', N'0909876543', CAST(N'2017-09-12' AS Date), CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), N'P003 ')
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P006 ', N'nguyen.thi.f@gmail.com', N'Nguy?n', N'Th? F', CAST(N'1995-12-25' AS Date), CAST(6000000.00 AS Decimal(10, 2)), N'Nhân viên', N'F', 369, N'Qu?n 2', N'TP.HCM', N'0912345678', CAST(N'2018-01-15' AS Date), CAST(N'08:30:00' AS Time), CAST(N'17:30:00' AS Time), N'P004 ')
INSERT [dbo].[Personnel] ([Id], [Email], [FName], [LName], [BDate], [Salary], [Position], [Sex], [HomeNumber], [District], [Province], [PhoneNumber], [WorkDate], [StartTime], [EndTime], [ManagementId]) VALUES (N'P007 ', N'le.van.g@gmail.com', N'Lê', N'Van G', CAST(N'1993-09-30' AS Date), CAST(11000000.00 AS Decimal(10, 2)), N'Bác si', N'M', 753, N'Qu?n Bình Th?nh', N'TP.HCM', N'0981112223', CAST(N'2019-11-01' AS Date), CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time), N'P001 ')
GO
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR001', N'P002 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR002', N'P004 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR003', N'P007 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR004', N'P002 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR005', N'P004 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR006', N'P007 ')
INSERT [dbo].[Prescription] ([Id], [DoctorId]) VALUES (N'PR007', N'P002 ')
GO
INSERT [dbo].[Service] ([Id], [ServiceName], [Description], [Price], [ServiceId]) VALUES (N'S001 ', N'Cham sóc da', N'D?ch v? cham sóc da co b?n', CAST(500000 AS Decimal(10, 0)), NULL)
INSERT [dbo].[Service] ([Id], [ServiceName], [Description], [Price], [ServiceId]) VALUES (N'S002 ', N'Ði?u tr? m?n', N'D?ch v? di?u tr? m?n chuyên sâu', CAST(700000 AS Decimal(10, 0)), NULL)
GO
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS001', 1, 10, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date), N'P002 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS002', 2, 15, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date), N'P004 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS003', 3, 20, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date), N'P007 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS004', 4, 10, CAST(N'2023-12-02' AS Date), CAST(N'2023-12-02' AS Date), N'P002 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS005', 5, 12, CAST(N'2023-12-02' AS Date), CAST(N'2023-12-02' AS Date), N'P004 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS006', 6, 8, CAST(N'2023-12-03' AS Date), CAST(N'2023-12-03' AS Date), N'P007 ')
INSERT [dbo].[WorkShift] ([Id], [Number], [MaxSlot], [StartTime], [EndTime], [DoctorId]) VALUES (N'WS007', 7, 15, CAST(N'2023-12-03' AS Date), CAST(N'2023-12-03' AS Date), N'P002 ')
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [doctor_id_constraint] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [doctor_id_constraint]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [patient_id_constraint] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [patient_id_constraint]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [workshift_id_constraint] FOREIGN KEY([WorkShiftId])
REFERENCES [dbo].[WorkShift] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [workshift_id_constraint]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [contact_id_constraint] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [contact_id_constraint]
GO
ALTER TABLE [dbo].[Disease]  WITH CHECK ADD  CONSTRAINT [prescription_disease_constraint] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription] ([Id])
GO
ALTER TABLE [dbo].[Disease] CHECK CONSTRAINT [prescription_disease_constraint]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [id_constraint] FOREIGN KEY([Id])
REFERENCES [dbo].[Personnel] ([Id])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [id_constraint]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [emp_id_constraint] FOREIGN KEY([Id])
REFERENCES [dbo].[Personnel] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [emp_id_constraint]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [appointment_invoice_constraint] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointment] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [appointment_invoice_constraint]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [patient_invoice_constraint] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [patient_invoice_constraint]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [prescription_invoice_constraint] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [prescription_invoice_constraint]
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD  CONSTRAINT [management_id_constraint] FOREIGN KEY([ManagementId])
REFERENCES [dbo].[Personnel] ([Id])
GO
ALTER TABLE [dbo].[Personnel] CHECK CONSTRAINT [management_id_constraint]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [doctor_prescription_constraint] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [doctor_prescription_constraint]
GO
ALTER TABLE [dbo].[PrescriptionDetail]  WITH CHECK ADD  CONSTRAINT [medicine_detail_constraint] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[Medicine] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionDetail] CHECK CONSTRAINT [medicine_detail_constraint]
GO
ALTER TABLE [dbo].[PrescriptionDetail]  WITH CHECK ADD  CONSTRAINT [prescription_detail_constraint] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionDetail] CHECK CONSTRAINT [prescription_detail_constraint]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [appointment_id_constraint] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointment] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [appointment_id_constraint]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [review_patient_id_constraint] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [review_patient_id_constraint]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [service_id_constraint] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [service_id_constraint]
GO
ALTER TABLE [dbo].[ServiceAppointment]  WITH CHECK ADD  CONSTRAINT [appointment_service_constraint] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointment] ([Id])
GO
ALTER TABLE [dbo].[ServiceAppointment] CHECK CONSTRAINT [appointment_service_constraint]
GO
ALTER TABLE [dbo].[ServiceAppointment]  WITH CHECK ADD  CONSTRAINT [service_appointment_constraint] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[ServiceAppointment] CHECK CONSTRAINT [service_appointment_constraint]
GO
ALTER TABLE [dbo].[ServiceInvoice]  WITH CHECK ADD  CONSTRAINT [appointment_servoice_constraint] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
GO
ALTER TABLE [dbo].[ServiceInvoice] CHECK CONSTRAINT [appointment_servoice_constraint]
GO
ALTER TABLE [dbo].[ServiceInvoice]  WITH CHECK ADD  CONSTRAINT [servoice_appointment_constraint] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[ServiceInvoice] CHECK CONSTRAINT [servoice_appointment_constraint]
GO
ALTER TABLE [dbo].[SideEffect]  WITH CHECK ADD  CONSTRAINT [medicine_effect_constraint] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[Medicine] ([Id])
GO
ALTER TABLE [dbo].[SideEffect] CHECK CONSTRAINT [medicine_effect_constraint]
GO
ALTER TABLE [dbo].[WorkShift]  WITH CHECK ADD  CONSTRAINT [shift_id_constraint] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[WorkShift] CHECK CONSTRAINT [shift_id_constraint]
GO
