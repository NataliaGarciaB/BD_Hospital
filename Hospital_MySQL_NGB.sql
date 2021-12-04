Drop database if exists nataliaGarcia_02_11_2021;
CREATE DATABASE nataliaGarcia_02_11_2021;
USE nataliaGarcia_02_11_2021;
CREATE TABLE paciente
(num_Historia varchar(20) PRIMARY KEY,
num_seg_social varchar(20),
prim_nombre varchar(25) NOT NULL,
apellido varchar(50) NOT NULL,
calle varchar(255)NOT NULL,
num_direc varchar(5)NOT NULL,
avenida varchar(255) NOT NULL,
telefono varchar(25) NOT NULL,
fecha_nac date NOT NULL
);
CREATE TABLE servicio
(nombre_servicio VARCHAR(255) PRIMARY KEY,
gasto_servicio DECIMAL NOT NULL
);
CREATE TABLE farmaco
(num_registro varchar(100) PRIMARY KEY,
nombre_comercial varchar(255)NOT NULL,
nombre_clinico varchar(255)NOT NULL,
compuesto_quimico varchar(255)NOT NULL,
ubicacion varchar(255)NOT NULL,
cod_provedor varchar (20)NOT NULL,
num_unidosis_far INT NOT NULL,
precio_unidosis DECIMAL NOT NULL,
precio_total DECIMAL DEFAULT (num_unidosis_far*precio_unidosis)
);
CREATE TABLE ingreso
(num_Historia VARCHAR(20) NOT NULL,
num_ingreso INT NOT NULL,
fecha_ingreso DATE NOT NULL,
diagnostico VARCHAR(255) NOT NULL,
fecha_alta DATE,
nombre_servicio VARCHAR(255) NOT NULL,
gasto_ingreso DECIMAL NOT NULL,
PRIMARY KEY(num_Historia,num_ingreso),

FOREIGN KEY(num_Historia) REFERENCES paciente(num_Historia),
FOREIGN KEY(nombre_servicio) REFERENCES servicio(nombre_servicio)
);
CREATE TABLE medico
(num_colegiado VARCHAR(20) PRIMARY KEY,
prim_nombre_med VARCHAR(255)NOT NULL,
apellido_med VARCHAR(255)NOT NULL,
calle_med VARCHAR(255)NOT NULL,
num_med VARCHAR(5)NOT NULL,
avenida_med VARCHAR(255)NOT NULL,
telefono_med VARCHAR(25)NOT NULL,
nombre_servicio VARCHAR(255)NOT NULL,

FOREIGN KEY(nombre_servicio) REFERENCES servicio(nombre_servicio)
);
CREATE TABLE receta
(num_Historia VARCHAR(20) NOT NULL,
num_ingreso INT NOT NULL,
num_colegiado VARCHAR(20)NOT NULL,
num_registro VARCHAR(100)NOT NULL,
fecha_receta DATE NOT NULL,
cant_unidosis INT NOT NULL,

FOREIGN KEY(num_Historia,num_ingreso) REFERENCES ingreso(num_Historia,num_ingreso),
FOREIGN KEY(num_colegiado) REFERENCES medico(num_colegiado),
FOREIGN KEY(num_registro) REFERENCES farmaco(num_registro)
);
CREATE TABLE consumo
(num_registro VARCHAR(100)NOT NULL,
nombre_servicio varchar(255)NOT NULL,
fecha_cons DATE NOT NULL,
num_unidosis_cons INT NOT NULL,

FOREIGN KEY(num_registro) REFERENCES farmaco(num_registro),
FOREIGN KEY(nombre_servicio) REFERENCES servicio(nombre_servicio)
);
CREATE TABLE revisa
(num_Historia varchar(20)NOT NULL,
num_ingreso INT NOT NULL,
num_colegiado VARCHAR(20)NOT NULL,
fecha_revisa DATETIME NOT NULL,
hora_revisa TIME NOT NULL,
informe VARCHAR(500) NOT NULL,

FOREIGN KEY(num_Historia,num_ingreso) REFERENCES ingreso(num_Historia,num_ingreso),
FOREIGN KEY(num_colegiado) REFERENCES medico(num_colegiado)

);
