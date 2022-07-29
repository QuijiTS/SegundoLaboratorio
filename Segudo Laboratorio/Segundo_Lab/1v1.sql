CREATE DATABASE 1v1;
USE 1v1;

CREATE TABLE jugador(
    codigoJugador VARCHAR(5),
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    fechaNacimiento VARCHAR(10),
    pais VARCHAR(30),
    PRIMARY KEY(codigoJugador)
);

CREATE TABLE partida(
    codigoPartida VARCHAR(5),
    codigoJugador1 VARCHAR(5),
    codigoJugador2 VARCHAR(5),
    tipoPartida VARCHAR(20),
    PRIMARY KEY(codigoPartida),
    foreign key (codigoJugador1) 
references jugador (codigoJugador),
    foreign key (codigoJugador2)  
references jugador (codigoJugador)
);

CREATE TABLE resultados(
    codigoResultados VARCHAR(5),
    codigoJugadorGanador VARCHAR(5),
    tiempoPartida TIME,
    PRIMARY KEY(codigoResultados),
    foreign key (codigoJugadorGanador) 
references jugador (codigoJugador)
);

CREATE TABLE compra(
    codigoCompra VARCHAR(5),
    codigoJugadorComprador VARCHAR(5),
    descripcionCompra VARCHAR(15),
    ingresos VARCHAR(5),
PRIMARY KEY(codigoCompra),
foreign key (codigoJugadorComprador) 
references jugador (codigoJugador)
);

INSERT INTO jugador VALUES
("J0001","José","Quijivix","16/06/2004","Guatemala"),
("J0002","Kevin","Jeferson","03/09/1999","Estados Unidos"),
("J0003","Diego","Hernandez","28/02/2001","Chile"),
("J0004","Alex","Mendez","14/01/1999","Argentina"),
("J0005","Steven","Kenedy","19/11/2000","Reino Unido"),
("J0006","Roberto","de Luque","30/12/1997","España");

INSERT INTO partida VALUES
("P0001","J0001","J0005","Competitiva"),
("P0002","J0003","J0002","Amistosa"),
("P0003","J0006","J0004","Competitiva"),
("P0004","J0006","J0001","Amistosa"),
("P0005","J0002","J0004","Competitiva"),
("P0006","J0005","J0003","Competitiva");

INSERT INTO resultados VALUES
("R0001","J0001",'000200'),
("R0002","J0003",'000300'),
("R0003","J0004",'000100'),
("R0004","J0006",'000230'),
("R0005","J0004",'000330'),
("R0006","J0003",'000230');

INSERT INTO compra VALUES
("C0001","J0001","SKIN N1","5.00"),
("C0002","J0002","850 GEMAS","8.50"),
("C0003","J0003","350 GEMAS","3.50"),
("C0004","J0004","3000","30.00"),
("C0005","J0005","SKIN N6","5.00"),
("C0006","J0006","1000 GEMAS","10.00");

SELECT * FROM jugador;

SELECT * FROM partida;

SELECT * FROM resutados;

SELECT * FROM compra;
