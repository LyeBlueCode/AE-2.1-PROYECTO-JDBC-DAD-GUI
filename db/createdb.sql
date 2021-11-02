 DROP DATABASE VideoJuegos;

CREATE DATABASE VideoJuegos;


USE VideoJuegos;


--
-- Table structure for table 'Cliente'
--
CREATE TABLE Cliente (
  id INT NOT NULL primary key, 
   Nombre   VARCHAR(255), 
   Email   VARCHAR(255), 
   FechaNacimiento   DATETIME, 
   FechaRegistro   DATETIME
);

--
-- Table structure for table 'Desarrollador'
--
CREATE TABLE  Desarrollador   (
   IdDesarrollador   INT NOT NULL primary key, 
   Desarrollador   VARCHAR(255),
   Pais VARCHAR(255)
);

--
-- Table structure for table 'Distribuidor'
--
CREATE TABLE  Distribuidor   (
   IdDistribuidor   INT NOT NULL primary key, 
   Distribuidor   VARCHAR(255)
);
--
-- Table structure for table 'Juego'
--
CREATE TABLE  Juego   (
   IdJuego   INT NOT NULL primary key, 
   Juego   VARCHAR(255), 
   Descripcion VARCHAR(255),
   FechaPublicacion DATE,
   IdTipo   INT
);
--
-- Table structure for table 'JuegoPlataforma'
--
CREATE TABLE  JuegoPlataforma   (
   Id   INT NOT NULL primary key, 
   IdJuego   INT, 
   IdPlataforma   INT, 
   IdDistribuidor   INT, 
   IdDesarrollador   INT
);
--
-- Table structure for table 'Plataforma'
--
CREATE TABLE  Plataforma   (
   IdPlataforma   INT NOT NULL primary key, 
   Plataforma   VARCHAR(255)
);
--
-- Table structure for table 'Puntuacion'
--
CREATE TABLE  Puntuacion   (
   Id   INT NOT NULL primary key, 
   Idcliente   INT, 
   idjuegoplataforma   INT, 
   Puntuacion   INT, 
   Fecha   DATETIME
);
--
-- Table structure for table 'Tipo'
--
CREATE TABLE  Tipo   (
   IdTipo   INT NOT NULL primary key, 
   Tipo   VARCHAR(255)
);

--
-- Dumping data for table 'Cliente'
--

INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (1, 'Raymond Velasquez', 'cursus@tempus.org', '1990-04-21 00:00:00', '2015-02-19 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (2, 'Merrill Leblanc', 'velit.eu.sem@imperdiet.org', '1985-10-28 00:00:00', '2011-05-03 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (3, 'Dean Santos', 'nunc@ametmetus.ca', '1977-06-20 00:00:00', '2013-12-23 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (4, 'Ryan Hooper', 'Aenean@non.edu', '1997-10-18 00:00:00', '2005-05-27 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (5, 'John Mcknight', 'pharetra.Quisque@magnanec.com', '1965-12-07 00:00:00', '2015-04-12 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (6, 'John Watson', 'Nulla.facilisi.Sed@facilisislorem.edu', '1961-03-18 00:00:00', '2005-12-09 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (7, 'Lucian Pugh', 'ornare.tortor.at@primisin.org', '1972-09-03 00:00:00', '2008-04-28 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (8, 'Acton Mckay', 'quam.Pellentesque.habitant@neque.ca', '1995-03-14 00:00:00', '2014-10-30 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (9, 'Bevis Sosa', 'at@odiovel.ca', '1998-07-15 00:00:00', '2013-10-02 00:00:00');
INSERT INTO  Cliente   ( id  ,  Nombre  ,  Email  ,  FechaNacimiento  ,  FechaRegistro  ) VALUES (10, 'Zane Buckley', 'nisl.Quisque@eleifend.org', '1999-09-20 00:00:00', '2013-02-19 00:00:00');

--
-- Dumping data for table 'Desarrollador'
--

INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (1, 'Microsoft', 'Estados Unidos de América');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais ) VALUES (2, 'Blizard', 'Estados Unidos de América');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (3, 'Sony', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (4, 'Konami', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (5, 'SquarSoft', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (6, 'Enix', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (7, 'Atlus', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (8, 'Capcom', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (9, 'SNK', 'Japón');
INSERT INTO  Desarrollador   ( IdDesarrollador  ,  Desarrollador, Pais  ) VALUES (10, 'RedHook', 'China');


--
-- Dumping data for table 'Juego'
--

INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (1, '0 Day Attack on Earth', 'La Tierra invadida por aliens', '2010-10-10', 2);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (2, '007 Legends', 'Cazadores de sombras', '2012-12-12', 2);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (3, '0D Beat Drop', 'Saltando celdas de colores', '2009-09-09', 7);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (4, '0x10c', 'Disfrutando de las matemáticas', '2015-11-11', 2);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (5, '1 vs 100', 'Ponte a prueba', '2015-11-11', 7);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (6, '1... 2... 3... KICK IT!', 'Un arte que no es para todos', '2004-02-12', 7);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (7, '1.000 Days (nombre provisional)', 'Early access', '2006-11-24', 3);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (8, '10 Minutes Solution', 'Sudoku 3D', '2007-03-25',7);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (9, '100 juegos de mesa', 'Todos los juegos de la infancia', '2005-11-21',7);
INSERT INTO  Juego   ( IdJuego  ,  Juego  , Descripcion, FechaPublicacion, IdTipo  ) VALUES (10, '100 Year War', 'Una guerra interminable', '2014-08-22', 8);


--
-- Dumping data for table 'Tipo'
--

INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (1, NULL);
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (2, 'Acción');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (3, 'Aventura');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (4, 'Conducción');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (5, 'Deportes');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (6, 'Estrategia');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (7, 'Otros');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (8, 'Rol');
INSERT INTO  Tipo   ( IdTipo  ,  Tipo  ) VALUES (9, 'Simulación');

--
-- Dumping data for table 'Plataforma'
--

INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (1, '3DS');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (2, 'Amiga');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (3, 'Android');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (4, 'Atari ST');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (5, 'C-64');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (6, 'CPC');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (7, 'DC');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (8, 'DS');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (9, 'GB');
INSERT INTO  Plataforma   ( IdPlataforma  ,  Plataforma  ) VALUES (10, 'GBA');


--
-- Dumping data for table 'Puntuacion'
--

INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (1, 1, 10, 10, '2013-03-22 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (2, 3, 9, 9, '2013-01-16 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (3, 5, 8, 7, '2013-04-17 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (4, 7, 7, 9, '2013-05-09 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (5, 9, 6, 5, '2013-03-19 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (6, 10, 5, 6, '2013-01-22 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (7, 8, 4, 4, '2013-04-23 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (8, 6, 3, 8, '2013-05-02 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (9, 4, 2, 7, '2013-05-19 00:00:00');
INSERT INTO  Puntuacion   ( Id  ,  Idcliente  ,  idjuegoplataforma  ,  Puntuacion  ,  Fecha  ) VALUES (10, 2, 1, 8, '2013-02-13 00:00:00');

--
-- Dumping data for table 'JuegoPlataforma'
--

INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (1, 1, 3, 8, 7);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (2, 2, 2, 2, 6);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (3, 2, 1, 7, 2);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (4, 2, 4, 4, 3);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (5, 2, 5, 5, 10);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (6, 3, 6, 8, 4);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (7, 4, 7, 9, 5);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (8, 5, 8, 10, 1);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (9, 6, 9, 3, 8);
INSERT INTO  JuegoPlataforma   ( Id  ,  IdJuego  ,  IdPlataforma  ,  IdDistribuidor  ,  IdDesarrollador  ) VALUES (10, 7, 10, 1, 9);


--
-- Dumping data for table 'Distribuidor'
--

INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (1, '10tacle Studios');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (2, '11 bit studios');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (3, '1C');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (4, '20th Century Fox Video Games');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (5, '2D Boy');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (6, '2K Games');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (7, '2K Play');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (8, '2K Sports');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (9, '345 Games');
INSERT INTO  Distribuidor   ( IdDistribuidor  ,  Distribuidor  ) VALUES (10, '3D Realms');

-- Claves externas

alter table puntuacion
add constraint FK_puntuacioncliente
foreign key (idcliente)
references cliente (id);


alter table puntuacion
add constraint FK_puntuacionjuegoplataforma
foreign key (idjuegoplataforma)
references juegoplataforma (id);


alter table juegoplataforma
add constraint FK_juegoplataformajuego
foreign key (idjuego)
references juego (idjuego);


alter table juegoplataforma
add constraint FK_juegoplataformaplataforma
foreign key (idplataforma)
references plataforma (idplataforma);


alter table juegoplataforma
add constraint FK_juegoplataformadistribuidor
foreign key (iddistribuidor)
references distribuidor (iddistribuidor);


alter table juegoplataforma
add constraint FK_juegoplataformadesarrollador
foreign key (iddesarrollador)
references desarrollador (iddesarrollador);


alter table juego
add constraint FK_juegotipo
foreign key (idtipo)
references tipo (idtipo);


--
-- Table structure for table 'Usuarios'
--

CREATE TABLE Usuarios (
   UsuarioId VARCHAR(100) NOT NULL primary key, 
   Contrasenia VARCHAR(255) NOT NULL, 
   Email   VARCHAR(255), 
   FechaRegistro   DATETIME,
   NivelAcceso INT NOT NULL DEFAULT 1
);


--
-- Table structure for table 'Roles'
--
CREATE TABLE Roles (
   Id INT NOT NULL primary key, 
   Rol VARCHAR(255) NOT NULL  
);

alter table Usuarios
add constraint FK_rolUsuario
foreign key (NivelAcceso)
references Roles (id);

--
-- Dumping data for table 'Roles'
--

INSERT INTO  Roles   ( Id  ,  Rol  ) VALUES (0, 'Sin acceso');
INSERT INTO  Roles   ( Id  ,  Rol  ) VALUES (1, 'Invitado');
INSERT INTO  Roles   ( Id  ,  Rol  ) VALUES (2, 'usuario');
INSERT INTO  Roles   ( Id  ,  Rol  ) VALUES (3, 'admin');


--
-- Dumping data for table 'Usuarios'
--

INSERT INTO  Usuarios   ( UsuarioId  , Contrasenia , Email , FechaRegistro , NivelAcceso ) VALUES ('Admin', '3333', null, now(), 3);






