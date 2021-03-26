USE [master]
GO
/****** Object:  Database [SVI_TRN]    Script Date: 3/26/2021 10:05:54 PM ******/
CREATE DATABASE [SVI_TRN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SVI_TRN', FILENAME = N'D:\DB-Store\Trainning\SVI_TRN.mdf' , SIZE = 17408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SVI_TRN_log', FILENAME = N'D:\DB-Store\Trainning\SVI_TRN_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SVI_TRN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SVI_TRN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SVI_TRN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SVI_TRN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SVI_TRN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SVI_TRN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SVI_TRN] SET ARITHABORT OFF 
GO
ALTER DATABASE [SVI_TRN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SVI_TRN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SVI_TRN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SVI_TRN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SVI_TRN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SVI_TRN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SVI_TRN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SVI_TRN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SVI_TRN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SVI_TRN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SVI_TRN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SVI_TRN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SVI_TRN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SVI_TRN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SVI_TRN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SVI_TRN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SVI_TRN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SVI_TRN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SVI_TRN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SVI_TRN] SET  MULTI_USER 
GO
ALTER DATABASE [SVI_TRN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SVI_TRN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SVI_TRN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SVI_TRN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SVI_TRN]
GO
/****** Object:  User [trainsys]    Script Date: 3/26/2021 10:05:54 PM ******/
CREATE USER [trainsys] FOR LOGIN [trainsys] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admintool]    Script Date: 3/26/2021 10:05:54 PM ******/
CREATE USER [admintool] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin_train]    Script Date: 3/26/2021 10:05:54 PM ******/
CREATE USER [admin_train] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [trainsys]
GO
ALTER ROLE [db_owner] ADD MEMBER [admintool]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin_train]
GO
/****** Object:  Synonym [dbo].[Approved_Working_Schedule]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[Approved_Working_Schedule] FOR [SHIFT_REGISTER_DB].[dbo].[Approved_Working_Schedule]
GO
/****** Object:  Synonym [dbo].[Calendar_Holiday_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[Calendar_Holiday_Tbl] FOR [SHIFT_REGISTER_DB].[dbo].[Calendar_Holiday_Tbl]
GO
/****** Object:  Synonym [dbo].[CongDoan]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[CongDoan] FOR [DiemDanhVaPhanCong].[dbo].[CongDoan]
GO
/****** Object:  Synonym [dbo].[DiemNSCL]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[DiemNSCL] FOR [NangSuatChatLuong].[dbo].[DiemNSCL]
GO
/****** Object:  Synonym [dbo].[LichSuChucVuNV]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[LichSuChucVuNV] FOR [DiemDanhVaPhanCong].[dbo].[LichSuChucVuNV]
GO
/****** Object:  Synonym [dbo].[LichSuDanhGia]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[LichSuDanhGia] FOR [DiemDanhVaPhanCong].[dbo].[LichSuDanhGia]
GO
/****** Object:  Synonym [dbo].[LichSuDoiPhongNV]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[LichSuDoiPhongNV] FOR [DiemDanhVaPhanCong].[dbo].[LichSuDoiPhongNV]
GO
/****** Object:  Synonym [dbo].[NhanVien]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[NhanVien] FOR [DiemDanhVaPhanCong].[dbo].[NhanVien]
GO
/****** Object:  Synonym [dbo].[SWP]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[SWP] FOR [DiemDanhVaPhanCong].[dbo].[SWP]
GO
/****** Object:  Synonym [dbo].[ThuongNSCL]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[ThuongNSCL] FOR [NangSuatChatLuong].[dbo].[ThuongNSCL]
GO
/****** Object:  Synonym [dbo].[TieuChiNSCL]    Script Date: 3/26/2021 10:05:55 PM ******/
CREATE SYNONYM [dbo].[TieuChiNSCL] FOR [NangSuatChatLuong].[dbo].[TieuChiNSCL]
GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Attitude_Rating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Attitude_Rating](@AttitudeRatingIds varchar(MAX))
RETURNS int
as
BEGIN 
	DECLARE @Temp_Table TABLE (rating bit)
	DECLARE @Count_all int
	DECLARE @Count_good int
	DECLARE @Count_notgood int
	DECLARE @Score int
	DECLARE @Count_all_not_null int
	IF @AttitudeRatingIds IS NULL OR datalength(@AttitudeRatingIds)=0
		SET @Score = NULL
	ELSE
		BEGIN
			SET @Count_all_not_null = (SELECT count(*) from AttitudeRating WHERE attitude_rating_id IN  (SELECT * FROM dbo.CSVToTable(@AttitudeRatingIds)) AND prd IS NOT NULL AND pd IS NOT NULL)
			IF @Count_all_not_null = 0
				SET @Score = 0
			ELSE 
				BEGIN
			
						INSERT INTO @Temp_Table 
							SELECT (prd & pd) as result FROM AttitudeRating WHERE attitude_rating_id IN  (SELECT * FROM dbo.CSVToTable(@AttitudeRatingIds)) AND prd IS NOT NULL AND pd IS NOT NULL
						SET @Count_all = (SELECT COUNT(*) FROM @Temp_Table)
						SET @Count_good = (SELECT COUNT(NULLIF(rating,0)) AS result FROM @Temp_Table)
						SET @Count_notgood = (SELECT COUNT(*) AS result FROM @Temp_Table where rating = 0)
						--CR
						IF (@Count_notgood >= 2)
							SET @Score = 0
						

						ELSE
							IF  (@Count_good >= 1)
								SET @Score = 100
							ELSE 
								SET @Score = 0
							--End CR
				END
		END
	RETURN @Score
END










GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Expected_Rank]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Expected_Rank]
	(@curentRank  NVARCHAR(16),
	 @workingTime FLOAT,
	 @NSCLPoint FLOAT,
	 @NSCLPointMinus NVARCHAR(32),
	 @professionPoint1 NVARCHAR(64),
	 @Ngay_DoiPhong DATE,
	 @professionPoint2 NVARCHAR(64)
	 )
RETURNS NVARCHAR(12)
AS
BEGIN
    RETURN
        CASE @curentRank
            WHEN 'A1' THEN
				CASE WHEN @workingTime <= 12 
						  OR ISNULL(@NSCLPoint, 0) < 3 
						  OR ISNULL(SUBSTRING(NULLIF(ISNULL(@NSCLPointMinus, '0'), ''), 1, 1), 0) > 0 
						  OR CAST(SUBSTRING(ISNULL(@professionPoint1, '0% (0/7 CÐ)'), 1, PATINDEX('%(%', ISNULL(@professionPoint1, '0% (0/7 CÐ)')) - 3) AS DECIMAL) <> 100 THEN 'A1' 
				ELSE 'A2' END
            WHEN 'A2' THEN
				CASE WHEN @workingTime <= 24 
						  OR DATEDIFF(MONTH, ISNULL(@Ngay_DoiPhong, GETDATE()), GETDATE()) <= 18 
						  OR ISNULL(@NSCLPoint, 0) < 3 
						  OR ISNULL(SUBSTRING(NULLIF(ISNULL(@NSCLPointMinus, '0'), ''), 1, 1), 0) > 0 
						  OR CAST(SUBSTRING(ISNULL(@professionPoint2, '0% (0/7 CÐ)'), 1, PATINDEX('%(%', ISNULL(@professionPoint2, '0% (0/7 CÐ)')) - 3) AS DECIMAL) <> 100 THEN 'A2'
				ELSE 'A3' END
            WHEN 'A3' THEN 'A3'
        END 
END





GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Final_Score]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Final_Score](@StaffId varchar(MAX), @CourseId varchar(MAX))
RETURNS DECIMAL(10,2)
AS
BEGIN
	DECLARE @Score_Technical float
	SET @Score_Technical = (SELECT dbo.Calculate_Final_Score_Technical(@StaffId, @CourseId))
	DECLARE @Score_Attitude int
	DECLARE @Attitude_Ratings varchar(MAX)
	DECLARE @Attitude_Percent int
	DECLARE @FinalScore float
	DECLARE @Employee_Course bigint
	DECLARE @Count_Theory int
	DECLARE @Count_Profession int
	DECLARE @Count_Stage int
	DECLARE @Count_Attitude int
	DECLARE @Employee_Course_Id bigint
	SET @Employee_Course_Id = (SELECT employee_course_id FROM Employee_Course where employee_id = @StaffId AND course_id = @CourseId)
	SELECT @Attitude_Ratings =  coalesce(@Attitude_Ratings + ', ', '') + cast(attitude_rating_id as nvarchar(MAX))
							from AttitudeRating
							INNER JOIN Employee_Course ON Employee_Course.employee_course_id = AttitudeRating.employee_course_id
							Where AttitudeRating.employee_course_id = @Employee_Course_Id
	SET @Score_Attitude = (SELECT dbo.Calculate_Attitude_Rating(@Attitude_Ratings))
	SET @Employee_Course = (SELECT employee_course_id FROM Employee_Course WHERE employee_id = @StaffId AND course_id = @CourseId)
	SET @Count_Theory = (SELECT COUNT(*) FROM TheoryRating WHERE employee_course_id = @Employee_Course)
	SET @Count_Profession = (SELECT COUNT(*) FROM ProfessionRating WHERE employee_course_id = @Employee_Course)
	SET @Count_Stage = (SELECT COUNT(*) FROM StageRating WHERE employee_course_id = @Employee_Course)
	SET @Count_Attitude = (SELECT COUNT(*) FROM AttitudeRating WHERE employee_course_id = @Employee_Course)
	IF @Count_Theory = 0 AND @Count_Stage = 0 AND @Count_Profession = 0 AND @Count_Attitude = 0
		BEGIN
			SET @FinalScore = NULL
		END
	ELSE
		BEGIN
			IF @Score_Attitude IS NULL
				SET @Score_Attitude = 0
			IF @Score_Technical IS NULL
				SET @Score_Technical = 0
			SET @Attitude_Percent = (SELECT attitude_percent FROM Course Where course_id = @CourseId)
			SET @Score_Attitude = @Score_Attitude * 1.0 * @Attitude_Percent / 100
			SET @FinalScore = @Score_Technical * 1.0 + @Score_Attitude
		END
	RETURN ROUND(@FinalScore, 2)
END



GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Final_Score_Technical]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Final_Score_Technical](@StaffId varchar(MAX), @CourseId varchar(MAX))
RETURNS  float
AS
BEGIN
	DECLARE @Temp_Table TABLE (course_phase_id bigint, coefficient smallint, score float)
	DECLARE @Theory_Ratings TABLE (theory_rating_id bigint)
	DECLARE @Theory_Ratings_Id bigint
	DECLARE @Cursor_Theory CURSOR
	DECLARE @Stage_Ratings nvarchar(MAX)
	DECLARE @Profession_Ratings nvarchar(MAX)
	DECLARE @Total_Coefficient int
	DECLARE @Score_Multiply_Coefficient TABLE (score_multiply float)
	DECLARE @Total_Score float
	DECLARE @Final_Score float
	DECLARE @Coefficient_Technical int
	DECLARE @Course_Phase_Id bigint
	DECLARE @Stage_Rating_Ids nvarchar(MAX)
	--
	SET @Coefficient_Technical = (SELECT skill_percent FROM Course WHERE course_id = @CourseId)
	INSERT INTO @Theory_Ratings
		select TheoryRating.theory_rating_id
		FROM Employee_Course
		INNER JOIN TheoryRating ON TheoryRating.employee_course_id = Employee_Course.employee_course_id
		Where Employee_Course.employee_id = @StaffId AND TheoryRating.course_phase_id IN (SELECT course_phase_id FROM Course_Phase WHERE course_id = @CourseId)
	--Insert theory rating Result
	
	SET @Cursor_Theory = CURSOR FOR
		SELECT * FROM @Theory_Ratings
	OPEN @Cursor_Theory;
	FETCH NEXT FROM @Cursor_Theory INTO @Theory_Ratings_Id
	WHILE @@FETCH_STATUS = 0 
	BEGIN
		INSERT INTO @Temp_Table
			SELECT * FROM dbo.Calculate_Theory_Rating(@Theory_Ratings_Id)
		FETCH NEXT FROM @Cursor_Theory INTO @Theory_Ratings_Id
	END
	CLOSE @Cursor_Theory
	DEALLOCATE @Cursor_Theory
	--Insert Stage Rating Result

	DECLARE @Course_Phase_Ids TABLE (course_phase_id bigint)
	INSERT INTO @Course_Phase_Ids 
		SELECT  distinct course_phase_id FROM StageRating WHERE employee_course_id = (SELECT employee_course_id FROM Employee_Course WHERE employee_id = @StaffId AND course_id = @CourseId)
	DECLARE @Cursor_Course_Phase CURSOR
	SET @Cursor_Course_Phase = CURSOR FOR
		SELECT * FROM @Course_Phase_Ids
	OPEN @Cursor_Course_Phase
	FETCH NEXT FROM @Cursor_Course_Phase INTO @Course_Phase_Id
	WHILE @@FETCH_STATUS = 0 
	BEGIN
		SELECT @Stage_Rating_Ids =  coalesce(@Stage_Rating_Ids + ', ', '') + cast(stage_rating_id as nvarchar(MAX))
							from StageRating
							WHERE course_phase_id = @Course_Phase_Id AND employee_course_id = (SELECT employee_course_id FROM Employee_Course WHERE employee_id = @StaffId AND course_id = @CourseId)
		INSERT INTO @Temp_Table 
			SELECT * FROM dbo.Calculate_Final_Stage_Rating(@Stage_Rating_Ids)
		SET @Stage_Rating_Ids = ''
		FETCH NEXT FROM @Cursor_Course_Phase INTO @Course_Phase_Id
	END
	CLOSE @Cursor_Course_Phase
	DEALLOCATE @Cursor_Course_Phase 
	--Insert ProfessionRating

	DECLARE @Course_Phase_Profession_Ids TABLE (course_phase_id bigint)
	DECLARE @Course_Phase_Profession_Id bigint
	INSERT INTO @Course_Phase_Profession_Ids 
		SELECT  distinct course_phase_id FROM ProfessionRating WHERE employee_course_id = (SELECT employee_course_id FROM Employee_Course WHERE employee_id = @StaffId AND course_id = @CourseId)
	DECLARE @Cursor_Profession CURSOR
	SET @Cursor_Profession = CURSOR FOR
		SELECT * FROM @Course_Phase_Profession_Ids
	OPEN @Cursor_Profession
	FETCH NEXT FROM @Cursor_Profession INTO @Course_Phase_Profession_Id
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @Profession_Ratings =  coalesce(@Profession_Ratings + ', ', '') + cast(profession_rating_id as nvarchar(MAX))
							from ProfessionRating
							WHERE course_phase_id = @Course_Phase_Profession_Id AND employee_course_id = (SELECT employee_course_id FROM Employee_Course WHERE employee_id = @StaffId AND course_id = @CourseId)
		INSERT INTO @Temp_Table
			SELECT * FROM dbo.Calculate_Profession_Rating(@Profession_Ratings)
		SET @Profession_Ratings = ''
		FETCH NEXT FROM @Cursor_Profession INTO @Course_Phase_Profession_Id
	END
	CLOSE @Cursor_Profession
	DEALLOCATE @Cursor_Profession 

	--Calculate final Score Technical
	DELETE FROM @Temp_Table where course_phase_id IS NULL
	SET @Total_Coefficient = (SELECT SUM(coefficient) FROM Course_Phase where course_id = @CourseId)
	INSERT INTO @Score_Multiply_Coefficient 
	SELECT (coefficient * score) FROM @Temp_Table
	SET @Total_Score = (SELECT SUM(score_multiply) FROM @Score_Multiply_Coefficient)
	--SET @Final_Score = ROUND((@Total_Score * 1.0 / @Total_Coefficient * @Coefficient_Technical / 100),2)
	SET @Final_Score = @Total_Score * 1.0 / @Total_Coefficient
	SET @Final_Score = @Final_Score * 1.0 * @Coefficient_Technical / 100
	--SET @Final_Score = ROUND(@Final_Score, 2)
	RETURN @Final_Score
END







GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Final_Stage_Rating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Final_Stage_Rating](@StageRatingIds varchar(MAX)) 
RETURNS @Result_Final_Stage_Rating TABLE (course_phase_id bigint, coefficient smallint, score float)
as
BEGIN
	DECLARE @FinalScore float
	DECLARE @Duplicate_Stage TABLE (stage_id nvarchar(128), numberOf int, score float) 
	DECLARE @All_Avg_Stage_Rating TABLE (stage_id nvarchar(128), score float) 
	DECLARE @Course_Phase_Id bigint, @Coefficient smallint
	INSERT INTO @Duplicate_Stage SELECT stage_id, COUNT(stage_id), AVG(score) FROM dbo.Calculate_Stage_Rating (@StageRatingIds) GROUP BY stage_id
							HAVING (COUNT(stage_id) > 1)
	INSERT INTO @All_Avg_Stage_Rating SELECT stage_id, score FROM dbo.Calculate_Stage_Rating (@StageRatingIds) WHERE stage_id NOT IN (SELECT stage_id FROM @Duplicate_Stage)
	INSERT INTO @All_Avg_Stage_Rating SELECT stage_id, score FROM @Duplicate_Stage
	SET @FinalScore = (SELECT AVG(score) FROM @All_Avg_Stage_Rating)
	SET @Course_Phase_Id = (SELECT distinct course_phase_id FROM StageRating Where stage_rating_id IN (SELECT * FROM dbo.CSVToTable(@StageRatingIds)))
	SET @Coefficient = (SELECT distinct coefficient FROM Course_Phase WHERE course_phase_id = @Course_Phase_Id)
	INSERT INTO @Result_Final_Stage_Rating VALUES (@Course_Phase_Id, @Coefficient, ROUND(@FinalScore, 2))
	RETURN 
END






GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_NSCL_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-02-27
-- Description: Report General - Tinh diem nang suat chat luong
-- =============================================
CREATE FUNCTION [dbo].[Calculate_NSCL_Of_Staff] 
	(@employee_id NVARCHAR(128),
	 @year		  INT)
RETURNS FLOAT
AS 
BEGIN

	DECLARE @result FLOAT;

	SELECT TOP 1 @result = P.nscl_point
	FROM PointNSCL P
	WHERE P.employee_id = @employee_id and p.year = (@year + 1)
	ORDER BY P.updated DESC
	RETURN @result;

END








GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Profession_Rating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Profession_Rating](@ProfessionRatingIds varchar(MAX))
RETURNS @Result_Profession_Rating TABLE 
(course_phase_id bigint, coefficient smallint,  score float)
as
BEGIN 
	DECLARE @Temp_Table TABLE (course_phase_id bigint, employee_course_id int, score float)
	DECLARE @Course_Phase_Id bigint, @Coefficient int, @Score float
	INSERT INTO @Temp_Table 
	SELECT course_phase_id, employee_course_id, ROUND(avg(CAST(score as float)),2) as average
			FROM ProfessionRating
			WHERE profession_rating_id IN (SELECT * FROM dbo.CSVToTable(@ProfessionRatingIds))
			GROUP BY course_phase_id, employee_course_id
	SET @Course_Phase_Id = (SELECT course_phase_id FROM @Temp_Table)
	SET @Coefficient = (SELECT coefficient FROM Course_Phase WHERE course_phase_id = @Course_Phase_Id)
	SET @Score = (SELECT score FROM @Temp_Table)
	INSERT INTO @Result_Profession_Rating VALUES (@Course_Phase_Id, @Coefficient, @Score)
	RETURN
END






GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Stage_Rating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Stage_Rating](@StageRatingIds varchar(MAX))
RETURNS @Result_Stage_Rating TABLE 
(stage_rating_id bigint, stage_id nvarchar(128), product_id nvarchar(20),
score float)
as
BEGIN 
	DECLARE @RequireScore float, @First float, @Second float, @XX_HSL float, @Number_Of_Employee int, @Product_id nvarchar(20), @Stage_Score float, @Stage_id nvarchar(128), @Stage_Rating_Id bigint;
	DECLARE @Cursor CURSOR;
	DECLARE @First_Average float;
	DECLARE @Second_Avergare float;
	DECLARE @Percent_Require int
	DECLARE @Course_Phase_id int
	Set @Cursor = CURSOR FOR
		SELECT stage_rating_id, course_phase_id, stage_id, product_id, xx_hsl, number_of_employee, first, second from StageRating
		WHERE stage_rating_id IN (SELECT * FROM dbo.CSVToTable(@StageRatingIds))

	OPEN @Cursor;
	FETCH NEXT FROM @Cursor INTO @Stage_Rating_Id, @Course_Phase_id, @Stage_id, @Product_id, @XX_HSL, @Number_Of_Employee, @First, @Second;
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		SET @Percent_Require = (SELECT percent_require FROM Course_Phase WHERE course_phase_id = @Course_Phase_id)
		IF @Number_Of_Employee != 0
			SET @RequireScore = @XX_HSL * 1.0 * @Percent_Require / @Number_Of_Employee / 100
		ELSE
			SET @RequireScore = 0

		IF @Product_id IS NULL OR @Product_id = 'NONE'
			BEGIN
				IF @First IS NULL AND @Second IS NULL 
					SET @Stage_Score = 0
				ELSE 
					IF @First > 0
						SET @Stage_Score = 100
					ELSE 
						IF @Second > 0
							SET @Stage_Score = 100
						ELSE 
							SET @Stage_Score = 0
	
			END
		ELSE
			BEGIN
				IF @First IS NULL AND @Second IS NULL 
					SET @Stage_Score = 0
				ELSE IF @First = 0 AND @Second = 0
					SET @Stage_Score = 0
				ELSE IF @First >= @RequireScore
					SET @Stage_Score = 100
				ELSE IF @First < @RequireScore AND @Second IS NULL
					SET @Stage_Score = 0
				ELSE IF @First < @RequireScore AND @Second = 0
					SET @Stage_Score = 0
				ELSE IF  @First < @RequireScore AND @Second IS NOT NULL
					BEGIN 
						SET @First_Average = @First * 1.0 * 100 / @RequireScore
						SET @Second_Avergare = @Second * 1.0 * 100 / @RequireScore
						SET @Stage_Score = (@First_Average + @Second_Avergare) / 2
						IF @Stage_Score > 100
							SET @Stage_Score = 100
					END
			END
		INSERT INTO @Result_Stage_Rating VALUES(@Stage_Rating_Id, @Stage_id, @Product_id, ROUND(@Stage_Score, 2));
		FETCH NEXT FROM @Cursor INTO @Stage_Rating_Id, @Course_Phase_id, @Stage_id, @Product_id, @XX_HSL, @Number_Of_Employee, @First, @Second;
	END
	CLOSE @Cursor
	DEALLOCATE @Cursor
	RETURN
END





GO
/****** Object:  UserDefinedFunction [dbo].[Calculate_Theory_Rating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Calculate_Theory_Rating](@TheoryRatingId bigint)
RETURNS @Result_Theory_Rating TABLE 
(course_phase_id bigint, coefficient smallint,  score float)
as
BEGIN 
	DECLARE @Temp_Table TABLE (course_phase_id bigint, employee_course_id int, score float)
	DECLARE @Course_Phase_Id bigint, @Coefficient int, @Score float
	INSERT INTO @Temp_Table 
	SELECT course_phase_id, employee_course_id, score
			FROM TheoryRating
			WHERE theory_rating_id = @TheoryRatingId
	SET @Course_Phase_Id = (SELECT course_phase_id FROM @Temp_Table)
	SET @Coefficient = (SELECT coefficient FROM Course_Phase WHERE course_phase_id = @Course_Phase_Id)
	SET @Score = (SELECT score FROM @Temp_Table)
	INSERT INTO @Result_Theory_Rating VALUES (@Course_Phase_Id, @Coefficient, @Score)
	RETURN
END






GO
/****** Object:  UserDefinedFunction [dbo].[Count_Violations_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-02-27
-- Description: Report General - Count violations by on staffId and yearOfTraining
-- =============================================
CREATE FUNCTION [dbo].[Count_Violations_Of_Staff] 
	(@employee_id NVARCHAR(128),
	 @year INT)
RETURNS NVARCHAR(128) 
AS 
BEGIN
	DECLARE @result NVARCHAR(128), @countViolations INT;

	SET @countViolations = (SELECT COUNT(*) AS Val
	FROM DiemNSCL DNS		  WITH(NOLOCK)
	INNER JOIN TieuChiNSCL TC WITH(NOLOCK) ON TC.MaTieuChi = DNS.MaTieuChi
	WHERE DNS.MaTieuChi IN (SELECT MaTieuChi FROM TieuChiNSCL WHERE Loai = 'C' OR Loai = 'D') 
	   AND DNS.NgayGhiNhan BETWEEN CONVERT(nvarchar(4),(@year -1)) + '-09-01 00:00:00' AND CONVERT(nvarchar(4),@year) + '-08-31 23:59:59'
	   AND DNS.MaNV = @employee_id)

	RETURN convert(NVARCHAR(255), @countViolations) + N' lần';
END







GO
/****** Object:  UserDefinedFunction [dbo].[CSVToTable]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CSVToTable] (@INSTR VARCHAR(MAX))
RETURNS @TempTab TABLE
   (id int not null)
AS
BEGIN
    ;-- Ensure input ends with comma
	SET @INSTR = REPLACE(@INSTR + ',', ',,', ',')
	DECLARE @SP INT
DECLARE @VALUE VARCHAR(1000)
WHILE PATINDEX('%,%', @INSTR ) <> 0 
BEGIN
   SELECT  @SP = PATINDEX('%,%',@INSTR)
   SELECT  @VALUE = LEFT(@INSTR , @SP - 1)
   SELECT  @INSTR = STUFF(@INSTR, 1, @SP, '')
   INSERT INTO @TempTab(id) VALUES (@VALUE)
END
	RETURN
END







GO
/****** Object:  UserDefinedFunction [dbo].[Get_Attitude_Note]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Phat Dat     
-- Create date: 2019-03-06
-- Description: Report Course - Get attitude note
-- =============================================
CREATE FUNCTION [dbo].[Get_Attitude_Note]
	(@employee_course_id int)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @note nvarchar(MAX), @tmp_note nvarchar(MAX)
	DECLARE note_cursor CURSOR FOR
		SELECT note
		FROM AttitudeRating
		WHERE employee_course_id = @employee_course_id

	SET @note = ''
	OPEN note_cursor
	FETCH NEXT FROM note_cursor INTO @tmp_note
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @note += ISNULL(@tmp_note + Char(13) + Char(10), '') 
		FETCH NEXT FROM note_cursor INTO @tmp_note
	END

	CLOSE note_cursor
	DEALLOCATE note_cursor
	RETURN @note

END






GO
/****** Object:  UserDefinedFunction [dbo].[Get_Attitude_Rating_Ids]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author: Phat Dat      
-- Create date: 2019-03-26
-- Description: Get an array of attitude rating ids base on employee_course_id
-- =============================================
CREATE FUNCTION [dbo].[Get_Attitude_Rating_Ids]
(@employee_course_id int)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @arr_attitude_rating_ids nvarchar(MAX) SET @arr_attitude_rating_ids = ''
	DECLARE @attitude_rating_id nvarchar(128)
	DECLARE attitude_cursor CURSOR FOR
		SELECT attitude_rating_id
		FROM AttitudeRating
		WHERE employee_course_id = @employee_course_id
	OPEN attitude_cursor
	FETCH NEXT FROM attitude_cursor
		INTO @attitude_rating_id
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @arr_attitude_rating_ids += @attitude_rating_id + ','
		FETCH NEXT FROM attitude_cursor
			INTO @attitude_rating_id
	END

	CLOSE attitude_cursor
	DEALLOCATE attitude_cursor
	IF LEN(@arr_attitude_rating_ids) > 0
		SET @arr_attitude_rating_ids = SUBSTRING(@arr_attitude_rating_ids, 1, LEN(@arr_attitude_rating_ids) - 1)
	RETURN @arr_attitude_rating_ids
END




GO
/****** Object:  UserDefinedFunction [dbo].[Get_Before_Course_Of_Staff_By_Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: Get_Before_Course_Of_Staff_By_Course
-- =============================================
CREATE FUNCTION [dbo].[Get_Before_Course_Of_Staff_By_Course] 
	(@MaNV		       NVARCHAR(7),
	 @latestCourse NVARCHAR(20)) 
RETURNS NVARCHAR(20) AS 
BEGIN
	DECLARE @result NVARCHAR(20);

		IF(@latestCourse IS NOT NULL)
		BEGIN
			SET @result = (
				SELECT TOP 1 C.course_id
				FROM Course C
					INNER JOIN Employee_Course EC
					ON C.course_id = EC.course_id
					WHERE EC.employee_id = @MaNV
						AND C.end_date < (SELECT c.end_date FROM Course C INNER JOIN Employee_Course EC ON C.course_id = EC.course_id WHERE c.course_id = @latestCourse AND EC.employee_id = @MaNV)
						AND lower(C.course_id) not like '%w4%'
					ORDER BY C.end_date DESC
			)
		END
		ELSE
		BEGIN
			SET @result = (
				SELECT TOP 1 C.course_id 
				FROM Employee_Course EC
					INNER JOIN Course C
				ON EC.course_id = C.course_id
				WHERE EC.employee_id = @MaNV
				ORDER BY C.end_date DESC
		)
		END

	RETURN @result;
END








GO
/****** Object:  UserDefinedFunction [dbo].[Get_Before_PhongSX_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Thinh Do      
-- Create date: 2016-04-12
-- Description: Get before PhongSX of staff
-- =============================================
CREATE FUNCTION [dbo].[Get_Before_PhongSX_Of_Staff] 
	(@MaNV		       NVARCHAR(7),
	 @dateReport       DATETIME,
	 @latestDepartment NVARCHAR(12)) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);

		IF(@latestDepartment IS NOT NULL)
		BEGIN
			SET @result = 
			(SELECT TT.PhongSX
							FROM
							(SELECT LS.PhongSx, ROW_NUMBER() OVER (ORDER BY LS.NgayCapNhat DESC) AS rowNumber
							FROM (
								SELECT C.course_id, C.end_date, EC.employee_id
								FROM Employee_Course EC WITH(NOLOCK)
								INNER JOIN Course C		WITH(NOLOCK) ON C.course_id = EC.course_id
								WHERE EC.employee_id  = @MaNV AND end_date <= @dateReport
							) AS CE INNER JOIN (SELECT MaNV, PhongSX, NgayCapNhat
												FROM LichSuDoiPhongNV
												WHERE NgayCapNhat <= @dateReport AND [PhongSX] != @latestDepartment
												AND NgayCapNhat <
																	(SELECT TH.NgayCapNhat 
																	FROM
																		(SELECT LS.NgayCapNhat, ROW_NUMBER() OVER (ORDER BY LS.NgayCapNhat DESC) AS rowNumber
																		FROM (
																			SELECT C.course_id, C.end_date, EC.employee_id
																			FROM Employee_Course EC		WITH(NOLOCK)
																				INNER JOIN Course C		WITH(NOLOCK) ON C.course_id = EC.course_id
																			WHERE EC.employee_id  = @MaNV AND end_date <= @dateReport
																		) AS CE INNER JOIN (SELECT MaNV, PhongSX, NgayCapNhat 
																							FROM LichSuDoiPhongNV 
																							WHERE [PhongSX] = @latestDepartment
																									AND NgayCapNhat <= @dateReport
																															) LS  
																							ON CE.employee_id  = LS.MaNV 
																							AND YEAR(CAST(LS.NgayCapNhat AS NVARCHAR)) = (CASE WHEN CE.end_date < (CONVERT(nvarchar(4), YEAR(CAST(CE.end_date AS NVARCHAR))) + '-08-31 23:59:59') THEN YEAR(CAST(CE.end_date AS NVARCHAR)) Else (YEAR(CAST(CE.end_date AS NVARCHAR)) + 1) END)
																							) AS TH

																		WHERE TH.rowNumber = 1)
												) as LS
							ON CE.employee_id  = LS.MaNV
							AND YEAR(CAST(LS.NgayCapNhat AS NVARCHAR)) = (CASE WHEN CE.end_date < (CONVERT(nvarchar(4), YEAR(CAST(CE.end_date AS NVARCHAR))) + '-08-31 23:59:59') THEN YEAR(CAST(CE.end_date AS NVARCHAR)) Else (YEAR(CAST(CE.end_date AS NVARCHAR)) + 1) END)
						) AS TT WHERE TT.rowNumber = 1)
		END
		ELSE
		BEGIN
			SET @result = (SELECT TT.PhongSX
							FROM
							(SELECT LS.PhongSx, ROW_NUMBER() OVER (ORDER BY LS.NgayCapNhat DESC) AS rowNumber
							FROM (
								SELECT C.course_id, C.end_date, EC.employee_id
								FROM Employee_Course EC WITH(NOLOCK)
								INNER JOIN Course C		WITH(NOLOCK) ON C.course_id = EC.course_id
								WHERE EC.employee_id  = @MaNV AND end_date <= @dateReport AND LOWER(C.course_id) NOT LIKE '%w4%'
							) AS CE INNER JOIN (SELECT MaNV, PhongSX, NgayCapNhat
												FROM LichSuDoiPhongNV
												WHERE NgayCapNhat <= @dateReport
												) as LS
							ON CE.employee_id  = LS.MaNV
							AND YEAR(CAST(LS.NgayCapNhat AS NVARCHAR)) = (CASE WHEN CE.end_date < (CONVERT(nvarchar(4), YEAR(CAST(CE.end_date AS NVARCHAR))) + '-08-31 23:59:59') THEN YEAR(CAST(CE.end_date AS NVARCHAR)) Else (YEAR(CAST(CE.end_date AS NVARCHAR)) + 1) END)
						) AS TT WHERE TT.rowNumber = 1)
		END

	RETURN @result;
END








GO
/****** Object:  UserDefinedFunction [dbo].[Get_Before_PhongSX_Of_Staff_By_Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: [Get_Before_PhongSX_Of_Staff_By_Course]
-- =============================================
CREATE FUNCTION [dbo].[Get_Before_PhongSX_Of_Staff_By_Course] 
	(@MaNV		       NVARCHAR(7),
	 @latestDepartment NVARCHAR(12)) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);

		IF(@latestDepartment IS NOT NULL)
		BEGIN
			SET @result = (
				SELECT TOP 1 C.department_id
				FROM Course C
					INNER JOIN Employee_Course EC
					ON C.course_id = EC.course_id
					WHERE EC.employee_id = @MaNV
						AND C.end_date < (SELECT TOP 1 c.end_date 
										FROM Course C INNER JOIN Employee_Course EC ON C.course_id = EC.course_id 
										WHERE c.department_id = @latestDepartment AND EC.employee_id = @MaNV 
										ORDER BY c.end_date DESC)
					ORDER BY C.end_date DESC
			)
		END
		ELSE
		BEGIN
			SET @result = (
				SELECT TOP 1 C.department_id 
				FROM Employee_Course EC
					INNER JOIN Course C
				ON EC.course_id = C.course_id
				WHERE EC.employee_id = @MaNV
				ORDER BY C.end_date DESC
		)
		END

	RETURN @result;
END








GO
/****** Object:  UserDefinedFunction [dbo].[Get_Conclusion]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[Get_Conclusion]
	(@course_id   nvarchar(128), 
	 @total_point float)
RETURNS varchar(128)
AS
BEGIN
	DECLARE @conclusion varchar(128) SET @conclusion = 'N/A'
	DECLARE @ng_from float, @ng_to float, @ok_from float, @ok_to float, @good_from float, @good_to float
	DECLARE db_cursor CURSOR FOR
		SELECT ng_from, ng_to, ok_from, ok_to, good_from, good_to
		FROM Course
		WHERE course_id = @course_id

	OPEN db_cursor 
	FETCH NEXT FROM db_cursor INTO @ng_from, @ng_to, @ok_from, @ok_to, @good_from, @good_to
	IF @@FETCH_STATUS = 0
	BEGIN
		IF @total_point > @good_from AND @total_point <= @good_to
			SET @conclusion = 'GOOD'
		ELSE IF @total_point >= @ok_from AND @total_point <= @ok_to
			SET @conclusion = 'OK'
		ELSE IF @total_point >= @ng_from AND @total_point < @ng_to
			SET @conclusion = 'NG'
		FETCH NEXT FROM db_cursor INTO @ng_from, @ng_to, @ok_from, @ok_to, @good_from, @good_to
	END

	CLOSE db_cursor
	DEALLOCATE db_cursor
	RETURN @conclusion
END




GO
/****** Object:  UserDefinedFunction [dbo].[Get_Course_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: Get_Course_Of_Staff
-- =============================================
CREATE FUNCTION [dbo].[Get_Course_Of_Staff] 
	(@MaNV		 NVARCHAR(7)) 
RETURNS NVARCHAR(20) AS 
BEGIN
	DECLARE @result NVARCHAR(20);

	SET @result = (
		SELECT TOP 1 C.course_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.employee_id = @MaNV
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_Course_Of_Staff_CBP]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: Get_Course_Of_Staff_CBP
-- =============================================
CREATE FUNCTION [dbo].[Get_Course_Of_Staff_CBP] 
	(@MaNV		 NVARCHAR(7)) 
RETURNS NVARCHAR(20) AS 
BEGIN
	DECLARE @result NVARCHAR(20);

	SET @result = (
		SELECT TOP 1 C.department_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.employee_id = @MaNV
			AND lower(EC.course_id) not like '%w4%'
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_Course_Of_Staff_LC]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: Get_Course_Of_Staff_LC
-- =============================================
CREATE FUNCTION [dbo].[Get_Course_Of_Staff_LC] 
	(@MaNV		 NVARCHAR(7)) 
RETURNS NVARCHAR(20) AS 
BEGIN
	DECLARE @result NVARCHAR(20);

	SET @result = (
		SELECT TOP 1 C.course_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.employee_id = @MaNV
			AND lower(EC.course_id) like '%w2%'
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_Current_PhongSX_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-03-27
-- Description: Get latest PhongSX of staff
-- =============================================
CREATE FUNCTION [dbo].[Get_Current_PhongSX_Of_Staff] 
	(@MaNV		 NVARCHAR(7), 
	 @dateReport DATETIME) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);
	SET @result =(SELECT TOP 1 [PhongSX] FROM LichSuDoiPhongNV
	WHERE MaNV = @MaNV and NgayCapNhat <= @dateReport
	ORDER BY NgayCapNhat DESC)

	RETURN @result;
END

GO
/****** Object:  UserDefinedFunction [dbo].[Get_List_Staffs_With_Score]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Get_List_Staffs_With_Score](@CourseId nvarchar(MAX))
RETURNS @Result TABLE 
	(Staff_id   bigint, 
	 Staff_name nvarchar(30), 
	 Department nvarchar(4), 
	 Position   nvarchar(10),  
	 score      float)
AS
BEGIN
	DECLARE @Cursor CURSOR 
	DECLARE @Staff_id bigint
	DECLARE @Staff_name nvarchar(30)
	DECLARE @Score float
	DECLARE @Department nvarchar(4)
	DECLARE @Position nvarchar(10)
	SET @Cursor = CURSOR FOR 
		SELECT nv.MaNV, nv.TenNV, nv.PhongSX, nv.ChucVu from NhanVien nv
		WHERE nv.MaNV IN (SELECT employee_id FROM Employee_Course WHERE course_id =  @CourseId)
	OPEN @Cursor;
	FETCH NEXT FROM @Cursor INTO @Staff_id, @Staff_name, @Department, @Position
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		SET @Score = (SELECT [dbo].[Calculate_Final_Score](@Staff_id, @CourseId))
		INSERT INTO @Result VALUES (@Staff_id, @Staff_name, @Department, @Position, @Score)
		FETCH NEXT FROM @Cursor INTO @Staff_id, @Staff_name, @Department, @Position
	END
	CLOSE @Cursor
	DEALLOCATE @Cursor
	RETURN
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_PhongSX_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-03-27
-- Description: Get latest PhongSX of staff
-- =============================================
CREATE FUNCTION [dbo].[Get_PhongSX_Of_Staff] 
	(@MaNV		 NVARCHAR(7), 
	 @dateReport DATETIME) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);

	SET @result = (SELECT TH.[PhongSX] 
					FROM
						(SELECT LS.PhongSx, ROW_NUMBER() OVER (ORDER BY LS.NgayCapNhat DESC) AS rowNumber
						FROM (
							SELECT C.course_id, C.end_date, EC.employee_id
							FROM Employee_Course EC WITH(NOLOCK)
							INNER JOIN Course C		WITH(NOLOCK) ON C.course_id = EC.course_id
							WHERE EC.employee_id  = @MaNV 
								AND end_date <= @dateReport
							AND (LOWER(C.course_id) LIKE '%w2%')
						) AS CE INNER JOIN (SELECT MaNV, PhongSX, NgayCapNhat 
											FROM LichSuDoiPhongNV WHERE [PhongSX] IN (SELECT D.department_id FROM Department D) AND NgayCapNhat <= @dateReport) LS  
											ON CE.employee_id  = LS.MaNV 
											AND YEAR(CAST(LS.NgayCapNhat AS NVARCHAR)) = (CASE WHEN CE.end_date < (CONVERT(nvarchar(4), YEAR(CAST(CE.end_date AS NVARCHAR))) + '-08-31 23:59:59') THEN YEAR(CAST(CE.end_date AS NVARCHAR)) Else (YEAR(CAST(CE.end_date AS NVARCHAR)) + 1) END)
					) AS TH WHERE TH.rowNumber = 1)

	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_PhongSX_Of_Staff_By_Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT   
-- Create date: 2019-09-19
-- Description: Get latest PhongSX of staff
-- =============================================
CREATE FUNCTION [dbo].[Get_PhongSX_Of_Staff_By_Course] 
	(@Course_id  NVARCHAR(20)) 
RETURNS NVARCHAR(3) AS 
BEGIN
	DECLARE @result NVARCHAR(3);

	SET @result = (
		SELECT TOP 1 C.department_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.course_id = @Course_id
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_PhongSX_Of_Staff_CBP]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: [Get_PhongSX_Of_Staff_CBP]
-- =============================================
CREATE FUNCTION [dbo].[Get_PhongSX_Of_Staff_CBP] 
	(@MaNV		 NVARCHAR(7)) 
RETURNS NVARCHAR(20) AS 
BEGIN
	DECLARE @result NVARCHAR(20);

	SET @result = (
		SELECT TOP 1 C.department_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.employee_id = @MaNV
			AND lower(EC.course_id) not like '%w4%'
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_PhongSX_Of_Staff_LC_By_Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: QuiCTT      
-- Create date: 2019-09-11
-- Description: Get_PhongSX_Of_Staff_LC_By_Course
-- =============================================
CREATE FUNCTION [dbo].[Get_PhongSX_Of_Staff_LC_By_Course] 
	(@MaNV		 NVARCHAR(7)) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);

	SET @result = (
		SELECT TOP 1 C.department_id 
		FROM Employee_Course EC
			INNER JOIN Course C
		ON EC.course_id = C.course_id
		WHERE EC.employee_id = @MaNV
			AND lower(EC.course_id) like '%w2%'
		ORDER BY C.end_date DESC
	)
	RETURN @result;
END





GO
/****** Object:  UserDefinedFunction [dbo].[Get_Position_Of_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-04-19
-- Description: Get position of staff
-- =============================================
CREATE FUNCTION [dbo].[Get_Position_Of_Staff] 
	(@MaNV		 NVARCHAR(12), 
	 @dateReport DATETIME) 
RETURNS NVARCHAR(12) AS 
BEGIN
	DECLARE @result NVARCHAR(12);
	SET @result =(SELECT TOP 1 ChucVu FROM LichSuChucVuNV
	WHERE MaNV = @MaNV and NgayCapNhat <= @dateReport
	ORDER BY NgayCapNhat DESC)

	RETURN @result;
END




GO
/****** Object:  UserDefinedFunction [dbo].[Get_Profession_Point]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do      
-- Create date: 2019-02-26
-- Description: Report General
-- =============================================
CREATE FUNCTION [dbo].[Get_Profession_Point] 
	(@employee_id NVARCHAR(128),
	 @department_id NVARCHAR(128),
	 @isFemale BIT, 
	 @year INT) 
RETURNS NVARCHAR(128) 
AS 
BEGIN
	DECLARE @result NVARCHAR(128), @countStage INT, @totalStage INT;
	IF (@isFemale = 1) --PhaiNu = true
		BEGIN
			SET @countStage = (SELECT COUNT(MaCongDoan) AS Val
				FROM LichSuDanhGia LSDG
				WHERE LSDG.MaNV = @employee_id
				AND LSDG.KetQua = 1
				AND ((LSDG.Nam = (@year -1) AND LSDG.Thang >= 9) OR (LSDG.Nam = @year AND LSDG.Thang < 9))
				AND LSDG.MaCongDoan in (SELECT CD.MaCongDoan FROM CongDoan CD WHERE CD.CongDoanChinh = 1 
								AND LEFT(CD.MaCongDoan, 2) = REPLACE(@department_id, SUBSTRING(@department_id, 2, 1), '')))

			SET @totalStage = (SELECT SUM(CASE WHEN CD.CongDoanChinh = 1 AND LEFT(CD.MaCongDoan, 2) = REPLACE(@department_id, SUBSTRING(@department_id, 2, 1), '') THEN 1 ELSE 0 END) AS totalStage
									FROM CongDoan CD where Status_Mark = 1)

		END
	ELSE
		BEGIN
			SET @countStage = (SELECT COUNT(MaCongDoan) AS Val
				FROM LichSuDanhGia LSDG
				WHERE LSDG.MaNV = @employee_id
				AND LSDG.KetQua = 1
				AND ((LSDG.Nam = (@year -1) AND LSDG.Thang >= 9) OR (LSDG.Nam = @year AND LSDG.Thang < 9))
				AND LSDG.MaCongDoan in (SELECT CD.MaCongDoan FROM CongDoan CD WHERE CD.CongDoanNam = 1 
								AND LEFT(CD.MaCongDoan, 2) = REPLACE(@department_id, SUBSTRING(@department_id, 2, 1), '')))

			SET @totalStage = (SELECT SUM(CASE WHEN CD.CongDoanNam = 1 AND LEFT(CD.MaCongDoan, 2) = REPLACE(@department_id, SUBSTRING(@department_id, 2, 1), '') THEN 1 ELSE 0 END) AS totalStage
									FROM CongDoan CD where Status_Mark = 1)

		END

		IF (@totalStage = 0) SET @totalStage = 7;

		SET @result = CONVERT(NVARCHAR(255), ROUND(CAST(@countStage AS FLOAT)/CAST(@totalStage AS FLOAT)*100, 2))
					+ '% (' + convert(NVARCHAR(255), @countStage) + '/' + convert(NVARCHAR(255), @totalStage) + ' CĐ)';

	RETURN @result;
END







GO
/****** Object:  UserDefinedFunction [dbo].[Get_Profession_Rating_Ids]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Phat Dat      
-- Create date: 2019-02-27
-- Description: Get an array of rating ids base on course_phase_id and employee_course_id
-- =============================================
CREATE FUNCTION [dbo].[Get_Profession_Rating_Ids]
	(@course_phase_id    bigint, 
	 @employee_course_id int)
RETURNS varchar(MAX)
AS
BEGIN
	DECLARE @arr_profession_rating_id nvarchar(MAX) SET @arr_profession_rating_id = ''
	DECLARE @profession_rating_id nvarchar(128)
	DECLARE profession_cursor CURSOR FOR
		SELECT pr.profession_rating_id
		FROM ProfessionRating pr
		WHERE pr.course_phase_id = @course_phase_id AND pr.employee_course_id = @employee_course_id

	OPEN profession_cursor
	FETCH NEXT FROM profession_cursor INTO @profession_rating_id
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @arr_profession_rating_id += @profession_rating_id + ','
		FETCH NEXT FROM profession_cursor INTO @profession_rating_id
	END

	CLOSE profession_cursor
	DEALLOCATE profession_cursor
	IF LEN(@arr_profession_rating_id) > 0
		RETURN SUBSTRING(@arr_profession_rating_id, 1, LEN(@arr_profession_rating_id) - 1)
	RETURN NULL

END







GO
/****** Object:  UserDefinedFunction [dbo].[Get_Profession_Rating_Info]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================      
-- Author: Phat Dat  
-- Create date: 2019-02-27
-- Description: Report Course - Get profession rating infomation. Ex: Lý thuyết - WK:95.97|Thực hành - LL:98.50
-- =============================================
CREATE FUNCTION [dbo].[Get_Profession_Rating_Info]
	(@course_id			 nvarchar(128), 
	 @employee_course_id int)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @rating_info nvarchar(MAX) SET @rating_info = ''
	DECLARE @rating_form_id nvarchar(128), @phase_name nvarchar(128), @object_id nvarchar(128)
	DECLARE @theory_point nvarchar(128), @profession_point nvarchar(128), @stage_point nvarchar(128)
	DECLARE @course_phase_id bigint
	DECLARE stage_cursor CURSOR FOR
		SELECT cp.course_phase_id, p.phase_name, cp.rating_form_id, cp.object_id 
		FROM Phase p JOIN Course_Phase cp ON p.phase_id = cp.phase_id
		WHERE cp.course_id = @course_id

	OPEN stage_cursor
	FETCH NEXT FROM stage_cursor INTO @course_phase_id, @phase_name, @rating_form_id, @object_id
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @rating_info += @phase_name + ' - ' + @object_id + ':' --Lý thuyết - WK:
		IF @rating_form_id = 1 -- Đánh giá theo Điểm
		BEGIN
			DECLARE @theory_rating_id bigint 
			SET @theory_rating_id = (SELECT tr.theory_rating_id 
										FROM TheoryRating tr 
										WHERE tr.course_phase_id = @course_phase_id AND tr.employee_course_id = @employee_course_id)
			SET @theory_point = (SELECT CAST(score AS varchar)
									FROM dbo.Calculate_Theory_Rating(@theory_rating_id))
			SET @rating_info += ISNULL(@theory_point, '') + '|' -- 95.75
		END
		ELSE IF @rating_form_id = 2 -- Đánh giá theo hạng mục công việc
		BEGIN
			DECLARE @profession_rating_ids nvarchar(MAX)
			SET @profession_rating_ids = dbo.Get_Profession_Rating_Ids(@course_phase_id, @employee_course_id)
			IF @profession_rating_ids IS NULL 
				SET @profession_point = ''
			ELSE
				SET @profession_point = ISNULL((SELECT CAST(score AS varchar)
										FROM dbo.Calculate_Profession_Rating(@profession_rating_ids)), 0)
			SET @rating_info += @profession_point + '|'
		END
		ELSE IF @rating_form_id = 3 -- Đánh giá theo công đoạn
		BEGIN
			DECLARE @stage_rating_ids nvarchar(MAX)
			SET @stage_rating_ids = dbo.Get_Stage_Rating_Ids(@course_phase_id, @employee_course_id)
			IF @stage_rating_ids IS NULL
				SET @stage_point = ''
			ELSE
				SET @stage_point = ISNULL((SELECT CAST(score AS varchar)
									FROM dbo.Calculate_Final_Stage_Rating(@stage_rating_ids)), 0)
			SET @rating_info += @stage_point + '|'
		END
		FETCH NEXT FROM stage_cursor INTO @course_phase_id, @phase_name, @rating_form_id, @object_id
	END

	CLOSE stage_cursor
	DEALLOCATE stage_cursor
	RETURN @rating_info
END




GO
/****** Object:  UserDefinedFunction [dbo].[Get_Stage_Rating_Ids]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author: Phat Dat  
-- Create date: 2019-02-27
-- Description: Get an array of stage rating ids base on course_phase_id and employee_course_id
-- =============================================
CREATE FUNCTION [dbo].[Get_Stage_Rating_Ids]
(@course_phase_id bigint, @employee_course_id int)
RETURNS varchar(MAX)
AS
BEGIN
	DECLARE @arr_stage_rating_id nvarchar(MAX) SET @arr_stage_rating_id = ''
	DECLARE @stage_rating_id nvarchar(128)
	DECLARE stage_cursor CURSOR FOR
		SELECT sr.stage_rating_id
		FROM StageRating sr
		WHERE sr.course_phase_id = @course_phase_id AND sr.employee_course_id = @employee_course_id

	OPEN stage_cursor
	FETCH NEXT FROM stage_cursor INTO @stage_rating_id
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @arr_stage_rating_id += @stage_rating_id + ','
		FETCH NEXT FROM stage_cursor INTO @stage_rating_id
	END

	CLOSE stage_cursor
	DEALLOCATE stage_cursor
	IF LEN(@arr_stage_rating_id) > 0
		RETURN SUBSTRING(@arr_stage_rating_id, 1, LEN(@arr_stage_rating_id) - 1)
	RETURN NULL
END






GO
/****** Object:  Table [dbo].[Approve_Diem_Training_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approve_Diem_Training_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[Position] [nvarchar](255) NULL,
	[Diem_Training] [decimal](18, 0) NOT NULL,
	[TrangThai] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_CapNhat] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_CapNhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Approve_Level_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approve_Level_Tbl](
	[MaNV] [nvarchar](255) NOT NULL,
	[Nam] [int] NOT NULL,
	[Level_Job] [nvarchar](255) NULL,
	[Diem_TR] [nvarchar](255) NULL,
	[Diem_TRLC] [nvarchar](255) NULL,
	[Diem_Plan] [nvarchar](255) NULL,
	[Diem_PlanLC] [nvarchar](255) NULL,
	[LyDo] [nvarchar](255) NULL,
	[NguoiDuyet] [nvarchar](255) NULL,
	[NgayDuyet] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApprovedReportGeneral]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedReportGeneral](
	[report_general_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [nvarchar](50) NULL,
	[course_id] [nvarchar](50) NULL,
	[staff_name] [nvarchar](128) NULL,
	[position] [nvarchar](128) NULL,
	[gender] [bit] NULL,
	[department_id_1] [nvarchar](128) NULL,
	[department_id_2] [nvarchar](128) NULL,
	[working_time] [int] NULL,
	[training_point_1] [float] NULL,
	[training_point_2] [float] NULL,
	[profession_point_1] [nvarchar](50) NULL,
	[profession_point_2] [nvarchar](50) NULL,
	[nscl_point_minus] [nvarchar](50) NULL,
	[nscl_point] [float] NULL,
	[curent_rank] [nvarchar](50) NULL,
	[expected_rank] [nvarchar](50) NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NULL,
	[year] [int] NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_report_general_id] PRIMARY KEY CLUSTERED 
(
	[report_general_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[assignment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[assignment_name] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttitudeRating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttitudeRating](
	[attitude_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[rating_item_id] [nvarchar](128) NOT NULL,
	[prd] [bit] NULL,
	[pd] [bit] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__Attitude__140C54FCF66E2A5B] PRIMARY KEY CLUSTERED 
(
	[attitude_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [nvarchar](128) NOT NULL,
	[information] [nvarchar](300) NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[department_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[training_code_version] [smallint] NOT NULL,
	[request_department] [nvarchar](200) NULL,
	[request_date] [datetime] NULL,
	[skill_percent] [float] NULL,
	[attitude_percent] [float] NULL,
	[ng_from] [smallint] NULL,
	[ng_to] [smallint] NULL,
	[ok_from] [smallint] NULL,
	[ok_to] [smallint] NULL,
	[good_from] [smallint] NULL,
	[good_to] [smallint] NULL,
	[is_rating_attitude] [bit] NULL,
 CONSTRAINT [PK__Course__8F1EF7AE8EA303FA] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_Phase]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Phase](
	[course_phase_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_id] [nvarchar](128) NOT NULL,
	[phase_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[rating_form_id] [nvarchar](128) NOT NULL,
	[number_of_days] [smallint] NULL,
	[coefficient] [smallint] NOT NULL,
	[target] [smallint] NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[percent_require] [int] NULL,
 CONSTRAINT [PK__Course_P__BCC5A9C5A0BE6D58] PRIMARY KEY CLUSTERED 
(
	[course_phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia_ThaiDo_40Per_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia_ThaiDo_40Per_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[Diem] [decimal](18, 0) NULL,
	[Ngay_DanhGia] [date] NULL,
	[Note] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[MaHangMucDanhGia] ASC,
	[Ngay_Tao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia_ThucTap_23Days_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia_ThucTap_23Days_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[Diem_ThucTap] [int] NULL,
	[Ngay_DanhGia] [date] NULL,
	[Note] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[MaHangMucDanhGia] ASC,
	[Ngay_Tao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [nvarchar](128) NOT NULL,
	[department_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[note] [nvarchar](512) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_LyThuyet_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_LyThuyet_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[Diem_LyThuyet] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[Nguoi_Nhap] [nchar](1) NULL,
	[Ngay_Nhap] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_ThaiDo_New_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_ThaiDo_New_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[Diem_ThaiDo] [int] NULL,
	[KetQua_Dat] [bit] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[Nguoi_Nhap] [nchar](1) NULL,
	[Ngay_Nhap] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_TongQuat_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_TongQuat_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[LyThuyet] [nchar](1) NULL,
	[ThucHanh] [nchar](1) NULL,
	[LuyenTap] [nchar](1) NULL,
	[ThucTap] [nchar](1) NULL,
	[Tong] [nchar](1) NULL,
	[KetquaChung] [nvarchar](255) NULL,
	[ThaiDo] [nvarchar](255) NULL,
	[Final_Mark] [nvarchar](255) NULL,
	[Note_ThaiDo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[document_id] [nvarchar](128) NOT NULL,
	[document_name] [nvarchar](200) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[assignment_id] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[version] [smallint] NOT NULL,
	[path] [nvarchar](500) NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[document_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_Course]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Course](
	[employee_course_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [nvarchar](128) NOT NULL,
	[course_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[feature_id] [bigint] IDENTITY(1,1) NOT NULL,
	[feature_name] [nvarchar](128) NOT NULL,
	[created] [date] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [date] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature_Permission]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature_Permission](
	[feature_permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_id] [nvarchar](50) NOT NULL,
	[feature_id] [bigint] NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[feature_permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Final_Report_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Final_Report_Tbl](
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[ChucVu] [nvarchar](255) NULL,
	[Thoigian_LV] [nvarchar](255) NULL,
	[Diem_Training] [nvarchar](255) NULL,
	[Diem_TR_LC] [nvarchar](255) NULL,
	[Diem_Plan_NT] [nvarchar](255) NULL,
	[Diem_LC_NT] [nvarchar](255) NULL,
	[Diem_Plan] [nvarchar](255) NULL,
	[Diem_LC] [nvarchar](255) NULL,
	[Diem_NS_Last_Year] [nvarchar](255) NULL,
	[Loi_vipham] [nvarchar](255) NULL,
	[Cur_Diem_NS] [nvarchar](255) NULL,
	[Level_NamTrc] [nvarchar](255) NULL,
	[Cur_Level] [nvarchar](255) NULL,
	[Xet_DK] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[group_id] [bigint] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangMuc_DanhGia_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangMuc_DanhGia_Tbl](
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[LoaiHangMuc] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Stt] [int] NULL,
	[Dang_Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangMucDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangMuc_DaoTao_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangMuc_DaoTao_Tbl](
	[MaHangMuc] [nvarchar](255) NOT NULL,
	[TenHangMuc] [nvarchar](255) NULL,
	[MaTeam] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[History_Log_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[History_Log_Tbl](
	[Staff_code] [char](255) NOT NULL,
	[Staff_name] [nchar](1) NULL,
	[LogOn_time] [datetimeoffset](7) NOT NULL,
	[LogOff_Time] [datetimeoffset](7) NULL,
	[PC_Name] [nchar](1) NULL,
	[IP] [nchar](1) NULL,
	[UserName] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_code] ASC,
	[LogOn_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Level]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] NOT NULL,
	[level_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichSuLogin]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuLogin](
	[tentaikhoan] [nvarchar](255) NOT NULL,
	[ngaygio] [datetimeoffset](7) NULL,
	[tennv] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_ChungTuDT_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_ChungTuDT_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[ThongTin_CT] [nvarchar](255) NULL,
	[Ma_DaoTao] [nchar](1) NOT NULL,
	[Ma_DanhSachHL] [nchar](1) NOT NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[Ngay_BatDau] [date] NULL,
	[Ngay_KetThuc] [date] NULL,
	[Ngay_YeuCau] [date] NULL,
	[Nguoi_tao] [nchar](1) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Trang_thai] [nchar](1) NOT NULL,
	[Ma_Edit] [nchar](1) NULL,
	[Note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_CongDoan_New_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_CongDoan_New_Tbl](
	[MaCongDoanDT] [nchar](1) NOT NULL,
	[TenCongDoanDT] [nvarchar](255) NULL,
	[BoPhan] [nvarchar](255) NULL,
	[Level_CD] [int] NULL,
	[Phai_Nu] [bit] NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongDoanDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_CongDoan_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_CongDoan_Tbl](
	[MaCongDoanDT] [nvarchar](255) NOT NULL,
	[TenCongDoanDT] [nvarchar](255) NULL,
	[ID_CongDoan] [nchar](1) NULL,
	[MaSP] [nvarchar](255) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[TocDo] [decimal](18, 0) NULL,
	[YeuCau] [decimal](18, 0) NULL,
	[DoiTuong] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongDoanDT] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_DaoTao_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_DaoTao_Tbl](
	[Ma_DaoTao] [nvarchar](255) NOT NULL,
	[ThongTin_Ma_DT] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[PhongBan] [nvarchar](255) NULL,
	[Ma_LyThuyet] [nvarchar](255) NOT NULL,
	[Ma_ThucHanh] [nvarchar](255) NULL,
	[Nguoi_tao] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
	[Trang_thai] [nvarchar](255) NOT NULL,
	[Ma_Edit] [nchar](1) NULL,
	[Note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_DaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_LyThuyet_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_LyThuyet_Tbl](
	[Ma_LyThuyet] [nchar](1) NOT NULL,
	[MaTaiLieu] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_LyThuyet] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_ThucHanh_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_ThucHanh_Tbl](
	[Ma_ThucHanh] [nchar](1) NOT NULL,
	[MaCongDoanDT] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ThucHanh] ASC,
	[MaCongDoanDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_NVHL_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_NVHL_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_TaiLieu_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_TaiLieu_Tbl](
	[MaTaiLieu] [nvarchar](255) NOT NULL,
	[TenTaiLieu] [nvarchar](255) NOT NULL,
	[DoiTuong] [nvarchar](255) NULL,
	[MaTeam] [nvarchar](255) NULL,
	[NguoiPhuTrach] [nvarchar](255) NULL,
	[Mota] [nvarchar](255) NULL,
	[NoiDungCapNhat] [nvarchar](255) NULL,
	[DuongDan] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListFile_QuiTrinh_DT_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListFile_QuiTrinh_DT_Tbl](
	[CodePhienBan] [nvarchar](255) NOT NULL,
	[Ngay_Update] [datetimeoffset](7) NOT NULL,
	[TenPhienBan] [nvarchar](255) NULL,
	[Nguoi_Update] [nvarchar](255) NOT NULL,
	[Ngay_ApDung] [date] NULL,
	[NoiDung_Update] [nvarchar](255) NULL,
	[DuongDanFile] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodePhienBan] ASC,
	[Ngay_Update] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [nvarchar](128) NOT NULL,
	[screen] [nvarchar](512) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[information] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NULL,
	[created_by] [varchar](20) NULL,
	[updated_by] [varchar](20) NULL,
	[ip] [varchar](60) NULL,
 CONSTRAINT [PK_Log_1] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_Training_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Training_Tbl](
	[Ma_Edit] [nchar](1) NOT NULL,
	[Ngay_Edit] [datetimeoffset](7) NULL,
	[ThongTin_Edit] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Edit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ma_List_DSNV_Tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ma_List_DSNV_Tbl](
	[Ma_DanhSachHL] [nchar](1) NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_DanhSachHL] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ngach_tbl]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ngach_tbl](
	[MaNV] [nvarchar](255) NOT NULL,
	[Nam] [nvarchar](255) NOT NULL,
	[Ngach] [nvarchar](255) NULL,
	[Nguoi_Duyet] [nvarchar](255) NULL,
	[Ngay_Duyet] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Object]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[object_id] [nvarchar](128) NOT NULL,
	[object_name] [nvarchar](200) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[is_object_training] [bit] NULL,
	[linked_object] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[object_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [nvarchar](50) NOT NULL,
	[permission_name] [nvarchar](128) NULL,
	[created] [date] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [date] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phase]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase](
	[phase_id] [nvarchar](128) NOT NULL,
	[phase_name] [nvarchar](128) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PointNSCL]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointNSCL](
	[point_NSCL_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [nvarchar](50) NOT NULL,
	[nscl_point] [float] NULL,
	[year] [int] NOT NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_point_NSCL_id] PRIMARY KEY CLUSTERED 
(
	[point_NSCL_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Process]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[process_id] [nvarchar](128) NOT NULL,
	[process_name] [nvarchar](200) NOT NULL,
	[version] [int] NOT NULL,
	[content_update] [nvarchar](512) NULL,
	[path] [nvarchar](500) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[process_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfessionRating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessionRating](
	[profession_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[rating_item_id] [nvarchar](128) NOT NULL,
	[score] [smallint] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__Professi__8DD7B237668A1F82] PRIMARY KEY CLUSTERED 
(
	[profession_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rank]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[rank_id] [nvarchar](128) NOT NULL,
	[rank_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[rank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingForm]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingForm](
	[rating_form_id] [nvarchar](128) NOT NULL,
	[rating_form_name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingGroup]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingGroup](
	[rating_group_id] [nvarchar](128) NOT NULL,
	[rating_group_name] [nvarchar](200) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingItem]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RatingItem](
	[rating_item_id] [nvarchar](128) NOT NULL,
	[rating_item_name] [nvarchar](500) NOT NULL,
	[rating_group_id] [nvarchar](128) NULL,
	[rating_type_id] [varchar](10) NULL,
	[status] [bit] NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[object_id] [nvarchar](128) NULL,
 CONSTRAINT [PK__RatingIt__606B6C892522E102] PRIMARY KEY CLUSTERED 
(
	[rating_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RatingType]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RatingType](
	[rating_type_id] [varchar](10) NOT NULL,
	[rating_type_name] [nvarchar](200) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__RatingTy__9784BFC68AE2C991] PRIMARY KEY CLUSTERED 
(
	[rating_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [nvarchar](128) NOT NULL,
	[role_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_Feature_Permission]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature_Permission](
	[role_feature_permission_id] [bigint] IDENTITY(1,1) NOT NULL,
	[feature_permission_id] [int] NOT NULL,
	[role_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_feature_permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schema_version]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_version](
	[installed_rank] [int] NOT NULL,
	[version] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[type] [nvarchar](20) NOT NULL,
	[script] [nvarchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [nvarchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [bit] NOT NULL,
 CONSTRAINT [schema_version_pk] PRIMARY KEY CLUSTERED 
(
	[installed_rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stage]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[stage_id] [nvarchar](128) NOT NULL,
	[stage_name] [nvarchar](200) NOT NULL,
	[rank] [int] NULL,
	[gender] [bit] NOT NULL,
	[status] [bit] NULL,
	[department_id] [nvarchar](128) NULL,
	[object_id] [nvarchar](128) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[note] [nvarchar](512) NULL,
 CONSTRAINT [PK__Stage__CFC78760E4B4487B] PRIMARY KEY CLUSTERED 
(
	[stage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StageRating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageRating](
	[stage_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[stage_id] [nvarchar](128) NOT NULL,
	[product_id] [nvarchar](20) NULL,
	[xx_hsl] [float] NOT NULL,
	[number_of_employee] [smallint] NOT NULL,
	[first] [float] NULL,
	[second] [float] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__StageRat__92EA3DB831FF7E33] PRIMARY KEY CLUSTERED 
(
	[stage_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheoryRating]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoryRating](
	[theory_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[score] [smallint] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__TheoryRa__302D92D279E292B7] PRIMARY KEY CLUSTERED 
(
	[theory_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode](
	[training_code_id] [nvarchar](128) NOT NULL,
	[version] [smallint] NOT NULL,
	[information] [nvarchar](512) NULL,
	[department_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_TrainingCode] PRIMARY KEY CLUSTERED 
(
	[training_code_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode_Document]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode_Document](
	[training_code_document_id] [int] IDENTITY(1,1) NOT NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[document_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[training_code_version] [smallint] NOT NULL,
	[document_version] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[training_code_document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode_Stage]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode_Stage](
	[training_code_stage_id] [bigint] IDENTITY(1,1) NOT NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[stage_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[training_code_version] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[training_code_stage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[user_role_id] [int] IDENTITY(1,1) NOT NULL,
	[user_login] [nvarchar](128) NOT NULL,
	[role_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__User_Rol__B8D9ABA28CBAF040] PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_login] [nvarchar](128) NOT NULL,
	[user_id] [nvarchar](128) NULL,
	[full_name] [nvarchar](128) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[force_change_pw] [bit] NULL,
	[email] [nvarchar](128) NULL,
	[department] [nvarchar](128) NOT NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Get_All_Staff]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Get_All_Staff] AS

	SELECT * FROM NhanVien






GO
/****** Object:  View [dbo].[Product_View_Get_List_Product]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Product_View_Get_List_Product] AS

	SELECT DISTINCT MaSP, TenSP FROM SWP






GO
/****** Object:  View [dbo].[Raw_Count_Report_Staff_Data]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: ThinhDH    
-- Create date: 2019-04-22
-- Description: Raw View to count for report staff data
-- =============================================
CREATE VIEW [dbo].[Raw_Count_Report_Staff_Data] AS

	SELECT TT.course_id, TT.object_id, TT.staffId, TT.TenNV AS staffName, TT.NghiViec AS isQuit, TT.PhaiNu AS gender, TT.ChucVu AS position, 
		   TT.department_id_1 AS departmentId1, TT.department_id_2 AS departmentId2, TT.workingTime, TT.curentRank as currentRank, TT.currentDepartment
	FROM (

		SELECT DISTINCT T0.course_id, T0.object_id, T0.staffId, T0.TenNV, T0.PhaiNu, T0.ChucVu, T0.currentDepartment,
								   CASE   
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.oldDepartment   
    									WHEN (T0.oldDepartment IS NULL or T0.oldDepartment = '') AND (T0.departmentLC IS NULL or T0.departmentLC = '') THEN T0.currentDepartment  
    									ELSE T0.departmentLC END AS department_id_1,  
    								CASE WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.departmentLC ELSE '' END AS department_id_2,
									T0.workingTime, ISNULL(ISNULL(C2.curent_rank, T0.curentRank),'A1') AS curentRank,
									C2.training_point_1, C2.training_point_2, T0.NghiViec, T0.Ngay_DoiPhong
		FROM (
						SELECT DISTINCT c.course_id, c.end_date, c.object_id, nv.MaNV AS staffId, nv.TenNV, nv.PhaiNu, nv.ChucVu, nv.NghiViec, nv.Ngay_DoiPhong,
										dbo.Get_Before_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31', dbo.Get_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31')) AS oldDepartment,
										ISNULL(dbo.Get_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31'),'') AS departmentLC,  
										ROUND(CAST(DATEDIFF(DAY, nv.NgayVaoCTy, GETDATE()) AS FLOAT) / CAST(30 AS FLOAT), 2) AS workingTime,
										CASE WHEN DATEDIFF(MONTH, nv.NgayVaoCTy, GETDATE()) < 12 THEN 'A1' ELSE NULL END AS curentRank,
										nv.PhongSX AS currentDepartment 
						FROM NhanVien nv			 WITH(NOLOCK)
						LEFT JOIN Employee_Course ec WITH(NOLOCK) ON nv.MaNV = ec.employee_id
						LEFT JOIN Course C			 WITH(NOLOCK) ON C.course_id = ec.course_id
						WHERE nv.NghiViec = 0 
		) AS T0
					LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
							   INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
											GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) C2 ON C2.staff_id = T0.staffId
											WHERE T0.currentDepartment IN (SELECT D.department_id FROM Department D)
	) AS TT









GO
/****** Object:  View [dbo].[Raw_Report_Staff_Data]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Phat Dat     
-- Create date: 2019-03-06
-- Description: Raw View for report staff data
-- =============================================
CREATE VIEW [dbo].[Raw_Report_Staff_Data] AS

	SELECT TT.course_id, TT.object_id, TT.staffId, TT.TenNV AS staffName, TT.NghiViec AS isQuit, TT.PhaiNu AS gender, TT.ChucVu AS position, 
		   TT.department_id_1 AS departmentId1, TT.department_id_2 AS departmentId2, TT.workingTime, TT.trainingPoint1, TT.trainingPoint2,
		   CASE WHEN TT.curentRank = 'A1' THEN TT.professionPoint1 ELSE '100% (7/7 CÐ)' END AS professionPoint1, TT.professionPoint2, TT.currentDepartment,
		   TT.curentRank as currentRank
	FROM (
		SELECT T.course_id, T.object_id, T.staffId, T.TenNV, T.PhaiNu, T.ChucVu, T.department_id_1, T.department_id_2, T.workingTime, T.currentDepartment,
			   CASE 
    				WHEN T.department_id_2 = '' AND lower(T.course_id) like '%w4%' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Before_Course_Of_Staff_By_Course(T.staffId, T.course_id)), 2)  
    				WHEN T.department_id_2 = '' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Course_Of_Staff(T.staffId)), 2)  
    				WHEN T.department_id_2 != '' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Before_Course_Of_Staff_By_Course(T.staffId, dbo.Get_Course_Of_Staff_LC(T.staffId))), 2)   
    			END AS trainingPoint1,   
    		   CASE WHEN T.department_id_2 = '' AND T.department_id_2 IS NULL THEN NULL   
    				WHEN T.department_id_2 != '' AND T.department_id_2 IS NOT NULL THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Course_Of_Staff_LC(T.staffId)), 2)   
    			END AS trainingPoint2,  			 
			   CASE WHEN T.department_id_1 = '' THEN NULL 
			   		WHEN LOWER(dbo.Get_Course_Of_Staff(T.staffId)) LIKE '%w4%' AND T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate) + 1)
					WHEN LOWER(dbo.Get_Course_Of_Staff(T.staffId)) LIKE '%w4%' AND T.lastestEndDate < CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate))
					ELSE CASE WHEN T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
					THEN dbo.Get_Profession_Point(T.staffId, T.department_id_1, T.PhaiNu, YEAR(T.lastestEndDate) + 1)
					ELSE dbo.Get_Profession_Point(T.staffId, T.department_id_1, T.PhaiNu, YEAR(T.lastestEndDate)) END
					END AS professionPoint1,
				CASE 
					WHEN T.department_id_2 = '' THEN NULL
				ELSE 
					CASE 
						WHEN T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE())
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate) + 1)
						ELSE dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate)) 
						END
					END AS professionPoint2,
					 T.curentRank, T.NghiViec
		FROM (
			SELECT TH.course_id, TH.object_id, TH.staffId, TH.TenNV, TH.PhaiNu, TH.ChucVu, TH.department_id_1, TH.department_id_2, TH.currentDepartment,
				   TH.workingTime, TH.curentRank, TH.training_point_1, TH.training_point_2, TH.NghiViec,
				   (SELECT TOP 1 C.end_date -- Get the lastest course's start date of this staff
					FROM Course C JOIN Employee_Course EC
								ON C.course_id = EC.course_id
								AND EC.employee_id = TH.staffId
								ORDER BY C.end_date DESC) AS lastestEndDate
			FROM (
					SELECT DISTINCT T0.course_id, T0.end_date, T0.object_id, T0.staffId, T0.TenNV, T0.PhaiNu, T0.ChucVu, 
								    CASE   
    									WHEN T0.oldDepartment IS NOT NULL AND T0.departmentLC = '' AND LOWER(T0.course_id) like '%w4%' THEN dbo.Get_PhongSX_Of_Staff_CBP(T0.staffId) 
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.oldDepartment   
    									WHEN (T0.oldDepartment IS NULL or T0.oldDepartment = '') AND T0.departmentLC = '' THEN T0.currentDepartment  
    								ELSE T0.departmentLC END AS department_id_1,  
    									CASE 
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.departmentLC  
    								ELSE '' END AS department_id_2,
									T0.workingTime, ISNULL(ISNULL(C2.curent_rank, T0.curentRank), 'A1') AS curentRank,
									C2.training_point_1, C2.training_point_2, T0.currentDepartment, T0.NghiViec, T0.Ngay_DoiPhong
					FROM (
						SELECT DISTINCT (SELECT TOP 1 C.course_id
										FROM Course C JOIN Employee_Course EC  
										ON C.course_id = EC.course_id  
    										AND EC.employee_id = nv.MaNV 
										ORDER BY C.end_date DESC) AS course_id, c.end_date, c.object_id, nv.MaNV AS staffId, nv.TenNV, nv.PhaiNu, nv.ChucVu, nv.NghiViec, nv.Ngay_DoiPhong,
										dbo.Get_Before_PhongSX_Of_Staff_By_Course(nv.MaNV, dbo.Get_PhongSX_Of_Staff_LC_By_Course(nv.MaNV)) AS oldDepartment,
										ISNULL(dbo.Get_PhongSX_Of_Staff_LC_By_Course(nv.MaNV),'') AS departmentLC, 
										ROUND(CAST(DATEDIFF(DAY, nv.NgayVaoCTy, GETDATE()) AS FLOAT) / CAST(30 AS FLOAT), 2) AS workingTime,
										CASE WHEN DATEDIFF(MONTH, nv.NgayVaoCTy, GETDATE()) < 12 THEN 'A1' ELSE NULL END AS curentRank,
										nv.PhongSX AS currentDepartment
						FROM NhanVien nv			 WITH(NOLOCK)
						LEFT JOIN Employee_Course ec WITH(NOLOCK) ON nv.MaNV = ec.employee_id
						LEFT JOIN Course C			 WITH(NOLOCK) ON C.course_id = ec.course_id
						WHERE nv.NghiViec = 0 
					) AS T0
					LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
							   INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
											GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) C2 ON C2.staff_id = T0.staffId
					WHERE T0.currentDepartment IN (SELECT D.department_id FROM Department D)
			) AS TH
		) AS T
	) AS TT 







GO
/****** Object:  View [dbo].[Staff_View]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do     
-- Create date: 2019-03-14
-- Description: Get rank infomation for Staff
-- =============================================
CREATE VIEW [dbo].[Staff_View] AS

	SELECT D.* FROM (
		SELECT NV.*, 
			   CASE WHEN ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') = 'NULL' THEN ''
			   ELSE ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') END AS curent_rank
		FROM NhanVien NV
		INNER JOIN Department DT ON DT.department_id = NV.PhongSX
		LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
					INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
					GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) A ON A.staff_id = NV.MaNV
	) AS D






GO
/****** Object:  View [dbo].[Staff_Without_Department_View]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do     
-- Create date: 2019-03-27
-- Description: Get rank infomation for Staff without Department
-- =============================================
CREATE VIEW [dbo].[Staff_Without_Department_View] AS

	SELECT D.* FROM (
		SELECT NV.*,
			   CASE WHEN ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') = 'NULL' THEN ''
			   ELSE ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') END AS curent_rank
		FROM NhanVien NV
		LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
					INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
					GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) A ON A.staff_id = NV.MaNV
	) AS D






GO
/****** Object:  View [dbo].[Total_Point]    Script Date: 3/26/2021 10:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Total_Point] AS

  SELECT D.* FROM (
	 SELECT C.course_id,
			C.start_date,
			C.end_date,
			C.object_id,
			O.object_name,
			O.linked_object,
			dbo.Get_Current_PhongSX_Of_Staff(ec.employee_id, CONVERT(nvarchar(4), (YEAR(C.start_date) + 1)) + '/08/31') AS department_id,
			EC.employee_id
	  FROM Course C					WITH(NOLOCK)
	  INNER JOIN Employee_Course EC WITH(NOLOCK) ON C.course_id = EC.course_id
	  INNER JOIN NhanVien NV		WITH(NOLOCK) ON NV.MaNV = EC.employee_id
	  INNER JOIN Object O			WITH(NOLOCK) ON C.object_id = O.object_id
  ) AS D WHERE D.department_id IN (SELECT D.department_id FROM Department D)


GO
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__is_ratin__30C33EC3]  DEFAULT ((0)) FOR [is_rating_attitude]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__versio__7A672E12]  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[Process] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[schema_version] ADD  DEFAULT (getdate()) FOR [installed_on]
GO
ALTER TABLE [dbo].[Stage] ADD  CONSTRAINT [DF__Stage__level__16CE6296]  DEFAULT ((1)) FOR [rank]
GO
ALTER TABLE [dbo].[TrainingCode] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[TrainingCode_Document] ADD  DEFAULT ((1)) FOR [document_version]
GO
ALTER TABLE [dbo].[AttitudeRating]  WITH CHECK ADD  CONSTRAINT [FK__AttitudeR__emplo__40058253] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[AttitudeRating] CHECK CONSTRAINT [FK__AttitudeR__emplo__40058253]
GO
ALTER TABLE [dbo].[AttitudeRating]  WITH CHECK ADD  CONSTRAINT [FK__AttitudeR__ratin__40F9A68C] FOREIGN KEY([rating_item_id])
REFERENCES [dbo].[RatingItem] ([rating_item_id])
GO
ALTER TABLE [dbo].[AttitudeRating] CHECK CONSTRAINT [FK__AttitudeR__ratin__40F9A68C]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK__Course__departme__619B8048] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK__Course__departme__619B8048]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK__Course__object_i__628FA481] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK__Course__object_i__628FA481]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_TrainingCode]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__cours__395884C4] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__cours__395884C4]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__objec__3B40CD36] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__objec__3B40CD36]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__phase__3A4CA8FD] FOREIGN KEY([phase_id])
REFERENCES [dbo].[Phase] ([phase_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__phase__3A4CA8FD]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK__Document__object__66603565] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK__Document__object__66603565]
GO
ALTER TABLE [dbo].[Employee_Course]  WITH CHECK ADD  CONSTRAINT [FK__Employee___cours__6754599E] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Employee_Course] CHECK CONSTRAINT [FK__Employee___cours__6754599E]
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__cours__43D61337] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__cours__43D61337]
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__emplo__44CA3770] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__emplo__44CA3770]
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__ratin__45BE5BA9] FOREIGN KEY([rating_item_id])
REFERENCES [dbo].[RatingItem] ([rating_item_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__ratin__45BE5BA9]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__objec__797309D9] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__objec__797309D9]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__ratin__6B24EA82] FOREIGN KEY([rating_group_id])
REFERENCES [dbo].[RatingGroup] ([rating_group_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__ratin__6B24EA82]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__ratin__6C190EBB] FOREIGN KEY([rating_type_id])
REFERENCES [dbo].[RatingType] ([rating_type_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__ratin__6C190EBB]
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Stage]  WITH NOCHECK ADD  CONSTRAINT [FK__Stage__departmen__17C286CF] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK__Stage__departmen__17C286CF]
GO
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK__Stage__object_id__18B6AB08] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK__Stage__object_id__18B6AB08]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__cours__489AC854] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__cours__489AC854]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__emplo__498EEC8D] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__emplo__498EEC8D]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__stage__4A8310C6] FOREIGN KEY([stage_id])
REFERENCES [dbo].[Stage] ([stage_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__stage__4A8310C6]
GO
ALTER TABLE [dbo].[TheoryRating]  WITH CHECK ADD  CONSTRAINT [FK__TheoryRat__cours__4D5F7D71] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[TheoryRating] CHECK CONSTRAINT [FK__TheoryRat__cours__4D5F7D71]
GO
ALTER TABLE [dbo].[TheoryRating]  WITH CHECK ADD  CONSTRAINT [FK__TheoryRat__emplo__4E53A1AA] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[TheoryRating] CHECK CONSTRAINT [FK__TheoryRat__emplo__4E53A1AA]
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode_Document]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingCode_Document] FOREIGN KEY([document_id], [document_version])
REFERENCES [dbo].[Document] ([document_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Document] CHECK CONSTRAINT [FK_TrainingCode_Document]
GO
ALTER TABLE [dbo].[TrainingCode_Document]  WITH CHECK ADD  CONSTRAINT [FK_TrainingCodeDocument_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Document] CHECK CONSTRAINT [FK_TrainingCodeDocument_TrainingCode]
GO
ALTER TABLE [dbo].[TrainingCode_Stage]  WITH CHECK ADD  CONSTRAINT [FK__TrainingC__stage__1C873BEC] FOREIGN KEY([stage_id])
REFERENCES [dbo].[Stage] ([stage_id])
GO
ALTER TABLE [dbo].[TrainingCode_Stage] CHECK CONSTRAINT [FK__TrainingC__stage__1C873BEC]
GO
ALTER TABLE [dbo].[TrainingCode_Stage]  WITH CHECK ADD  CONSTRAINT [FK_TrainingStage_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Stage] CHECK CONSTRAINT [FK_TrainingStage_TrainingCode]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_users_deparment] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_users_deparment]
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([employee_id]<>'0' AND [employee_id]<>''))
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([nscl_point]>=(0)))
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([year]>(0) AND [year]<>''))
GO
USE [master]
GO
ALTER DATABASE [SVI_TRN] SET  READ_WRITE 
GO
