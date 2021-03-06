/****** Объект:  ForeignKey [R_11]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_11]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки] DROP CONSTRAINT [R_11]
GO
/****** Объект:  ForeignKey [R_12]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_12]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки] DROP CONSTRAINT [R_12]
GO
/****** Объект:  ForeignKey [R_13]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_13]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки] DROP CONSTRAINT [R_13]
GO
/****** Объект:  ForeignKey [R_9]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки] DROP CONSTRAINT [R_9]
GO
/****** Объект:  ForeignKey [R_10]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_10]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузы]'))
ALTER TABLE [dbo].[Грузы] DROP CONSTRAINT [R_10]
GO
/****** Объект:  ForeignKey [R_14]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_14]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузы]'))
ALTER TABLE [dbo].[Грузы] DROP CONSTRAINT [R_14]
GO
/****** Объект:  ForeignKey [R_7]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_7]') AND parent_object_id = OBJECT_ID(N'[dbo].[Сотрудники]'))
ALTER TABLE [dbo].[Сотрудники] DROP CONSTRAINT [R_7]
GO
/****** Объект:  View [dbo].[View_3]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
DROP VIEW [dbo].[View_3]
GO
/****** Объект:  View [dbo].[View_1]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
DROP VIEW [dbo].[View_1]
GO
/****** Объект:  View [dbo].[View_2]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
DROP VIEW [dbo].[View_2]
GO
/****** Объект:  View [dbo].[View_4]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
DROP VIEW [dbo].[View_4]
GO
/****** Объект:  Table [dbo].[Грузоперевозки]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]') AND type in (N'U'))
DROP TABLE [dbo].[Грузоперевозки]
GO
/****** Объект:  Table [dbo].[Грузы]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Грузы]') AND type in (N'U'))
DROP TABLE [dbo].[Грузы]
GO
/****** Объект:  Table [dbo].[Сотрудники]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудники]') AND type in (N'U'))
DROP TABLE [dbo].[Сотрудники]
GO
/****** Объект:  Table [dbo].[Аэропорты]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Аэропорты]') AND type in (N'U'))
DROP TABLE [dbo].[Аэропорты]
GO
/****** Объект:  Table [dbo].[Тип]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Тип]') AND type in (N'U'))
DROP TABLE [dbo].[Тип]
GO
/****** Объект:  Table [dbo].[Самолеты]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Самолеты]') AND type in (N'U'))
DROP TABLE [dbo].[Самолеты]
GO
/****** Объект:  Table [dbo].[Пользователи]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Пользователи]') AND type in (N'U'))
DROP TABLE [dbo].[Пользователи]
GO
/****** Объект:  Table [dbo].[Операция]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Операция]') AND type in (N'U'))
DROP TABLE [dbo].[Операция]
GO
/****** Объект:  Table [dbo].[Должности]    Дата сценария: 05/13/2014 09:19:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Должности]') AND type in (N'U'))
DROP TABLE [dbo].[Должности]
GO
/****** Объект:  Table [dbo].[Должности]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Должности]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Должности](
	[КодДолжности] [int] NOT NULL,
	[Должность] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKДолжности] PRIMARY KEY CLUSTERED 
(
	[КодДолжности] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Должности] ([КодДолжности], [Должность]) VALUES (1, N'мастер')
INSERT [dbo].[Должности] ([КодДолжности], [Должность]) VALUES (2, N'кладовщик')
/****** Объект:  Table [dbo].[Операция]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Операция]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Операция](
	[КодОперации] [int] NOT NULL,
	[Наименование] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKОперация] PRIMARY KEY CLUSTERED 
(
	[КодОперации] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Операция] ([КодОперации], [Наименование]) VALUES (1, N'Погрузка')
INSERT [dbo].[Операция] ([КодОперации], [Наименование]) VALUES (2, N'Получение')
/****** Объект:  Table [dbo].[Пользователи]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Пользователи]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Пользователи](
	[Id] [int] NOT NULL,
	[Login] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Pass] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[role] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKПользователи] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Пользователи] ([Id], [Login], [Pass], [role]) VALUES (1, N'admin', N'123', N'1')
INSERT [dbo].[Пользователи] ([Id], [Login], [Pass], [role]) VALUES (2, N'disp', N'123', N'2')
INSERT [dbo].[Пользователи] ([Id], [Login], [Pass], [role]) VALUES (3, N'klad', N'123', N'3')
/****** Объект:  Table [dbo].[Самолеты]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Самолеты]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Самолеты](
	[КодСамолета] [int] NOT NULL,
	[Марка] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Грузовместимость] [int] NULL,
	[ГодВыпуска] [int] NULL,
 CONSTRAINT [XPKСамолеты] PRIMARY KEY CLUSTERED 
(
	[КодСамолета] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Самолеты] ([КодСамолета], [Марка], [Грузовместимость], [ГодВыпуска]) VALUES (1, N'АН-124', 1500, 2005)
/****** Объект:  Table [dbo].[Тип]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Тип]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Тип](
	[КодТипа] [int] NOT NULL,
	[Наименование] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKТип] PRIMARY KEY CLUSTERED 
(
	[КодТипа] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Тип] ([КодТипа], [Наименование]) VALUES (1, N'чемодан')
INSERT [dbo].[Тип] ([КодТипа], [Наименование]) VALUES (2, N'коробка')
INSERT [dbo].[Тип] ([КодТипа], [Наименование]) VALUES (3, N'посылка')
INSERT [dbo].[Тип] ([КодТипа], [Наименование]) VALUES (4, N'бандероль')
/****** Объект:  Table [dbo].[Аэропорты]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Аэропорты]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Аэропорты](
	[КодАэропорта] [int] NOT NULL,
	[Название] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Страна] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Город] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKАэропорты] PRIMARY KEY CLUSTERED 
(
	[КодАэропорта] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Аэропорты] ([КодАэропорта], [Название], [Страна], [Город]) VALUES (1, N'Домодедово', N'РФ', N'Москва')
/****** Объект:  Table [dbo].[Сотрудники]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудники]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Сотрудники](
	[Таб] [int] NOT NULL,
	[Фамилия] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Имя] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Отчество] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[ДатаРождения] [varchar](10) COLLATE Cyrillic_General_CI_AS NULL,
	[Адрес] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Телефон] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[КодДолжности] [int] NULL,
 CONSTRAINT [XPKСотрудники] PRIMARY KEY CLUSTERED 
(
	[Таб] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Сотрудники] ([Таб], [Фамилия], [Имя], [Отчество], [ДатаРождения], [Адрес], [Телефон], [КодДолжности]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'12.12.1975', N'Мира 56', N'256-88-99', 1)
/****** Объект:  Table [dbo].[Грузы]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Грузы]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Грузы](
	[КодГруза] [int] NOT NULL,
	[ДатаПоступления] [datetime] NULL,
	[Статус] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
	[Вес] [int] NULL,
	[Таб] [int] NULL,
	[КодТипа] [int] NULL,
	[Примечание] [varchar](20) COLLATE Cyrillic_General_CI_AS NULL,
 CONSTRAINT [XPKГрузы] PRIMARY KEY CLUSTERED 
(
	[КодГруза] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Грузы] ([КодГруза], [ДатаПоступления], [Статус], [Вес], [Таб], [КодТипа], [Примечание]) VALUES (1, CAST(0x0000A32400000000 AS DateTime), N'Принят', 1000, 1, 1, N'нет')
INSERT [dbo].[Грузы] ([КодГруза], [ДатаПоступления], [Статус], [Вес], [Таб], [КодТипа], [Примечание]) VALUES (2, CAST(0x0000A32300000000 AS DateTime), N'Отправлен', 300, 1, 3, N'нет')
INSERT [dbo].[Грузы] ([КодГруза], [ДатаПоступления], [Статус], [Вес], [Таб], [КодТипа], [Примечание]) VALUES (3, CAST(0x0000A32300000000 AS DateTime), N'Получен', 250, 1, 2, N'нет')
/****** Объект:  Table [dbo].[Грузоперевозки]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Грузоперевозки](
	[ID] [int] NOT NULL,
	[ДатаПогрузки] [datetime] NULL,
	[КодСамолета] [int] NULL,
	[КодГруза] [int] NULL,
	[КодАэропорта] [int] NULL,
	[КодОпеации] [int] NULL,
 CONSTRAINT [XPKГрузоперевозки] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Грузоперевозки] ([ID], [ДатаПогрузки], [КодСамолета], [КодГруза], [КодАэропорта], [КодОпеации]) VALUES (1, CAST(0x0000A31E00000000 AS DateTime), 1, 1, 1, 1)
INSERT [dbo].[Грузоперевозки] ([ID], [ДатаПогрузки], [КодСамолета], [КодГруза], [КодАэропорта], [КодОпеации]) VALUES (2, CAST(0x0000A31E00000000 AS DateTime), 1, 2, 1, 1)
INSERT [dbo].[Грузоперевозки] ([ID], [ДатаПогрузки], [КодСамолета], [КодГруза], [КодАэропорта], [КодОпеации]) VALUES (3, CAST(0x0000A31E00000000 AS DateTime), 1, 3, 1, NULL)
/****** Объект:  View [dbo].[View_4]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_4]
AS
SELECT     dbo.Грузы.КодГруза, dbo.Грузы.ДатаПоступления, dbo.Грузы.Статус, dbo.Грузы.Вес, dbo.Тип.Наименование AS Тип, dbo.Грузоперевозки.ДатаПогрузки, 
                      dbo.Самолеты.Марка AS Самолет, dbo.Аэропорты.Название AS Аэропорт
FROM         dbo.Грузы INNER JOIN
                      dbo.Тип ON dbo.Грузы.КодТипа = dbo.Тип.КодТипа INNER JOIN
                      dbo.Сотрудники ON dbo.Грузы.Таб = dbo.Сотрудники.Таб INNER JOIN
                      dbo.Должности ON dbo.Сотрудники.КодДолжности = dbo.Должности.КодДолжности INNER JOIN
                      dbo.Грузоперевозки ON dbo.Грузы.КодГруза = dbo.Грузоперевозки.КодГруза INNER JOIN
                      dbo.Самолеты ON dbo.Грузоперевозки.КодСамолета = dbo.Самолеты.КодСамолета INNER JOIN
                      dbo.Аэропорты ON dbo.Грузоперевозки.КодАэропорта = dbo.Аэропорты.КодАэропорта
WHERE     (dbo.Грузы.Статус = ''Получен'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Грузы"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Тип"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 95
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Сотрудники"
            Begin Extent = 
               Top = 6
               Left = 464
               Bottom = 125
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Должности"
            Begin Extent = 
               Top = 6
               Left = 671
               Bottom = 95
               Right = 840
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Грузоперевозки"
            Begin Extent = 
               Top = 96
               Left = 257
               Bottom = 215
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Самолеты"
            Begin Extent = 
               Top = 96
               Left = 671
               Bottom = 215
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Аэропорты"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 207
            End
            DisplayFlags = 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_4'
GO
/****** Объект:  View [dbo].[View_2]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_2]
AS
SELECT     dbo.Грузы.КодГруза, dbo.Грузы.ДатаПоступления, dbo.Грузы.Статус, dbo.Грузы.Вес, dbo.Сотрудники.Фамилия, dbo.Должности.Должность, 
                      dbo.Тип.Наименование, dbo.Грузы.Примечание
FROM         dbo.Грузы INNER JOIN
                      dbo.Тип ON dbo.Грузы.КодТипа = dbo.Тип.КодТипа INNER JOIN
                      dbo.Сотрудники ON dbo.Грузы.Таб = dbo.Сотрудники.Таб INNER JOIN
                      dbo.Должности ON dbo.Сотрудники.КодДолжности = dbo.Должности.КодДолжности
WHERE     (dbo.Грузы.Статус = ''Принят'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Грузы"
            Begin Extent = 
               Top = 6
               Left = 245
               Bottom = 190
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Тип"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Сотрудники"
            Begin Extent = 
               Top = 6
               Left = 464
               Bottom = 202
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Должности"
            Begin Extent = 
               Top = 6
               Left = 671
               Bottom = 95
               Right = 840
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
/****** Объект:  View [dbo].[View_1]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.Грузоперевозки.ID, dbo.Грузоперевозки.ДатаПогрузки AS Дата, dbo.Самолеты.Марка AS Самолет, dbo.Грузы.КодГруза AS Груз, 
                      dbo.Аэропорты.Название AS Аэропорт, dbo.Операция.Наименование AS Операция
FROM         dbo.Грузоперевозки INNER JOIN
                      dbo.Аэропорты ON dbo.Грузоперевозки.КодАэропорта = dbo.Аэропорты.КодАэропорта INNER JOIN
                      dbo.Грузы ON dbo.Грузоперевозки.КодГруза = dbo.Грузы.КодГруза INNER JOIN
                      dbo.Самолеты ON dbo.Грузоперевозки.КодСамолета = dbo.Самолеты.КодСамолета INNER JOIN
                      dbo.Операция ON dbo.Грузоперевозки.КодОпеации = dbo.Операция.КодОперации
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Грузоперевозки"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 182
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Аэропорты"
            Begin Extent = 
               Top = 6
               Left = 245
               Bottom = 125
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Грузы"
            Begin Extent = 
               Top = 6
               Left = 452
               Bottom = 125
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Самолеты"
            Begin Extent = 
               Top = 6
               Left = 671
               Bottom = 125
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Операция"
            Begin Extent = 
               Top = 111
               Left = 295
               Bottom = 200
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Объект:  View [dbo].[View_3]    Дата сценария: 05/13/2014 09:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_3]
AS
SELECT     dbo.Грузы.КодГруза, dbo.Грузы.ДатаПоступления, dbo.Грузоперевозки.ДатаПогрузки, dbo.Грузы.Вес, dbo.Самолеты.Марка AS Самолетом, 
                      dbo.Аэропорты.Название AS Куда
FROM         dbo.Грузоперевозки INNER JOIN
                      dbo.Грузы ON dbo.Грузоперевозки.КодГруза = dbo.Грузы.КодГруза INNER JOIN
                      dbo.Самолеты ON dbo.Грузоперевозки.КодСамолета = dbo.Самолеты.КодСамолета INNER JOIN
                      dbo.Аэропорты ON dbo.Грузоперевозки.КодАэропорта = dbo.Аэропорты.КодАэропорта
WHERE     (dbo.Грузы.Статус = ''Отправлен'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Грузоперевозки"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 160
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Грузы"
            Begin Extent = 
               Top = 6
               Left = 245
               Bottom = 195
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Самолеты"
            Begin Extent = 
               Top = 6
               Left = 464
               Bottom = 125
               Right = 646
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Аэропорты"
            Begin Extent = 
               Top = 6
               Left = 684
               Bottom = 125
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
/****** Объект:  ForeignKey [R_11]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_11]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([КодГруза])
REFERENCES [dbo].[Грузы] ([КодГруза])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [R_11]
GO
/****** Объект:  ForeignKey [R_12]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_12]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [R_12] FOREIGN KEY([КодАэропорта])
REFERENCES [dbo].[Аэропорты] ([КодАэропорта])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [R_12]
GO
/****** Объект:  ForeignKey [R_13]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_13]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [R_13] FOREIGN KEY([КодОпеации])
REFERENCES [dbo].[Операция] ([КодОперации])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [R_13]
GO
/****** Объект:  ForeignKey [R_9]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузоперевозки]'))
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [R_9] FOREIGN KEY([КодСамолета])
REFERENCES [dbo].[Самолеты] ([КодСамолета])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [R_9]
GO
/****** Объект:  ForeignKey [R_10]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_10]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузы]'))
ALTER TABLE [dbo].[Грузы]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([Таб])
REFERENCES [dbo].[Сотрудники] ([Таб])
GO
ALTER TABLE [dbo].[Грузы] CHECK CONSTRAINT [R_10]
GO
/****** Объект:  ForeignKey [R_14]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_14]') AND parent_object_id = OBJECT_ID(N'[dbo].[Грузы]'))
ALTER TABLE [dbo].[Грузы]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([КодТипа])
REFERENCES [dbo].[Тип] ([КодТипа])
GO
ALTER TABLE [dbo].[Грузы] CHECK CONSTRAINT [R_14]
GO
/****** Объект:  ForeignKey [R_7]    Дата сценария: 05/13/2014 09:19:35 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_7]') AND parent_object_id = OBJECT_ID(N'[dbo].[Сотрудники]'))
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([КодДолжности])
REFERENCES [dbo].[Должности] ([КодДолжности])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [R_7]
GO
