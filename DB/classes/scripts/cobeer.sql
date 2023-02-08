-- Script de creación de la base de datos de CoBeer
-- Versión: 20220208

drop schema if exists cobeer;
create schema cobeer;
use cobeer;

-- Tabla de departamento
drop table if exists departamento;
create table departamento(
idDep int unsigned AUTO_INCREMENT PRIMARY KEY, 
nombre varchar (50) not null,
descripcion varchar(255),
indBaja bit default 0
);

-- Tabla de usuarios
drop table if exists usuario;
create table usuario (
idUsuario int unsigned AUTO_INCREMENT PRIMARY KEY,  
nombre varchar(50),
apellido1 varchar(50),
apellido2 varchar(50),
contraseña varchar(50), 
idDep int unsigned not null,
indBaja bit default 0,
constraint pk_usuarios_departamentos
		 foreign key(idDep)
		 references departamento(idDep)
);

-- Tabla de articulo
drop table if exists articulo;
create table articulo(
idArt int unsigned not null AUTO_INCREMENT PRIMARY KEY, 
titulo varchar(50) not null,
descripcion varchar(255), 
autor varchar(50),
texto text(1500), -- Revisar si el tamaño es adecuado
FechaDeCreacion datetime,
idDep int unsigned not null,
tags varchar(255), -- Comma-separated values
indBaja bit default 0,
constraint pk_articulos_departamentos
     foreign key(idDep)
     references departamento(idDep)
);

-- Tabla de recurso
drop table if exists recurso;
create table recurso (
idRecurs  int unsigned not null AUTO_INCREMENT PRIMARY KEY,  
url varchar(255) not null, 
idArt int unsigned not null,
indBaja bit default 0,
constraint pk_recursos_articulos
	   foreign key(idArt)
       references articulo(idArt)
);
