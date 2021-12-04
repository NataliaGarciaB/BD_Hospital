USE nataliaGarcia_02_11_2021;
#Realización del CRUD

INSERT INTO paciente VALUES ("HC00012",34,"Natalia","Garcia","78","11","Candido","3105437689","1994-03-28");
INSERT INTO servicio VALUES ("Ginecologia",99);
INSERT INTO farmaco VALUES ("AA2112","Amoxicilina","Sandoz","T32","SS7423","2975",5,692,null);
INSERT INTO ingreso VALUES ("HC00012",34,"2021-06-23","Tos",null,"General",14000);


SELECT prim_nombre AS "Nombre Paciente", apellido AS "Apellido Paciente" FROM paciente WHERE num_Historia="HC0002";
SELECT * FROM servicio;
SELECT nombre_comercial AS "Nombre Comercial Farmaco",compuesto_quimico AS "Compuesto Quimico Farmaco" FROM farmaco WHERE num_registro ="AA8454";
SELECT * FROM ingreso;

UPDATE paciente SET prim_nombre="Juana" WHERE num_Historia="HC0001";
UPDATE servicio SET gasto_servicio=33 WHERE nombre_servicio="Cardiologia";
UPDATE farmaco SET cod_provedor="1102" WHERE num_registro="AA2112";
UPDATE ingreso SET diagnostico="Febril" WHERE num_Historia="HC0003" AND num_ingreso="3";

DELETE FROM ingreso WHERE num_Historia="HC0304" AND num_ingreso="";
DELETE FROM farmaco WHERE num_registro="AA854";
DELETE FROM servicio WHERE nombre_servicio="Anestesiologia";
DELETE FROM paciente WHERE num_Historia="HC0006";



