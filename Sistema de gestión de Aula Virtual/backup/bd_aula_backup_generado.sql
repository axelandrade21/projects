USE [master]
GO
/****** Object:  Database [bdaula]    Script Date: 29/11/2022 19:34:14 ******/
CREATE DATABASE [bdaula]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdaula', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdaula.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bdaula_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdaula_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bdaula] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdaula].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdaula] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdaula] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdaula] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdaula] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdaula] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdaula] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdaula] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdaula] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdaula] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdaula] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdaula] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdaula] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdaula] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdaula] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdaula] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bdaula] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdaula] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdaula] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdaula] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdaula] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdaula] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdaula] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdaula] SET RECOVERY FULL 
GO
ALTER DATABASE [bdaula] SET  MULTI_USER 
GO
ALTER DATABASE [bdaula] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdaula] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdaula] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdaula] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bdaula] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bdaula] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bdaula', N'ON'
GO
ALTER DATABASE [bdaula] SET QUERY_STORE = OFF
GO
USE [bdaula]
GO
/****** Object:  Table [dbo].[tbestudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbestudiante](
	[estudianteid] [int] NOT NULL,
	[estudiantenombre] [varchar](255) NULL,
	[estudiantecedula] [int] NULL,
	[estudianteedad] [int] NULL,
	[estudiantedireccion] [varchar](255) NULL,
	[estudianteusuarioid] [int] NULL,
	[estudiantecarreraid] [int] NULL,
	[estudiantebecaid] [int] NULL,
 CONSTRAINT [pk_estudiante] PRIMARY KEY CLUSTERED 
(
	[estudianteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[verTotalEstudiantes]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[verTotalEstudiantes] AS
	SELECT COUNT(*) AS Total FROM tbestudiante
GO
/****** Object:  Table [dbo].[tbprofesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprofesor](
	[profesorid] [int] NOT NULL,
	[profesornombre] [varchar](255) NULL,
	[profesorcedula] [int] NULL,
	[profesoredad] [int] NULL,
	[profesorsexo] [char](1) NULL,
	[profesorexperiencia] [int] NULL,
	[profesorgrado] [varchar](50) NULL,
	[profesorusuarioid] [int] NULL,
 CONSTRAINT [pk_profesor] PRIMARY KEY CLUSTERED 
(
	[profesorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[verTotalProfesores]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[verTotalProfesores] AS
	SELECT COUNT(*) AS Total FROM tbprofesor
GO
/****** Object:  Table [dbo].[tbcurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcurso](
	[cursoid] [int] NOT NULL,
	[cursosigla] [varchar](10) NULL,
	[cursonombre] [varchar](150) NULL,
	[cursocupo] [int] NULL,
	[cursovigenciaid] [int] NULL,
	[cursocarreraid] [int] NULL,
	[cursoprofesorid] [int] NULL,
 CONSTRAINT [pk_curso] PRIMARY KEY CLUSTERED 
(
	[cursoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[verTotalCursos]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[verTotalCursos] AS
	SELECT COUNT(*) AS Total FROM tbcurso
GO
/****** Object:  Table [dbo].[tbasigestudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbasigestudiante](
	[asignacionid] [int] NOT NULL,
	[asignacionfecha] [date] NULL,
	[asignacionruta] [varchar](255) NULL,
	[asignaciondescripcion] [varchar](150) NULL,
	[asignacionnota] [int] NULL,
	[asignacionpaid] [int] NULL,
	[asignacionestudianteid] [int] NULL,
 CONSTRAINT [pk_asigest] PRIMARY KEY CLUSTERED 
(
	[asignacionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbasigprofesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbasigprofesor](
	[asignacionid] [int] NOT NULL,
	[asignacionfecha] [date] NULL,
	[asignacionruta] [varchar](255) NULL,
	[asignaciondescripcion] [varchar](255) NULL,
	[asignacionprofesorid] [int] NULL,
	[asignacioncursoid] [int] NULL,
 CONSTRAINT [pk_asigp] PRIMARY KEY CLUSTERED 
(
	[asignacionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbbeca]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbbeca](
	[becaid] [int] NOT NULL,
	[becatipo] [varchar](100) NULL,
 CONSTRAINT [pk_beca] PRIMARY KEY CLUSTERED 
(
	[becaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbcarrera]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcarrera](
	[carreraid] [int] NOT NULL,
	[carreranombre] [varchar](150) NULL,
 CONSTRAINT [pk_carrera] PRIMARY KEY CLUSTERED 
(
	[carreraid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbhistorialcurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbhistorialcurso](
	[historialid] [int] IDENTITY(1,1) NOT NULL,
	[historialcursoid] [int] NULL,
	[historialfecha] [date] NULL,
	[historialestado] [varchar](10) NULL,
	[historialciclo] [varchar](20) NULL,
 CONSTRAINT [pk_historial] PRIMARY KEY CLUSTERED 
(
	[historialid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbpepc]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbpepc](
	[epcid] [int] NOT NULL,
	[epcestudianteid] [int] NULL,
	[epccursoid] [int] NULL,
	[epcexamen1] [int] NULL,
	[epcexamen2] [int] NULL,
	[epcexamen3] [int] NULL,
	[epctarea1] [int] NULL,
	[epctarea2] [int] NULL,
	[epcprueba1] [int] NULL,
	[epcprueba2] [int] NULL,
	[epcciclo] [varchar](25) NULL,
	[epcanio] [int] NULL,
 CONSTRAINT [pk_epc] PRIMARY KEY CLUSTERED 
(
	[epcid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbrubrica]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbrubrica](
	[rubricaid] [int] NOT NULL,
	[epccursoid] [int] NULL,
	[epcexamen1] [int] NULL,
	[epcexamen2] [int] NULL,
	[epcexamen3] [int] NULL,
	[epctarea1] [int] NULL,
	[epctarea2] [int] NULL,
	[epcprueba1] [int] NULL,
	[epcprueba2] [int] NULL,
 CONSTRAINT [pk_epcrub] PRIMARY KEY CLUSTERED 
(
	[rubricaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtipousuario]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtipousuario](
	[tipoid] [int] NOT NULL,
	[tipodescripcion] [varchar](255) NULL,
 CONSTRAINT [pk_tipo] PRIMARY KEY CLUSTERED 
(
	[tipoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbusuario]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbusuario](
	[usuarioid] [int] NOT NULL,
	[usuarioidentidad] [int] NOT NULL,
	[usuariopassword] [varchar](255) NULL,
	[usuarioestado] [int] NOT NULL,
	[usuariotipo] [int] NOT NULL,
	[usuarioimgperfil] [varchar](255) NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[usuarioid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbvigencia]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvigencia](
	[vigenciaid] [int] NOT NULL,
	[vigenciadescripcion] [varchar](150) NULL,
 CONSTRAINT [pk_vigencia] PRIMARY KEY CLUSTERED 
(
	[vigenciaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbasigestudiante]  WITH CHECK ADD  CONSTRAINT [fk_asigestudiante] FOREIGN KEY([asignacionestudianteid])
REFERENCES [dbo].[tbestudiante] ([estudianteid])
GO
ALTER TABLE [dbo].[tbasigestudiante] CHECK CONSTRAINT [fk_asigestudiante]
GO
ALTER TABLE [dbo].[tbasigestudiante]  WITH CHECK ADD  CONSTRAINT [fk_asigprofesor] FOREIGN KEY([asignacionpaid])
REFERENCES [dbo].[tbasigprofesor] ([asignacionid])
GO
ALTER TABLE [dbo].[tbasigestudiante] CHECK CONSTRAINT [fk_asigprofesor]
GO
ALTER TABLE [dbo].[tbasigprofesor]  WITH CHECK ADD  CONSTRAINT [fk_curso] FOREIGN KEY([asignacioncursoid])
REFERENCES [dbo].[tbcurso] ([cursoid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbasigprofesor] CHECK CONSTRAINT [fk_curso]
GO
ALTER TABLE [dbo].[tbasigprofesor]  WITH CHECK ADD  CONSTRAINT [fk_profesor] FOREIGN KEY([asignacionprofesorid])
REFERENCES [dbo].[tbprofesor] ([profesorid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbasigprofesor] CHECK CONSTRAINT [fk_profesor]
GO
ALTER TABLE [dbo].[tbcurso]  WITH CHECK ADD  CONSTRAINT [fk_vigencia] FOREIGN KEY([cursovigenciaid])
REFERENCES [dbo].[tbvigencia] ([vigenciaid])
GO
ALTER TABLE [dbo].[tbcurso] CHECK CONSTRAINT [fk_vigencia]
GO
ALTER TABLE [dbo].[tbestudiante]  WITH CHECK ADD  CONSTRAINT [fk_beca] FOREIGN KEY([estudiantebecaid])
REFERENCES [dbo].[tbbeca] ([becaid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbestudiante] CHECK CONSTRAINT [fk_beca]
GO
ALTER TABLE [dbo].[tbestudiante]  WITH CHECK ADD  CONSTRAINT [fk_carrera] FOREIGN KEY([estudiantecarreraid])
REFERENCES [dbo].[tbcarrera] ([carreraid])
GO
ALTER TABLE [dbo].[tbestudiante] CHECK CONSTRAINT [fk_carrera]
GO
ALTER TABLE [dbo].[tbprofesor]  WITH CHECK ADD  CONSTRAINT [fk_usuario] FOREIGN KEY([profesorusuarioid])
REFERENCES [dbo].[tbusuario] ([usuarioid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbprofesor] CHECK CONSTRAINT [fk_usuario]
GO
ALTER TABLE [dbo].[tbrubrica]  WITH CHECK ADD  CONSTRAINT [fk_cursorub] FOREIGN KEY([epccursoid])
REFERENCES [dbo].[tbcurso] ([cursoid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbrubrica] CHECK CONSTRAINT [fk_cursorub]
GO
ALTER TABLE [dbo].[tbusuario]  WITH CHECK ADD  CONSTRAINT [fk_tipo] FOREIGN KEY([usuariotipo])
REFERENCES [dbo].[tbtipousuario] ([tipoid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbusuario] CHECK CONSTRAINT [fk_tipo]
GO
/****** Object:  StoredProcedure [dbo].[actualizarClaveUsuario]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizarClaveUsuario](
	@usuarioidentidad int,
	@usuarionuevaclave varchar(150)
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
				UPDATE tbusuario SET usuariopassword = @usuarionuevaclave, usuarioestado = 0 WHERE usuarioidentidad = @usuarioidentidad
			COMMIT
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			SELECT 'Ocurrió un error'
		END CATCH
	END
GO
/****** Object:  StoredProcedure [dbo].[actualizarCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizarCurso](
	@cursoid int,
	@cursovigenciaid int,
	@ciclo varchar(20)
)
AS
	
		BEGIN TRY
			BEGIN TRANSACTION
				update tbcurso set 		
				cursovigenciaid=@cursovigenciaid
				where cursoid=@cursoid;

				insert INTO tbhistorialcurso values (@cursoid,getdate(),'Finalizado',(SELECT DISTINCT epcciclo FROM tbpepc WHERE epccursoid = @cursoid AND epcanio =  YEAR(GETDATE()) AND epcciclo = @ciclo ))
			
				
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH	
	
GO
/****** Object:  StoredProcedure [dbo].[actualizarPerfilEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizarPerfilEstudiante](
	@estudiantecedula int,
	@usuarioid int,
	@img varchar(255)
)
AS
	BEGIN TRY
			BEGIN TRANSACTION
				UPDATE tbusuario SET usuarioimgperfil = @img WHERE usuarioidentidad = @estudiantecedula
				AND usuarioid = @usuarioid
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al actualizar' AS mensaje
		END CATCH	
GO
/****** Object:  StoredProcedure [dbo].[actualizarRubrica]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizarRubrica](	
	@rubricaid int,
	@cursoid int,
	@examen1 int,
	@examen2 int,
	@examen3 int,
	@tarea1 int,
	@tarea2 int,
	@prueba1 int,
	@prueba2 int
)
AS
	IF EXISTS(SELECT * FROM tbrubrica WHERE epccursoid = @cursoid)
		BEGIN TRY
			BEGIN TRANSACTION
				UPDATE tbrubrica SET epcexamen1 = @examen1, epcexamen2 = @examen2, epcexamen3 = @examen3, epctarea1 = @tarea1, epctarea2 = @tarea2,
				epcprueba1 = @prueba1, epcprueba2 = @prueba2 WHERE epccursoid = @cursoid AND rubricaid = @rubricaid;
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al actualizar' AS mensaje
		END CATCH	
	ELSE
		SELECT 'No existe esta rubrica' AS mensaje	
GO
/****** Object:  StoredProcedure [dbo].[actualizarRubrosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizarRubrosEstudiante](
	@rubricaid int,
	@estudiante int,
	@cursoid int,
	@examen1 int,
	@examen2 int,
	@examen3 int,
	@tarea1 int,
	@tarea2 int,
	@prueba1 int,
	@prueba2 int,
	@ciclo varchar(25),
	@anio int
)
AS
	IF EXISTS(SELECT * FROM tbpepc WHERE epccursoid = @cursoid AND epcestudianteid = @estudiante AND epcciclo = @ciclo AND epcanio = @anio)
		BEGIN TRY
			BEGIN TRANSACTION
				UPDATE tbpepc SET epcexamen1 = @examen1, epcexamen2 = @examen2, epcexamen3 = @examen3, epctarea1 = @tarea1, epctarea2 = @tarea2,
				epcprueba1 = @prueba1, epcprueba2 = @prueba2 WHERE epccursoid = @cursoid AND epcestudianteid = @estudiante AND epcciclo = @ciclo AND epcanio = @anio
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al actualizar' AS mensaje
		END CATCH	
	ELSE
		SELECT 'No existen estos rubros' AS mensaje	
GO
/****** Object:  StoredProcedure [dbo].[agregarAsignacionEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregarAsignacionEstudiante](
	@asignacionid int,
	@asignacionfecha date,
	@asignacionruta varchar(255),
	@asignaciondescripcion varchar(255),
	@asignacionnota int,
	@asignacionpaid int,
	@asignacionestudianteid int
)
AS
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbasigestudiante(asignacionid,asignacionfecha,asignacionruta,asignaciondescripcion,asignacionpaid,asignacionestudianteid)
				VALUES(@asignacionid,@asignacionfecha,@asignacionruta,@asignaciondescripcion,@asignacionpaid,@asignacionestudianteid)
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH	
	
GO
/****** Object:  StoredProcedure [dbo].[agregarAsignacionProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregarAsignacionProfesor](
	@asignacionid int,
	@asignacionfecha date,
	@asignacionruta varchar(255),
	@asignaciondescripcion varchar(255),
	@asignacionprofesorid int,
	@asignacioncursoid int
)
AS
	
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbasigprofesor(asignacionid,asignacionfecha,asignacionruta,asignaciondescripcion,asignacionprofesorid,asignacioncursoid)
				VALUES(@asignacionid,@asignacionfecha,@asignacionruta,@asignaciondescripcion,@asignacionprofesorid,@asignacioncursoid)
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH	
	
GO
/****** Object:  StoredProcedure [dbo].[agregarEstudiantesCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregarEstudiantesCurso](
	@epcid int,
	@estudianteid int,
	@cursoid int,
	@ciclo varchar(25),
	@anio int,
	@cantidadEstudiantes int
)
AS
	
	IF NOT EXISTS(SELECT * FROM tbpepc WHERE epcestudianteid = @estudianteid AND epccursoid = @cursoid AND epcciclo = @ciclo AND epcanio = @anio)
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbpepc (epcid,epcestudianteid,epccursoid,epcexamen1,epcexamen2, epcexamen3,epctarea1,epctarea2, epcprueba1,epcprueba2,epcciclo,epcanio)
		VALUES(@epcid,@estudianteid,@cursoid,0,0,0,0,0,0,0,@ciclo,@anio);
			UPDATE tbcurso SET cursocupo = (cursocupo-@cantidadEstudiantes) WHERE cursoid = @cursoid
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH		
	ELSE
		SELECT 'Ya existe este estudiante matriculado a este curso' AS mensaje
GO
/****** Object:  StoredProcedure [dbo].[calificarAsignacionEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[calificarAsignacionEstudiante](
	@porcentaje int,
	@nota int,
	@cursoid int,
	@profesorid int,
	@estudianteid int,
	@ciclo varchar(25),
	@anio int,
	@tipoRubro int,
	@asignacionid int
)
AS
	IF EXISTS(SELECT * FROM tbpepc WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio)
		BEGIN TRY
			BEGIN TRANSACTION
				UPDATE tbasigestudiante SET asignacionnota = @nota WHERE asignacionestudianteid = @estudianteid AND asignacionpaid= @asignacionid
				IF (@tipoRubro = 1)
					BEGIN
						UPDATE tbpepc SET epcexamen1 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 2)
					BEGIN
						UPDATE tbpepc SET epcexamen2 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 3)
					BEGIN
						UPDATE tbpepc SET epcexamen3 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 4)
					BEGIN
						UPDATE tbpepc SET epctarea1 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 5)
					BEGIN
						UPDATE tbpepc SET epctarea2 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 6)
					BEGIN
						UPDATE tbpepc SET epcprueba1 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				ELSE IF (@tipoRubro = 7)
					BEGIN
						UPDATE tbpepc SET epcprueba2 = @porcentaje WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid AND epcciclo = @ciclo AND epcanio = @anio
					END
				
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al actualizar' AS mensaje
		END CATCH	
	ELSE
		SELECT 'No existen estos rubros' AS mensaje	
GO
/****** Object:  StoredProcedure [dbo].[eliminarAsignacionProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarAsignacionProfesor](
	@asignacionid int
)
AS
	BEGIN
		DELETE FROM tbasigprofesor WHERE asignacionid = @asignacionid
		DELETE FROM tbasigestudiante WHERE asignacionpaid = @asignacionid
	END
GO
/****** Object:  StoredProcedure [dbo].[eliminarCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[eliminarCurso](
	@cursoid int
)
as
	begin
		delete from tbcurso where cursoid = @cursoid
	end

GO
/****** Object:  StoredProcedure [dbo].[eliminarEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarEstudiante](
	@estudianteid int
)
as
	begin
		DELETE FROM tbusuario WHERE usuarioid = (SELECT estudianteusuarioid FROM tbestudiante WHERE estudianteid = @estudianteid)
		delete from tbestudiante where estudianteid = @estudianteid
	end

GO
/****** Object:  StoredProcedure [dbo].[eliminarEstudianteCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarEstudianteCurso](
	@estudianteid int,
	@cursoid int
)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
				DECLARE @epcid AS INT
				SET @epcid = (SELECT epcid FROM tbpepc WHERE epccursoid = @cursoid AND epcestudianteid = @estudianteid)
				DELETE FROM tbpepc WHERE epcid = @epcid
				UPDATE tbcurso SET cursocupo = (cursocupo+1) WHERE cursoid = @cursoid
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al eliminar' AS mensaje
		END CATCH	
	END
GO
/****** Object:  StoredProcedure [dbo].[eliminarProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[eliminarProfesor](
	@profesorid int
)
as
	begin
		DELETE FROM tbusuario WHERE usuarioid = (SELECT profesorusuarioid FROM tbprofesor WHERE profesorid = @profesorid)
		delete from tbprofesor where profesorid = @profesorid
		
	end

GO
/****** Object:  StoredProcedure [dbo].[insertarCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarCurso](
	@cursoid int,
	@cursosigla varchar(10),
	@cursonombre varchar(100),
	@cursocupo int,
	@cursovigencia int,
	@cursocarreraid int,
	@cursoprofesorid int

)
AS
	
	IF NOT EXISTS(SELECT * FROM tbcurso WHERE cursosigla = @cursosigla)
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbcurso(cursoid,cursosigla,cursonombre,cursocupo,cursovigenciaid, cursocarreraid, cursoprofesorid) VALUES(@cursoid,@cursosigla,@cursonombre,@cursocupo,@cursovigencia,@cursocarreraid,@cursoprofesorid); 
			
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH		
	ELSE
		BEGIN
			SELECT 'Ya existe este curso' AS mensaje
		END
GO
/****** Object:  StoredProcedure [dbo].[insertarEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarEstudiante](
	@estudianteid int,
	@estudiantenombre varchar(255),
@estudiantecedula int,
@estudianteedad int,
@estudiantedireccion varchar(255),
@estudianteusuarioid int,
@estudiantecarreraid int,
@estudiantebecaid int
)
AS
	
	IF NOT EXISTS(SELECT * FROM tbestudiante WHERE estudiantecedula = @estudiantecedula)
		BEGIN TRY
			BEGIN TRANSACTION
				insert into tbestudiante (estudianteid,estudiantenombre,estudiantecedula,estudianteedad,estudiantedireccion,estudianteusuarioid,estudiantecarreraid,estudiantebecaid)
		values (@estudianteid,@estudiantenombre,@estudiantecedula,@estudianteedad,@estudiantedireccion,@estudianteusuarioid,@estudiantecarreraid,@estudiantebecaid)
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH		
	ELSE
		SELECT 'Ya existe este estudiante' AS mensaje
GO
/****** Object:  StoredProcedure [dbo].[insertarProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarProfesor](
	@profesorid int,
	@profesornombre varchar(255),
	@profesorcedula int,
	@profesoredad int,
	@profesorsexo char,
	@profesorexperiencia int,
	@profesorgrado varchar(255),
	@profesorusuarioid int
)
AS
	
	IF NOT EXISTS(SELECT * FROM tbprofesor WHERE profesorcedula = @profesorcedula)
		BEGIN TRY
			BEGIN TRANSACTION
				insert into tbprofesor (profesorid,profesornombre,profesorcedula,profesoredad,profesorsexo,profesorexperiencia,profesorgrado,profesorusuarioid)
				values (@profesorid,@profesornombre,@profesorcedula,@profesoredad,@profesorsexo,@profesorexperiencia,@profesorgrado,@profesorusuarioid)
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH		
	ELSE
		SELECT 'Ya existe este estudiante' AS mensaje
GO
/****** Object:  StoredProcedure [dbo].[insertarRubrica]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarRubrica](
	@rubricaid int,
	@cursoid int,
	@examen1 int,
	@examen2 int,
	@examen3 int,
	@tarea1 int,
	@tarea2 int,
	@prueba1 int,
	@prueba2 int
)
AS
	
	IF NOT EXISTS(SELECT * FROM tbrubrica WHERE epccursoid = @cursoid)
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbrubrica(rubricaid, epccursoid, epcexamen1, epcexamen2, epcexamen3, epctarea1, epctarea2, epcprueba1, epcprueba2) 
				VALUES(@rubricaid,@cursoid, @examen1, @examen2,@examen3,@tarea1,@tarea2,@prueba1, @prueba2);
				
			COMMIT			
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH		
	ELSE
		SELECT 'Ya existe esta rubrica' AS mensaje
GO
/****** Object:  StoredProcedure [dbo].[insertarUsuario]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarUsuario](
	@usuarioid int,
	@usuariocedula int,
	@usuariopassword varchar(255),
	@usuarioestado int,
	@usuariotipo int,
	@usuarioimagen varchar(255)
)
AS
	
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO tbusuario(usuarioid,usuarioidentidad,usuariopassword,usuarioestado,usuariotipo,usuarioimgperfil)
				VALUES(@usuarioid,@usuariocedula,@usuariopassword,@usuarioestado,@usuariotipo,@usuarioimagen)
			
			COMMIT	
		END TRY
		BEGIN CATCH
				ROLLBACK TRANSACTION	
				SELECT 'Error al agregar' AS mensaje
		END CATCH	
	
GO
/****** Object:  StoredProcedure [dbo].[modificarCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[modificarCurso](
@cursoid int,
@cursosigla varchar(10),
@cursonombre varchar(255),
@cursocupo int,
@cursovigenciaid int,
@cursocarreraid int,
@cursoprofesorid int
)
as
	begin
		update tbcurso set 		
		cursosigla=@cursosigla,
		cursonombre=@cursonombre,
		cursocupo=@cursocupo,
		cursovigenciaid=@cursovigenciaid,
		cursocarreraid=@cursocarreraid,
		cursoprofesorid=@cursoprofesorid
		where cursoid=@cursoid;
	end
GO
/****** Object:  StoredProcedure [dbo].[modificarEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificarEstudiante](
@estudianteid int,
@estudiantenombre varchar(255),
@estudiantecedula int,
@estudianteedad int,
@estudiantedireccion varchar(225),
@estudiantecarreraid int,
@estudiantebecaid int
)
as
	begin
		update tbestudiante set 		
		estudiantenombre=@estudiantenombre,
		estudiantecedula=@estudiantecedula,
		estudianteedad=@estudianteedad,
		estudiantedireccion=@estudiantedireccion,
		estudiantecarreraid=@estudiantecarreraid,
		estudiantebecaid=@estudiantebecaid
		where estudianteid=@estudianteid;
	end
GO
/****** Object:  StoredProcedure [dbo].[modificarProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificarProfesor](
@profesorid int,
@profesornombre varchar(255),
@profesorcedula int,
@profesoredad int,
@profesorsexo char(10),
@profesorexperiencia int,
@profesorgrado varchar(50)
)
as
	begin
		update tbprofesor set 		
		profesornombre=@profesornombre,
		profesorcedula=@profesorcedula,
		profesoredad=@profesoredad,
		profesorsexo=@profesorsexo,
		profesorexperiencia=@profesorexperiencia,
		profesorgrado=@profesorgrado
		where profesorid=@profesorid;
	end
GO
/****** Object:  StoredProcedure [dbo].[obtenerAsignacionesCursoEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerAsignacionesCursoEstudiante](
	@cursoid int,
	@profesorid int
)
AS
	BEGIN
		SELECT * FROM tbasigprofesor AS AsignacionProfesor WHERE AsignacionProfesor.asignacioncursoid = @cursoid AND AsignacionProfesor.asignacionprofesorid = @profesorid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerAsignacionesPorEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerAsignacionesPorEstudiante](
	@estudianteid int,
	@cursoid int
)
AS
	BEGIN
		SELECT AsignacionEstudiante.asignacionid, AsignacionEstudiante.asignacionfecha, AsignacionEstudiante.asignacionruta,
AsignacionEstudiante.asignaciondescripcion, AsignacionEstudiante.asignacionnota
FROM tbasigestudiante AS AsignacionEstudiante 
INNER JOIN tbpepc AS Matricula ON AsignacionEstudiante.asignacionestudianteid = Matricula.epcestudianteid
INNER JOIN tbcurso AS Curso ON Curso.cursoid = Matricula.epccursoid 
WHERE AsignacionEstudiante.asignacionestudianteid = @estudianteid AND Curso.cursoid = @cursoid 
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerAsignacionesProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerAsignacionesProfesor](
	@profesorid int,
	@cursoid int
)
AS
	BEGIN
		SELECT * FROM tbasigprofesor WHERE asignacionprofesorid = @profesorid AND asignacioncursoid = @cursoid;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerAsignacionesSubidas]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerAsignacionesSubidas](
	@asignacionid int,
	@cursoid int
)
AS
	BEGIN
		SELECT AsignacionEstudiante.asignacionid, AsignacionEstudiante.asignacionfecha, AsignacionEstudiante.asignacionruta, AsignacionEstudiante.asignaciondescripcion, AsignacionEstudiante.asignacionnota, AsignacionEstudiante.asignacionpaid, Estudiante.estudiantenombre, Estudiante.estudianteid, Curso.cursoid FROM tbasigestudiante AS AsignacionEstudiante 
		INNER JOIN tbasigprofesor AS AsignacionProfesor ON AsignacionEstudiante.asignacionpaid = AsignacionProfesor.asignacionid
		INNER JOIN tbestudiante AS Estudiante ON Estudiante.estudianteid = AsignacionEstudiante.asignacionestudianteid
		INNER JOIN tbcurso AS Curso ON AsignacionProfesor.asignacioncursoid = Curso.cursoid
		WHERE AsignacionEstudiante.asignacionpaid = @asignacionid AND AsignacionProfesor.asignacioncursoid = @cursoid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerAvatarEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerAvatarEstudiante](
	@estudiantecedula int
)
AS
	BEGIN
		SELECT usuarioimgperfil FROM tbusuario WHERE usuarioidentidad = @estudiantecedula
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerBecas]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerBecas]
as
	select * from tbbeca

GO
/****** Object:  StoredProcedure [dbo].[obtenerCarreraNombre]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCarreraNombre](
	@carreraid int
)
AS
	BEGIN
		SELECT carreranombre FROM tbcarrera WHERE carreraid = @carreraid;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCarreras]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCarreras]
AS
	BEGIN
		SELECT * FROM tbcarrera;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCupoCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCupoCurso](
	@cursoid int
)
AS
	BEGIN
		SELECT cursocupo FROM tbcurso WHERE cursoid = @cursoid;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCurso](
	@cursoid int
)
AS
	BEGIN
		SELECT * FROM tbcurso WHERE cursoid = @cursoid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCursos]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCursos]
AS
	BEGIN
		select * from tbcurso;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCursosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCursosEstudiante](
	@estudianteid int
)
AS
	BEGIN
		SELECT * FROM tbcurso AS Curso INNER JOIN tbpepc AS Matricula ON Curso.cursoid = Matricula.epccursoid 
		INNER JOIN tbestudiante AS Estudiante ON Estudiante.estudianteid = Matricula.epcestudianteid
		WHERE Estudiante.estudianteid = @estudianteid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCursosPorProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCursosPorProfesor](
	@profesorid int
)
AS
	BEGIN
		SELECT COUNT(Matricula.epcestudianteid) AS Total, Curso.cursonombre, Curso.cursosigla, Matricula.epcciclo
FROM tbpepc AS Matricula
INNER JOIN  tbcurso AS Curso
ON Matricula.epccursoid = Curso.cursoid
WHERE Curso.cursoprofesorid = @profesorid
GROUP BY Curso.cursonombre, Curso.cursosigla, Matricula.epcciclo

	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerCursosProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCursosProfesor](
	@profesorid int
)
AS
	BEGIN
		SELECT * FROM tbcurso WHERE cursoprofesorid = @profesorid AND cursovigenciaid = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerDatosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerDatosEstudiante](
	@cedula int
)
AS
	BEGIN
		SELECT * FROM tbestudiante WHERE estudiantecedula = @cedula
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerDatosProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerDatosProfesor](
	
	@profesorcedula int

)
AS
	BEGIN
		SELECT * FROM tbprofesor WHERE profesorcedula = @profesorcedula;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerDatosProfesorPorId]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerDatosProfesorPorId](
	@profesorid int
)
AS
	BEGIN
		SELECT * FROM tbprofesor WHERE profesorid = @profesorid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerDatosUsuario]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerDatosUsuario](
	@usuarioidentidad int,
	@usuariopassword varchar(100)
)
AS
	BEGIN
		SELECT * FROM tbusuario WHERE usuarioidentidad = @usuarioidentidad AND usuariopassword = @usuariopassword
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerDesgloseNotaEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerDesgloseNotaEstudiante](
	@estudianteid int,
	@cursoid int
)
AS
	BEGIN
		SELECT * FROM tbcurso AS Curso INNER JOIN tbpepc AS Matricula ON Curso.cursoid = Matricula.epccursoid 
		INNER JOIN tbestudiante AS Estudiante ON Estudiante.estudianteid = Matricula.epcestudianteid
		WHERE Estudiante.estudianteid = @estudianteid AND Curso.cursoid = @cursoid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerEstudiantesCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerEstudiantesCurso](
	@profesorid int,
	@cursoid int

)
AS
	BEGIN
		SELECT Estudiante.estudianteid, Estudiante.estudiantecedula,Estudiante.estudiantenombre FROM tbestudiante AS Estudiante INNER JOIN
tbpepc AS Matricula ON Estudiante.estudianteid = Matricula.epcestudianteid INNER JOIN tbcurso AS Curso ON Matricula.epccursoid = Curso.cursoid
WHERE Matricula.epccursoid = @cursoid AND Curso.cursoprofesorid = @profesorid
		
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerEstudiantesMatriculadosCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[obtenerEstudiantesMatriculadosCurso](
	@cursoid int
)
AS
	BEGIN
		SELECT Estudiante.estudiantenombre, Estudiante.estudiantecedula FROM tbpepc AS Matricula 
INNER JOIN tbestudiante AS Estudiante ON Matricula.epcestudianteid = Estudiante.estudianteid
WHERE Matricula.epccursoid = @cursoid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerEstudiantesSinCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerEstudiantesSinCurso](
	@cursoid int,
	@profesorid int,
	@ciclo varchar(25),
	@anio int,
	@carreraid int
)
AS
	BEGIN
		SELECT Estudiante.estudianteid, Estudiante.estudiantenombre FROM tbestudiante AS Estudiante WHERE estudianteid NOT IN
		(SELECT Matricula.epcestudianteid FROM tbpepc AS Matricula INNER JOIN tbcurso AS Curso ON Matricula.epccursoid = Curso.cursoid WHERE
		Curso.cursoid = @cursoid AND Matricula.epcciclo = @ciclo AND Matricula.epcanio = @anio AND Curso.cursoprofesorid = @profesorid AND Estudiante.estudiantecarreraid = @carreraid)
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerHistorialCursosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerHistorialCursosEstudiante](
	 @estudianteid int
)
AS 
	BEGIN
		SELECT Curso.cursosigla,Curso.cursonombre,Matricula.epcciclo, Matricula.epcanio, Vigencia.vigenciadescripcion, (Matricula.epcexamen1
+Matricula.epcexamen2+Matricula.epcexamen3+Matricula.epctarea1+Matricula.epctarea2+Matricula.epcprueba1+Matricula.epcprueba2) AS Nota FROM tbpepc AS Matricula 
INNER JOIN tbcurso AS Curso ON Matricula.epccursoid = Curso.cursoid
INNER JOIN tbvigencia AS Vigencia ON Vigencia.vigenciaid = Curso.cursovigenciaid
WHERE Matricula.epcestudianteid = @estudianteid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerHistorialCursosProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerHistorialCursosProfesor](
	@profesorid int
)
AS
	BEGIN
		SELECT DISTINCT Curso.cursosigla,Curso.cursonombre,Asignado.epcciclo,Asignado.epcanio,Vigencia.vigenciadescripcion  FROM tbcurso AS Curso
		LEFT JOIN tbprofesor AS Profesor ON Curso.cursoprofesorid = Profesor.profesorid
		LEFT JOIN tbpepc AS Asignado ON Asignado.epccursoid = Curso.cursoid
		INNER JOIN tbvigencia AS Vigencia ON Curso.cursovigenciaid = Vigencia.vigenciaid
		WHERE Profesor.profesorid = @profesorid

		
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerProfesores]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerProfesores]
as
select * from tbprofesor

GO
/****** Object:  StoredProcedure [dbo].[obtenerRubricaCurso]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerRubricaCurso](
	@cursoid int

)
AS
	BEGIN
		SELECT * FROM tbrubrica WHERE epccursoid = @cursoid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerRubrosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerRubrosEstudiante](
	@estudianteid int,
	@cursoid int,
	@ciclo varchar(25),
	@anio int
)
AS
	BEGIN
		SELECT epcid, epcexamen1, epcexamen2, epcexamen3, epctarea1, epctarea2, epcprueba1, epcprueba2 FROM tbpepc WHERE epcestudianteid = @estudianteid
		AND epccursoid = @cursoid AND epcciclo = @ciclo AND epcanio = @anio
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTiempoRestanteAsignacionDias]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTiempoRestanteAsignacionDias](
	@asignacionid int,
	@fecha date
)
AS
	BEGIN
		SELECT DATEDIFF(day, (SELECT asignacionfecha FROM tbasigprofesor WHERE asignacionid = @asignacionid), @fecha) AS tiempoRestanteDias;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTiempoRestanteAsignacionHoras]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTiempoRestanteAsignacionHoras](
	@asignacionid int,
	@fecha date
)
AS
	BEGIN
		SELECT DATEDIFF(hour, (SELECT asignacionfecha FROM tbasigprofesor WHERE asignacionid = 13), '2022/11/14') AS tiempoRestanteHoras;
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTipoBecas]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerTipoBecas]
(
	@tipobeca int
)
as
	select becatipo from tbbeca WHERE becaid = @tipobeca

GO
/****** Object:  StoredProcedure [dbo].[obtenerTipoCarreras]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerTipoCarreras](
	@tipoid int
)
as
	select carreranombre from tbcarrera WHERE carreraid = @tipoid

GO
/****** Object:  StoredProcedure [dbo].[obtenerTipoVigencias]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerTipoVigencias](
	@vigenciaid int
)
as
select vigenciadescripcion from tbvigencia WHERE vigenciaid = @vigenciaid

GO
/****** Object:  StoredProcedure [dbo].[obtenerTotalCursosEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTotalCursosEstudiante](
	@estudianteid int
)
AS
	BEGIN
		SELECT COUNT(*) FROM tbcurso AS Curso INNER JOIN tbpepc AS Matricula ON Curso.cursoid = Matricula.epccursoid 
		INNER JOIN tbestudiante AS Estudiante ON Estudiante.estudianteid = Matricula.epcestudianteid
		WHERE Estudiante.estudianteid = @estudianteid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTotalCursosImpartidos]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTotalCursosImpartidos](
	@profesorid int
)
AS
	BEGIN
		SELECT * FROM tbcurso WHERE cursoprofesorid = @profesorid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTotalCursosPaginas]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTotalCursosPaginas](
	@profesorid int,
	@numeroPagina int,
	@paginasTotales int

)
AS
	BEGIN
		SELECT * FROM tbcurso WHERE cursoprofesorid = @profesorid AND cursovigenciaid = 1 ORDER BY cursoid  OFFSET (@numeroPagina-1)*@paginasTotales ROWS
FETCH NEXT @paginasTotales ROWS ONLY
		
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTotalCursosPaginasEstudiante]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTotalCursosPaginasEstudiante](
	@estudianteid int,
	@numeroPagina int,
	@paginasTotales int

)
AS
	BEGIN
		SELECT * FROM tbcurso AS Curso INNER JOIN tbpepc AS Matricula ON Curso.cursoid = Matricula.epccursoid 
		INNER JOIN tbestudiante AS Estudiante ON Estudiante.estudianteid = Matricula.epcestudianteid
		WHERE Estudiante.estudianteid = @estudianteid ORDER BY Curso.cursoid  OFFSET (@numeroPagina-1)*@paginasTotales ROWS
		FETCH NEXT @paginasTotales ROWS ONLY		
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerTotalCursosProfesor]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTotalCursosProfesor](
	@profesorid int
)
AS
	BEGIN
		SELECT COUNT(cursoid) AS Total FROM tbcurso WHERE cursoprofesorid = @profesorid
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerUsuarios]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerUsuarios]
AS
    BEGIN
	    SELECT * FROM tbusuario
	END
GO
/****** Object:  StoredProcedure [dbo].[obtenerVigencias]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerVigencias]
AS
	BEGIN
		SELECT * FROM tbvigencia;
	END
GO
/****** Object:  StoredProcedure [dbo].[verificarExistenciaAsignacionSubida]    Script Date: 29/11/2022 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[verificarExistenciaAsignacionSubida](
	@estudianteid int,
	@cursoid int,
	@asignacionid int
)
AS
	BEGIN
		SELECT COUNT(*) AS Total
		FROM tbasigestudiante AS AsignacionEstudiante 
		INNER JOIN tbpepc AS Matricula ON AsignacionEstudiante.asignacionestudianteid = Matricula.epcestudianteid
		INNER JOIN tbcurso AS Curso ON Curso.cursoid = Matricula.epccursoid 
		WHERE AsignacionEstudiante.asignacionestudianteid = @estudianteid AND Curso.cursoid = @cursoid AND AsignacionEstudiante.asignacionpaid = @asignacionid
	END
GO
USE [master]
GO
ALTER DATABASE [bdaula] SET  READ_WRITE 
GO
