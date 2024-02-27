-- Crear la base de datos ChallengeTechFullStackN5DB 
CREATE DATABASE ChallengeTechFullStackN5DB;
GO

-- Crear el login n5admin con la contraseña inicial "1234-admin*"
CREATE LOGIN n5admin WITH PASSWORD = 'n5p123*3377-n5+admin';
GO

-- Crear el usuario n5admin en la base de datos ChallengeTechFullStackN5DB
USE ChallengeTechFullStackN5DB;
CREATE USER n5admin FOR LOGIN n5admin;
GO

-- Crear el esquema n5 en la base de datos ChallengeTechFullStackN5DB
CREATE SCHEMA n5;
GO

-- Asignar el esquema n5 al usuario n5admin
ALTER AUTHORIZATION ON SCHEMA::n5 TO n5admin;
GO

-- Asignar permisos de superusuario a n5admin
USE ChallengeTechFullStackN5DB;
ALTER ROLE db_owner ADD MEMBER n5admin;
GO

-- Hacer a n5admin propietario de la base de datos ChallengeTechFullStackN5DB
ALTER AUTHORIZATION ON DATABASE::ChallengeTechFullStackN5DB TO n5admin;
GO

USE [ChallengeTechFullStackN5DB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [n5].[Permisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpleado] [text] NOT NULL,
	[ApellidoEmpleado] [text] NOT NULL,
	[TipoPermiso] [int] NOT NULL,
	[FechaPermiso] [date] NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique ID (ID único)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ForeName (Nombre Empleado)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'NombreEmpleado'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastName (Apellido Empleado)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'ApellidoEmpleado'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission Type (Tipo de Permiso)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'TipoPermiso'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission granted on date (Fecha de Permiso)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'FechaPermiso'
GO

USE [ChallengeTechFullStackN5DB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [n5].[TipoPermisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [text] NOT NULL,
 CONSTRAINT [PK_TipoPermisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique ID (Identificador único)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'TipoPermisos', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission description (Descripción del permiso)' , @level0type=N'SCHEMA',@level0name=N'n5', @level1type=N'TABLE',@level1name=N'TipoPermisos', @level2type=N'COLUMN',@level2name=N'Description'
GO

ALTER TABLE [n5].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_TipoPermisos] FOREIGN KEY([TipoPermiso])
REFERENCES [n5].[TipoPermisos] ([Id])
GO

ALTER TABLE [n5].[Permisos] CHECK CONSTRAINT [FK_Permisos_TipoPermisos]
GO

USE ChallengeTechFullStackN5DB;

INSERT INTO [n5].[TipoPermisos] ([Description])
VALUES ('Administrador'), ('Operador'), ('Cliente');

USE ChallengeTechFullStackN5DB;

INSERT INTO [n5].[Permisos] ([NombreEmpleado], [ApellidoEmpleado], [TipoPermiso], [FechaPermiso])
VALUES 
('John', 'Sandoval', 1, '2024-02-25'),
('Carlos', 'Peréz', 1, '2024-02-25'),
('Armando', 'Casas', 2, '2024-02-25'),
('Paulina', 'Rubiano', 3, '2024-02-25');
