USE nataliaGarcia_02_11_2021;

#Creacion de procedimiento 1:

DROP PROCEDURE IF EXISTS sp_actualizar_paciente;
DELIMITER $$
CREATE PROCEDURE sp_actualizar_paciente(
	IN num_Historia VARCHAR(20),
	IN num_seg_social VARCHAR(20),
	IN prim_nombre VARCHAR(25),
	IN apellido VARCHAR(50),
	IN calle VARCHAR(255),
	IN num_direc VARCHAR(5),
	IN avenida VARCHAR(255),
	IN telefono VARCHAR(25),
	IN fecha_nac DATE
)
BEGIN 
	UPDATE paciente p SET
    p.num_seg_social=num_seg_social,
    p.prim_nombre=prim_nombre,
    p.apellido=apellido,
    p.calle=calle,
    p.num_direc=num_direc,
    p.avenida=avenida,
    p.telefono=telefono,
    p.fecha_nac=fecha_nac
    WHERE p.num_Historia=num_Historia;
END$$
DELIMITER ;

CALL sp_actualizar_paciente("HC0007",null,"Laura","Lopez","55","76","Broadway","3156783452","1994-09-24");

-- --------------------------------------------------------------------------

#Creacion de procedimiento 2:
DROP PROCEDURE IF EXISTS sp_borrar_nom_servicio;
DELIMITER $$
CREATE PROCEDURE sp_borrar_nom_servicio(
	IN nombre_servicio VARCHAR(255)
)
BEGIN
	DELETE FROM servicio s WHERE s.nombre_servicio=nombre_servicio;
END$$
DELIMITER ;

CALL sp_borrar_nom_servicio("Endogrinologia");

-- --------------------------------------------------------------------------
#Creacion de procedimiento 3:

DROP PROCEDURE IF EXISTS sp_insertar_farmaco;
DELIMITER $$
CREATE PROCEDURE sp_insertar_farmaco(
	IN num_registro VARCHAR(100),
	IN nombre_comercial VARCHAR(255),
	IN nombre_clinico VARCHAR(255),
	IN compuesto_quimico VARCHAR(255),
	IN ubicacion VARCHAR(255),
	IN cod_provedor VARCHAR(20),
	IN num_unidosis_far INT,
	IN precio_unidosis DECIMAL,
	IN precio_total DECIMAL 
)
BEGIN
INSERT INTO farmaco VALUE(
	num_registro,
    nombre_comercial,
    nombre_clinico,
    compuesto_quimico,
    ubicacion,
    cod_provedor,
    num_unidosis_far,
    precio_unidosis,
    precio_total
);
END$$
DELIMITER ;

CALL sp_insertar_farmaco("AA3115","LUXIQ","Betametasona","T876","SS763","74225",7,5432,null);


