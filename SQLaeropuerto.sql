create database aeropuertos

use aeropuertos

create table piloto(

ide_piloto int,

nombrePiloto varchar(50),

horasVuelo float,

constraint ap_cc primary key (ide_piloto))

create table avion(

placa_avion int,

nombre_avion varchar(60),

constraint aa_cc primary key (placa_avion))

create table tripulacion(

ide_tripulacion int,

nombre varchar(60),

constraint at_cc primary key (ide_tripulacion))

create table vuelo(

id_vuelo int,

origen varchar(60),

destino varchar(60),

hora_deter datetime,

placa_avion1 int,

constraint av_cc primary key (id_vuelo), constraint fk_fc1 foreign key (placa_avion1) references avion(placa_avion))

create table base(

ide_base int,

nombre_base varchar(60),

constraint ab_cc primary key (ide_base))

----Tablas intermedias con claves foraneas----

create table tripulacion_vuelo(

ide_tripulacion1 int,

ide_vuelo2 int,

constraint fk_falu1 foreign key(ide_tripulacion1) references tripulacion (ide_tripulacion),
constraint fk_falu2 foreign key(ide_vuelo2) references vuelo (id_vuelo))

create table piloto_vuelo(

ide_piloto1 int,

ide_vuelo1 int,

constraint fk_falu3 foreign key(ide_piloto1) references tripulacion (ide_tripulacion),
constraint fk_falu4 foreign key(ide_vuelo1) references vuelo (id_vuelo))

create table avion_base(

ide_base1 int,

placa_avion1 int,

constraint fk_falu5 foreign key(ide_base1) references base (ide_base),
constraint fk_falu6 foreign key(placa_avion1) references avion (placa_avion))