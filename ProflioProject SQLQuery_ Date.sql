SELECT 
[DateKey], 
[FullDateAlternateKey] as Date, 
-- ,[DayNumberOfWeek] 
[EnglishDayNameOfWeek] as Day, 
-- ,[SpanishDayNameOfWeek]
-- ,[FrenchDayNameOfWeek]
--,[DayNumberOfMonth]
--,[DayNumberOfYear]
[WeekNumberOfYear] as WeekNo, 
[EnglishMonthName] as Month, 
LEFT([EnglishMonthName],3) as MonthShort,
--,[SpanishMonthName]
--,[FrenchMonthName]
[MonthNumberOfYear] as MonthNo, 
[CalendarQuarter] as quarter, 
[CalendarYear] as Year --,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
where 
  CalendarYear >= 2022
