USE nataliaGarcia_02_11_2021;
#En este script se realiza el poblado de la base de datos

INSERT INTO paciente VALUES
("HC0001",45,"Juanita","Perez","56","876","SiempreSur","3024567894","2021-01-07"),
("HC0002","76","Maria","Tello","34","386","Tenerife","3205678324","1995-03-08"),
("HC0003","64","Alfonso","Pineda","234","23","Circunvalar","3145678438","1954-07-11"),
("HC0004","65","Andres","Arias","54","654","Veintisiete","3114537589","1997-04-18"),
("HC0005",null,"Camilo","Nuñez","44","76","Vegas","304234632","1995-05-12"),
("HC0006",null,"Jose","Muñoz","655","33","Maximiliano","3147564398","1999-12-01");


INSERT INTO servicio VALUES 
("Urologia",34),
("Oftamologia",67),
("Nefrologia",54),
("Cardiologia",78),
("Internista",44),
("Vascular",27),
("Pediatria",84),
("Anestesiologia",69),
("Neurologia",73),
("Endogrinologia",22),
("General",12);


INSERT INTO farmaco VALUES
("AA1115","Ziagen","Abacavir","T02","SSr32","6542",4,234,null),
("AA1112","Tymlos","Abaloparatida","T98","StS75","5342",5,632,null),
("AA1113","Acetaminofem","Paracetamol","T56","StS4","6325",8,234,null),
("AA1114","Aciclovir","Zovirax","T86","SS363","7425",3,632,null);


INSERT INTO ingreso VALUES
("HC0001",1,"2020-07-12","Diabetes","2021-12-4","Internista",76500),
("HC0002",4,"2021-01-07","Hipertension","2021-02-10","Urologia",34000),
("HC0003",3,"2020-11-10","Vision Aguda","2021-01-01","Oftamologia",12000),
("HC0004",5,"2021-05-30","Fiebre","2021-06-01","Pediatria",43000),
("HC0005",6,"2021-04-23","Tos","2020-09-12","General",14000);

INSERT INTO medico VALUES
("RC2","Alberto","Garcia","42","432","Toma","31534892","Oftamologia"),
("RC3","Jose","Ramirez","543","65","Boyaca","3115487623","General"),
("RC4","Miguel","Ortiz","87","35","Chile","3228653497","Vascular"),
("RC5","Roberto","Jimenez","34","76","Cali","3146458769","Internista");

INSERT INTO receta VALUES
("HC0003",3,"RC2","AA1115","2021-03-01",5),
("HC0005",6,"RC3","AA1112","2021-06-14",2),
("HC0002",4,"RC4","AA1113","2021-03-22",8),
("HC0001",1,"RC5","AA1114","2020-05-22",4);

INSERT INTO consumo VALUES
("AA1115","General","2021-12-05",7),
("AA1113","Vascular","2021-03-04",9);

INSERT INTO revisa VALUES
("HC0003",3,"RC2","2021-01-20","10:54:23","Problema visual agudo,gotas cada 12H"),
("HC0001",1,"RC5","2020-12-30","11:30:40","Presenta fiebre tratable con medicamentos");



