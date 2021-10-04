SET SCHEMA 'cursos_ead';
--Inserção dos alunos no banco.
INSERT INTO usuario VALUES ('caio.silva','caio1927','145.253.452-5','Caio Silva de Oliveira','22/07/1999','Aluno');
INSERT INTO usuario VALUES ('rodrigo.navarro','rn225521','275.256.896-5','Rodrigo Navarro da Silva','19/01/2000','Aluno');
INSERT INTO usuario VALUES ('amanda.morais','amp1927','345.521.759-6','Amanda Morais de Pedrozo','15/10/2002','Aluno');
--Inserção dos criadores no banco
INSERT INTO usuario VALUES ('roger.melo','142562rml','723.852.451-9','Roger Melo de Lima','07/06/1990','Criador');
INSERT INTO usuario VALUES ('carlos.moreira','carlosneto1524','231.452.752-2','Carlos Moreira Neto','25/12/1995','Criador');
INSERT INTO usuario VALUES ('thiago.almeida','thx2231','755.382.411-9','Thiago de Almeida Prado','12/08/1994','Criador');
--Iserção dos telefones para os usuarios.
INSERT INTO telefone VALUES ('caio.silva', '(14)99652-2125');
INSERT INTO telefone VALUES ('caio.silva', '(14)99862-5521');
INSERT INTO telefone VALUES ('rodrigo.navarro', '(22)98153-6260');
INSERT INTO telefone VALUES ('amanda.morais', '(67)98125-5561');
INSERT INTO telefone VALUES ('amanda.morais', '(67)99631-0555');
INSERT INTO telefone VALUES ('carlos.moreira', '(17)99535-3125');
INSERT INTO telefone VALUES ('thiago.almeida', '(11)99651-3098');
INSERT INTO telefone VALUES ('thiago.almeida', '(11)98131-3521');
INSERT INTO telefone VALUES ('thiago.almeida', '(11)3239-2270');
--Inserção dos certificados dos criadores
INSERT INTO certificado VALUES ('thiago.almeida', 1, 'C:\Users\CursoEAD\Certificados\Certificado Programação Orientada a Objetos.pdf','Programação');
INSERT INTO certificado VALUES ('thiago.almeida', 2, 'C:\Users\CursoEAD\Certificados\Certificado Redes de Computadores.pdf', 'Tecnologia da Informação');
INSERT INTO certificado VALUES ('thiago.almeida', 3, 'C:\Users\CursoEAD\Certificados\Certificado Gestão de Projetos.pdf', 'Administração');
INSERT INTO certificado VALUES ('roger.melo', 1, 'C:\Users\CursoEAD\Certificados\Certificado Libras.pdf', 'Comunicação');
INSERT INTO certificado VALUES ('roger.melo', 2, 'C:\Users\CursoEAD\Certificados\Certificado Design Instrucional.pdf', 'Design');
INSERT INTO certificado VALUES ('carlos.moreira', 1, 'C:\Users\CursoEAD\Certificados\Certificado Gestão Escolar.pdf', 'Administração');
INSERT INTO certificado VALUES ('carlos.moreira', 2, 'C:\Users\CursoEAD\Certificados\Certificado Assistente Administrativo.pdf', 'Administração');
INSERT INTO certificado VALUES ('carlos.moreira', 3, 'C:\Users\CursoEAD\Certificados\Certificado Nova Legislação Trabalhista e Previdenciária.pdf', 'Direito');
--Iserção dos cursos
INSERT INTO curso VALUES (1,'Redes de Computadores',75.90,'Pago','thiago.almeida', 'Ativo');
INSERT INTO curso VALUES (2,'Programação em Java',90.00,'Pago','thiago.almeida', 'Ativo');
INSERT INTO curso VALUES (3,'Programação em Python',89.99,'Pago','thiago.almeida','Ativo');
INSERT INTO curso VALUES (4,'Gestão de Projetos',120.60,'Pago','thiago.almeida', 'Inativo');
INSERT INTO curso VALUES (5,'Design de Produtos',130.20,'Pago','roger.melo', 'Inativo');
INSERT INTO curso VALUES (6,'Libra',0.00,'Gratuito','roger.melo','Inativo');
INSERT INTO curso VALUES (7,'Design Industrial',150.00,'Pago','roger.melo','Inativo');
INSERT INTO curso VALUES (8,'Artes para Website',120.90,'Pago','roger.melo','Inativo');
INSERT INTO curso VALUES (9,'Gestão Escolar',90.00,'Pago','carlos.moreira','Inativo');
INSERT INTO curso VALUES (10,'Gestão de Tempo',0.00,'Gratuito','carlos.moreira','Ativo');
INSERT INTO curso VALUES (11,'Legislação Trabalhista',190.00,'Pago','carlos.moreira','Inativo');
INSERT INTO curso VALUES (12,'Assistente Administrativo',50.00,'Pago','carlos.moreira','Inativo');
--Iserção da Area que o curso se enquadra.
INSERT INTO area_atuante VALUES (1,1,'Tecnologia da Informação');
INSERT INTO area_atuante VALUES (2,1,'Tecnologia da Informação');
INSERT INTO area_atuante VALUES (2,2,'Programação');
INSERT INTO area_atuante VALUES (3,1,'Programação');
INSERT INTO area_atuante VALUES (3,2,'Tecnologia da Informação');
INSERT INTO area_atuante VALUES (4,1,'Administração');
INSERT INTO area_atuante VALUES (5,1,'Design');
INSERT INTO area_atuante VALUES (6,1,'Comunicação');
INSERT INTO area_atuante VALUES (7,1,'Design');
INSERT INTO area_atuante VALUES (8,1,'Design');
INSERT INTO area_atuante VALUES (9,1,'Administração');
INSERT INTO area_atuante VALUES (10,1,'Administração');
INSERT INTO area_atuante VALUES (11,1,'Direito');
INSERT INTO area_atuante VALUES (12,1,'Administração');
--Inserção modulo
INSERT INTO modulo VALUES (1,'Iniciante','Modulo 1 de Redes de Computadores',6.0,1);
INSERT INTO modulo VALUES (2,'Medio','Modulo 2 de Redes de Computadores',6.0,1,1);
INSERT INTO modulo VALUES (3,'Avançado','Modulo 3 de Redes de Computadores',6.0,1,2);
INSERT INTO modulo VALUES (4,'Iniciante','Modulo 1 Java',7.0,2);
INSERT INTO modulo VALUES (5,'Medio','Modulo 2 Java',7.0,2,4);
INSERT INTO modulo VALUES (6,'Avançado','Modulo 3 Java',7.0,2,5);
INSERT INTO modulo VALUES (7,'Iniciante','Modulo 1 Python',8.0,3);
INSERT INTO modulo VALUES (8,'Medio','Modulo 2 Python',7.0,3,7);
INSERT INTO modulo VALUES (9,'Avançado','Modulo 3 Python',6.0,3,8);
INSERT INTO modulo VALUES (10,'Iniciante','Modulo 1 Gestão de Projetos',8.0,4);
INSERT INTO modulo VALUES (11,'Medio','Modulo 2 Gestão de Projetos',7.0,4,10);
INSERT INTO modulo VALUES (12,'Iniciante','Modulo 1 Design de Produtos',8.0,5);
INSERT INTO modulo VALUES (13,'Iniciante','Modulo 1 Libras',8.0,6);
INSERT INTO modulo VALUES (14,'Medio','Modulo 2 Libras',7.0,6,13);
INSERT INTO modulo VALUES (15,'Iniciante','Modulo 1 Design Industrial',7.0,7);
INSERT INTO modulo VALUES (16,'Medio','Modulo 2 Design Industrial',7.0,7,15);
INSERT INTO modulo VALUES (17,'Avançado','Modulo 3 Design Industrial',7.0,7,16);
INSERT INTO modulo VALUES (18,'Iniciante','Modulo 1 Artes para Website',7.0,8);
INSERT INTO modulo VALUES (19,'Medio','Modulo 2 Artes para Website',7.0,8,18);
INSERT INTO modulo VALUES (20,'Avançado','Modulo 3 Artes para Website',7.0,8,19);
INSERT INTO modulo VALUES (21,'Iniciante','Modulo 1 Gestão Escolar',7.0,9);
INSERT INTO modulo VALUES (22,'Medio','Modulo 2 Gestão Escolar',7.0,9,20);
INSERT INTO modulo VALUES (23,'Avançado','Modulo 3 Gestão Escolar',7.0,9,21);
INSERT INTO modulo VALUES (24,'Iniciante','Modulo 1 Gestão de Tempo',7.0,10);
INSERT INTO modulo VALUES (25,'Medio','Modulo 2 Gestão de Tempo',7.0,10,24);
INSERT INTO modulo VALUES (26,'Avançado','Modulo 3 Gestão de Tempo',7.0,10,25);
INSERT INTO modulo VALUES (27,'Iniciante','Modulo 1 Legislação Trabalhista',7.0,11);
INSERT INTO modulo VALUES (28,'Medio','Modulo 2 Legislação Trabalhista',7.0,11,27);
INSERT INTO modulo VALUES (29,'Avançado','Modulo 3 Legislação Trabalhista',7.0,11,28);
INSERT INTO modulo VALUES (30,'Iniciante','Modulo 1 Assistente Administrativo',8.0,12);
INSERT INTO modulo VALUES (31,'Medio','Modulo 2 Assistente Administrativo',7.0,12,30);
INSERT INTO modulo VALUES (32,'Avançado','Modulo 3 Assistente Administrativo',7.0,12,31);
--Inserção das Aulas
INSERT INTO aula VALUES (1,'Aula 1 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (2,'Aula 2 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (3,'Aula 3 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (4,'Aula 4 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (5,'Aula 5 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (6,'Aula 6 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (7,'Aula 7 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (8,'Aula 8 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (9,'Aula 9 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (10,'Aula 10 - Modulo 1 Redes de Computadores',1);
INSERT INTO aula VALUES (11,'Aula 1 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (12,'Aula 2 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (13,'Aula 3 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (14,'Aula 4 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (15,'Aula 5 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (16,'Aula 6 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (17,'Aula 7 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (18,'Aula 8 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (19,'Aula 9 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (20,'Aula 10 - Modulo 2 Redes de Computadores',2);
INSERT INTO aula VALUES (21,'Aula 1 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (22,'Aula 2 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (23,'Aula 3 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (24,'Aula 4 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (25,'Aula 5 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (26,'Aula 6 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (27,'Aula 7 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (28,'Aula 8 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (29,'Aula 9 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (30,'Aula 10 - Modulo 3 Redes de Computadores',3);
INSERT INTO aula VALUES (31,'Aula 1 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (32,'Aula 2 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (33,'Aula 3 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (34,'Aula 4 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (35,'Aula 5 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (36,'Aula 6 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (37,'Aula 7 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (38,'Aula 8 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (39,'Aula 9 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (40,'Aula 10 - Modulo 1 Programação JAVA',4);
INSERT INTO aula VALUES (41,'Aula 1 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (42,'Aula 2 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (43,'Aula 3 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (44,'Aula 4 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (45,'Aula 5 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (46,'Aula 6 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (47,'Aula 7 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (48,'Aula 8 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (49,'Aula 9 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (50,'Aula 10 - Modulo 2 Programação JAVA',5);
INSERT INTO aula VALUES (51,'Aula 1 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (52,'Aula 2 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (53,'Aula 3 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (54,'Aula 4 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (55,'Aula 5 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (56,'Aula 6 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (57,'Aula 7 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (58,'Aula 8 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (59,'Aula 9 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (60,'Aula 10 - Modulo 3 Programação JAVA',6);
INSERT INTO aula VALUES (61,'Aula 1 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (62,'Aula 2 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (63,'Aula 3 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (64,'Aula 4 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (65,'Aula 5 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (66,'Aula 6 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (67,'Aula 7 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (68,'Aula 8 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (69,'Aula 9 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (70,'Aula 10 - Modulo 1 Programação Python',7);
INSERT INTO aula VALUES (71,'Aula 1 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (72,'Aula 2 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (73,'Aula 3 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (74,'Aula 4 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (75,'Aula 5 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (76,'Aula 6 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (77,'Aula 7 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (78,'Aula 8 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (79,'Aula 9 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (80,'Aula 10 - Modulo 2 Programação Python',8);
INSERT INTO aula VALUES (81,'Aula 1 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (82,'Aula 2 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (83,'Aula 3 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (84,'Aula 4 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (85,'Aula 5 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (86,'Aula 6 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (87,'Aula 7 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (88,'Aula 8 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (89,'Aula 9 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (90,'Aula 10 - Modulo 3 Programação Python',9);
INSERT INTO aula VALUES (91,'Aula 1 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (92,'Aula 2 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (93,'Aula 3 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (94,'Aula 4 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (95,'Aula 5 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (96,'Aula 6 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (97,'Aula 7 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (98,'Aula 8 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (99,'Aula 9 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (100,'Aula 10 - Modulo 1 Gestão de Projetos',10);
INSERT INTO aula VALUES (101,'Aula 1 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (102,'Aula 2 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (103,'Aula 3 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (104,'Aula 4 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (105,'Aula 5 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (106,'Aula 6 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (107,'Aula 7 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (108,'Aula 8 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (109,'Aula 9 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (110,'Aula 10 - Modulo 2 Gestão de Projetos',11);
INSERT INTO aula VALUES (111,'Aula 1 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (112,'Aula 2 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (113,'Aula 3 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (114,'Aula 4 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (115,'Aula 5 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (116,'Aula 6 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (117,'Aula 7 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (118,'Aula 8 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (119,'Aula 9 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (120,'Aula 10 - Modulo 1 Design de Produtos',12);
INSERT INTO aula VALUES (121,'Aula 1 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (122,'Aula 2 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (123,'Aula 3 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (124,'Aula 4 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (125,'Aula 5 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (126,'Aula 6 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (127,'Aula 7 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (128,'Aula 8 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (129,'Aula 9 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (130,'Aula 10 - Modulo 1 Libras',13);
INSERT INTO aula VALUES (131,'Aula 1 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (132,'Aula 2 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (133,'Aula 3 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (134,'Aula 4 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (135,'Aula 5 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (136,'Aula 6 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (137,'Aula 7 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (138,'Aula 8 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (139,'Aula 9 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (140,'Aula 10 - Modulo 2 Libras',14);
INSERT INTO aula VALUES (141,'Aula 1 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (142,'Aula 2 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (143,'Aula 3 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (144,'Aula 4 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (145,'Aula 5 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (146,'Aula 6 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (147,'Aula 7 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (148,'Aula 8 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (149,'Aula 9 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (150,'Aula 10 - Modulo 1 Design Industrial',15);
INSERT INTO aula VALUES (151,'Aula 1 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (152,'Aula 2 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (153,'Aula 3 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (154,'Aula 4 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (155,'Aula 5 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (156,'Aula 6 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (157,'Aula 7 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (158,'Aula 8 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (159,'Aula 9 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (160,'Aula 10 - Modulo 2 Design Industrial',16);
INSERT INTO aula VALUES (161,'Aula 1 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (162,'Aula 2 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (163,'Aula 3 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (164,'Aula 4 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (165,'Aula 5 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (166,'Aula 6 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (167,'Aula 7 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (168,'Aula 8 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (169,'Aula 9 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (170,'Aula 10 - Modulo 3 Design Industrial',17);
INSERT INTO aula VALUES (171,'Aula 1 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (172,'Aula 2 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (173,'Aula 3 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (174,'Aula 4 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (175,'Aula 5 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (176,'Aula 6 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (177,'Aula 7 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (178,'Aula 8 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (179,'Aula 9 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (180,'Aula 10 - Modulo 1 Artes para Website',18);
INSERT INTO aula VALUES (181,'Aula 1 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (182,'Aula 2 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (183,'Aula 3 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (184,'Aula 4 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (185,'Aula 5 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (186,'Aula 6 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (187,'Aula 7 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (188,'Aula 8 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (189,'Aula 9 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (190,'Aula 10 - Modulo 2 Artes para Website',19);
INSERT INTO aula VALUES (191,'Aula 1 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (192,'Aula 2 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (193,'Aula 3 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (194,'Aula 4 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (195,'Aula 5 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (196,'Aula 6 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (197,'Aula 7 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (198,'Aula 8 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (199,'Aula 9 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (200,'Aula 10 - Modulo 3 Artes para Website',20);
INSERT INTO aula VALUES (201,'Aula 1 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (202,'Aula 2 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (203,'Aula 3 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (204,'Aula 4 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (205,'Aula 5 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (206,'Aula 6 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (207,'Aula 7 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (208,'Aula 8 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (209,'Aula 9 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (210,'Aula 10 - Modulo 1 Gestão Escolar',21);
INSERT INTO aula VALUES (211,'Aula 1 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (212,'Aula 2 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (213,'Aula 3 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (214,'Aula 4 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (215,'Aula 5 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (216,'Aula 6 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (217,'Aula 7 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (218,'Aula 8 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (219,'Aula 9 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (220,'Aula 10 - Modulo 2 Gestão Escolar',22);
INSERT INTO aula VALUES (221,'Aula 1 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (222,'Aula 2 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (223,'Aula 3 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (224,'Aula 4 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (225,'Aula 5 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (226,'Aula 6 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (227,'Aula 7 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (228,'Aula 8 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (229,'Aula 9 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (230,'Aula 10 - Modulo 3 Gestão Escolar',23);
INSERT INTO aula VALUES (231,'Aula 1 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (232,'Aula 2 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (233,'Aula 3 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (234,'Aula 4 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (235,'Aula 5 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (236,'Aula 6 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (237,'Aula 7 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (238,'Aula 8 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (239,'Aula 9 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (240,'Aula 10 - Modulo 1 Gestão de Tempo',24);
INSERT INTO aula VALUES (241,'Aula 1 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (242,'Aula 2 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (243,'Aula 3 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (244,'Aula 4 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (245,'Aula 5 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (246,'Aula 6 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (247,'Aula 7 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (248,'Aula 8 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (249,'Aula 9 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (250,'Aula 10 - Modulo 2 Gestão de Tempo',25);
INSERT INTO aula VALUES (251,'Aula 1 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (252,'Aula 2 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (253,'Aula 3 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (254,'Aula 4 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (255,'Aula 5 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (256,'Aula 6 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (257,'Aula 7 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (258,'Aula 8 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (259,'Aula 9 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (260,'Aula 10 - Modulo 3 Gestão de Tempo',26);
INSERT INTO aula VALUES (261,'Aula 1 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (262,'Aula 2 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (263,'Aula 3 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (264,'Aula 4 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (265,'Aula 5 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (266,'Aula 6 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (267,'Aula 7 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (268,'Aula 8 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (269,'Aula 9 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (270,'Aula 10 - Modulo 1 Legislação Trabalhista',27);
INSERT INTO aula VALUES (271,'Aula 1 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (272,'Aula 2 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (273,'Aula 3 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (274,'Aula 4 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (275,'Aula 5 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (276,'Aula 6 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (277,'Aula 7 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (278,'Aula 8 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (279,'Aula 9 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (280,'Aula 10 - Modulo 2 Legislação Trabalhista',28);
INSERT INTO aula VALUES (281,'Aula 1 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (282,'Aula 2 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (283,'Aula 3 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (284,'Aula 4 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (285,'Aula 5 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (286,'Aula 6 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (287,'Aula 7 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (288,'Aula 8 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (289,'Aula 9 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (290,'Aula 10 - Modulo 3 Legislação Trabalhista',29);
INSERT INTO aula VALUES (291,'Aula 1 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (292,'Aula 2 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (293,'Aula 3 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (294,'Aula 4 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (295,'Aula 5 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (296,'Aula 6 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (297,'Aula 7 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (298,'Aula 8 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (299,'Aula 9 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (300,'Aula 10 - Modulo 1 Assistente Administrativo',30);
INSERT INTO aula VALUES (301,'Aula 1 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (302,'Aula 2 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (303,'Aula 3 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (304,'Aula 4 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (305,'Aula 5 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (306,'Aula 6 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (307,'Aula 7 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (308,'Aula 8 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (309,'Aula 9 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (310,'Aula 10 - Modulo 2 Assistente Administrativo',31);
INSERT INTO aula VALUES (311,'Aula 1 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (312,'Aula 2 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (313,'Aula 3 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (314,'Aula 4 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (315,'Aula 5 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (316,'Aula 6 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (317,'Aula 7 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (318,'Aula 8 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (319,'Aula 9 - Modulo 3 Assistente Administrativo',32);
INSERT INTO aula VALUES (320,'Aula 10 - Modulo 3 Assistente Administrativo',32);
--Inserção dos arquivos de aulas
INSERT INTO arquivo(codigo,descricao, link_acesso,cod_aula) VALUES
(1,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1redesmodulo1.mp4',1),
(2,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2redesmodulo1.mp4',2),
(3,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3redesmodulo1.mp4',3),
(4,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4redesmodulo1.mp4',4),
(5,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5redesmodulo1.mp4',5),
(6,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6redesmodulo1.mp4',6),
(7,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7redesmodulo1.mp4',7),
(8,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8redesmodulo1.mp4',8),
(9,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9redesmodulo1.mp4',9),
(10,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10redesmodulo1.mp4',10),
(11,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1redesmodulo2.mp4',11),
(12,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2redesmodulo2.mp4',12),
(13,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3redesmodulo2.mp4',13),
(14,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4redesmodulo2.mp4',14),
(15,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5redesmodulo2.mp4',15),
(16,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6redesmodulo2.mp4',16),
(17,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7redesmodulo2.mp4',17),
(18,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8redesmodulo2.mp4',18),
(19,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9redesmodulo2.mp4',19),
(20,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10redesmodulo2.mp4',20),
(21,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1javamodulo1.mp4',31),
(22,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2javamodulo1.mp4',32),
(23,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3javamodulo1.mp4',33),
(24,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4javamodulo1.mp4',34),
(25,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5javamodulo1.mp4',35),
(26,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6javamodulo1.mp4',36),
(27,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7javamodulo1.mp4',37),
(28,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8javamodulo1.mp4',38),
(29,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9javamodulo1.mp4',39),
(30,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10javamodulo1.mp4',40),
(31,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1javamodulo2.mp4',41),
(32,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2javamodulo2.mp4',42),
(33,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3javamodulo2.mp4',43),
(34,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4javamodulo2.mp4',44),
(35,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5javamodulo2.mp4',45),
(36,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6javamodulo2.mp4',46),
(37,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7javamodulo2.mp4',47),
(38,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8javamodulo2.mp4',48),
(39,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9javamodulo2.mp4',49),
(40,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10javamodulo2.mp4',50),
(41,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1pythonmodulo1.mp4',61),
(42,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2pythonmodulo1.mp4',62),
(43,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3pythonmodulo1.mp4',63),
(44,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4pythonmodulo1.mp4',64),
(45,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5pythonmodulo1.mp4',65),
(46,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6pythonmodulo1.mp4',66),
(47,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7pythonmodulo1.mp4',67),
(48,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8pythonmodulo1.mp4',68),
(49,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9pythonmodulo1.mp4',69),
(50,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10pythonmodulo1.mp4',70),
(51,'Aula 1.','C:\Users\CursoEAD\Aulas\aula1tempomodulo1.mp4',231),
(52,'Aula 2.','C:\Users\CursoEAD\Aulas\aula2tempomodulo1.mp4',232),
(53,'Aula 3.','C:\Users\CursoEAD\Aulas\aula3tempomodulo1.mp4',233),
(54,'Aula 4.','C:\Users\CursoEAD\Aulas\aula4tempomodulo1.mp4',234),
(55,'Aula 5.','C:\Users\CursoEAD\Aulas\aula5tempomodulo1.mp4',235),
(56,'Aula 6.','C:\Users\CursoEAD\Aulas\aula6tempomodulo1.mp4',236),
(57,'Aula 7.','C:\Users\CursoEAD\Aulas\aula7tempomodulo1.mp4',237),
(58,'Aula 8.','C:\Users\CursoEAD\Aulas\aula8tempomodulo1.mp4',238),
(59,'Aula 9.','C:\Users\CursoEAD\Aulas\aula9tempomodulo1.mp4',239),
(60,'Aula 10.','C:\Users\CursoEAD\Aulas\aula10tempomodulo1.mp4',240);
--Inserção de Avaliação
INSERT INTO avaliacao VALUES (1,'Avaliação 1- Modulo 1 Rede de Computadores',1);
INSERT INTO avaliacao VALUES (2,'Avaliação 2- Modulo 1 Rede de Computadores',1);
INSERT INTO avaliacao VALUES (3,'Avaliação 1- Modulo 2 Rede de Computadores',2);
INSERT INTO avaliacao VALUES (4,'Avaliação 2- Modulo 2 Rede de Computadores',2);
INSERT INTO avaliacao VALUES (5,'Avaliação 1- Modulo 3 Rede de Computadores',3);
INSERT INTO avaliacao VALUES (6,'Avaliação 2- Modulo 3 Rede de Computadores',3);
INSERT INTO avaliacao VALUES (7,'Avaliação 1- Modulo 1 Programação JAVA',4);
INSERT INTO avaliacao VALUES (8,'Avaliação 2- Modulo 1 Programação JAVA',4);
INSERT INTO avaliacao VALUES (9,'Avaliação 1- Modulo 2 Programação JAVA',5);
INSERT INTO avaliacao VALUES (10,'Avaliação 2- Modulo 2 Programação JAVA',5);
INSERT INTO avaliacao VALUES (11,'Avaliação 1- Modulo 3 Programação JAVA',6);
INSERT INTO avaliacao VALUES (12,'Avaliação 1- Modulo 1 Programação Python',7);
INSERT INTO avaliacao VALUES (13,'Avaliação 2- Modulo 1 Programação Python',7);
INSERT INTO avaliacao VALUES (14,'Avaliação 1- Modulo 2 Programação Python',8);
INSERT INTO avaliacao VALUES (15,'Avaliação 1- Modulo 3 Programação Python',9);
INSERT INTO avaliacao VALUES (16,'Avaliação 1- Modulo 1 Gestão de Projetos',10);
INSERT INTO avaliacao VALUES (17,'Avaliação 2- Modulo 1 Gestão de Projetos',10);
INSERT INTO avaliacao VALUES (18,'Avaliação 1- Modulo 2 Gestão de Projetos',11);
INSERT INTO avaliacao VALUES (19,'Avaliação 1- Modulo 1 Design de Produtos',12);
INSERT INTO avaliacao VALUES (20,'Avaliação 2- Modulo 1 Design de Produtos',12);
INSERT INTO avaliacao VALUES (21,'Avaliação 1- Modulo 1 Libras',13);
INSERT INTO avaliacao VALUES (22,'Avaliação 1- Modulo 2 Libras',14);
INSERT INTO avaliacao VALUES (23,'Avaliação 1- Modulo 1 Design Industrial',15);
INSERT INTO avaliacao VALUES (24,'Avaliação 1- Modulo 2 Design Industrial',16);
INSERT INTO avaliacao VALUES (25,'Avaliação 1- Modulo 3 Design Industrial',17);
INSERT INTO avaliacao VALUES (26,'Avaliação 1- Modulo 1 Artes para Website',18);
INSERT INTO avaliacao VALUES (27,'Avaliação 1- Modulo 2 Artes para Website',19);
INSERT INTO avaliacao VALUES (28,'Avaliação 1- Modulo 3 Artes para Website',20);
INSERT INTO avaliacao VALUES (29,'Avaliação 1- Modulo 1 Gestão Escolar',21);
INSERT INTO avaliacao VALUES (30,'Avaliação 1- Modulo 2 Gestão Escolar',22);
INSERT INTO avaliacao VALUES (31,'Avaliação 1- Modulo 3 Gestão Escolar',23);
INSERT INTO avaliacao VALUES (32,'Avaliação 1- Modulo 1 Gestão de Tempo',24);
INSERT INTO avaliacao VALUES (33,'Avaliação 1- Modulo 2 Gestão de Tempo',25);
INSERT INTO avaliacao VALUES (34,'Avaliação 1- Modulo 3 Gestão de Tempo',26);
INSERT INTO avaliacao VALUES (35,'Avaliação 1- Modulo 1 Legislação Trabalhista',27);
INSERT INTO avaliacao VALUES (36,'Avaliação 1- Modulo 2 Legislação Trabalhista',28);
INSERT INTO avaliacao VALUES (37,'Avaliação 1- Modulo 3 Legislação Trabalhista',29);
INSERT INTO avaliacao VALUES (38,'Avaliação 1- Modulo 1 Assistente Administrativo',30);
INSERT INTO avaliacao VALUES (39,'Avaliação 1- Modulo 2 Assistente Administrativo',31);
INSERT INTO avaliacao VALUES (40,'Avaliação 1- Modulo 3 Assistente Administrativo',32);
--Iserção de questões para as avaliações.
INSERT INTO questao_avaliacao(codigo,cod_avaliacao, descricao) VALUES 
(1,1,'Defina rede de computadores.'),
(2,1,'O que são redes broadcast e ponto-a-ponto?'),
(3,1,'O que é um endereço IP? Dê um exemplo.'),
(4,1,'O que é IPV4 e IPV6? Cite as principais diferenças entre IPV4 e IPV6.'),
(1,2,'O que é IPV4 e IPV6? Cite as principais diferenças entre IPV4 e IPV6.'),
(2,2,'UDP (user datagram protocol) e TCP (transmission control protocol) são protocolos da camada de transporte do modelo ISO/OSI.'),
(1,3,'Assinale a alternativa que contenha apenas protocolo(s) que é (são) considerado(s) da camada de transporte do modelo TCP/IP:'),
(2,3,'Com relação ao modelo de referência TCP/IP, marque a alternativa ERRADA:'),
(1,4,'Um gateway normalmente é um computador que opera em todas as cinco camadas da arquitetura TCP/IP ou nas sete camadas do modelo OSI. Sobre o gateway, é correto afirmar que'),
(2,4,'Tradicionalmente, são atribuídos quatro tipos de características a um fluxo: confiabilidade, atraso, jitter e largura de banda. Sobre tipos de serviço e QoS, é correto afirmar que jitter se refere'),
(1,5,'Uma empresa que possui um intervalo de endereços IP entre 194.24.16.0 e 194.24.31.255 possui a seguinte quantidade de endereços:'),
(2,5,'Segundo o modelo OSI, quando uma mensagem passa por nodos intermediários entre o emissor e receptor, permanecendo na mesma rede e com o mesmo protocolo, passa pelas seguintes camadas:'),
(1,6,'Em uma rede que utiliza TCP/IP, quando um computador é conectado à rede pela primeira vez, utiliza-se o protocolo ARP para descobrir o seu endereço de Internet.'),
(2,6,'O padrão Bluetooth inclui vários protocolos de operação agrupados em camadas estruturadas conforme o modelo de referência TCP/IP, o que garante a interoperabilidade desse padrão com os demais padrões de redes de computadores aderentes àquele modelo.'),
(1,7,'Tendo em vista o suporte para orientação a objetos na linguagem JAVA, caso um objeto do tipo enumeração fosse criado, para liberar seu armazenamento na memória seria necessário:'),
(2,7,'Assinale a opção que apresenta a extensão de um arquivo utilizado para distribuir uma coleção de arquivos JAR, JavaServer Pages, Java Servlets, classes Java, bibliotecas e outros recursos que, juntos, constituem um aplicativo da Web.'),
(1,8,'Considerando a Linguagem de Programação Java (Versão 11), como é possível obter a referência (lambda) para um método de uma classe?'),
(2,8,'No contexto de OO, considerando um Escopo de Classe na linguagem Java, assinale a alternativa correta.'),
(1,9,'Com relação aos operadores bitwise do Java, considere os valores binários a = 00111100 b = 00001101 Os valores resultantes das operações a&b e a|b são, respectivamente'),
(2,9,'O polimorfismo ocorre quando a mesma operação é construída em uma mesma classe ou quando o método da subclasse sobrepõe-se ao método da superclasse.'),
(1,10,'A compilação de um programa JAVA para ambiente Windows gera um programa com extensão EXE, o qual é executado pelo sistema operacional.'),
(2,10,'Quanto às linguagens de programação, assinale a alternativa que esteja tecnicamente incorreta.'),
(1,11,'Considerando a arquitetura da linguagem de programação Java e o Java Development Kit (JDK) e o Java Runtime Environment (JRE), assinale a alternativa correta.'),
(2,11,'Na plataforma Java SE 8, o coletor de lixo (garbage collector) somente libera o espaço ocupado pelo objeto A na memória quando'),
(1,12,'Listas são coleções alteráveis de qualquer tipo de objeto — como, por exemplo, outras listas — capazes de gerar um efeito top-down sem limite de níveis.'),
(2,12,'As tuplas, embora sejam semelhantes às listas, estão limitadas a, no máximo, cinco níveis.'),
(1,13,'Leia as afirmativas a seguir: I. Python é uma linguagem de programação interpretada, de código-fonte aberto e disponível para vários sistemas operacionais. II. Hardware é o nome que se dá a toda parte lógica do computador, também chamado de programa. Marque a alternativa CORRETA:'),
(2,13,'Na linguagem de programação Python, existem 3 estruturas para armazenar dados indexados. A estrutura cujos valores são imutáveis depois de sua criação é conhecida como'),
(1,14,'Dos itens abaixo, aquele que é uma linguagem de programação:'),
(2,14,'Qual comando do Python 3 que realiza para cada lista uma atribuição do elemento corrente à variável definida no comando e executa o bloco de código associado a essa variável disponível?'),
(1,15,'Em Python 3, qual é o processo que é executado dentro da função e não na chamada?'),
(2,15,'Em Python 3, o que é utilizado para interpolar string?'),
(1,16,'Os processos de negócio podem ser classificados em três tipos. Sobre esses tipos, assinale a alternativa correta.'),
(2,16,'O conceito “Esforço temporário empreendido para criar um produto, serviço ou resultado único” refere-se à'),
(1,17,'Os processos classificam-se em primários, de apoio e gerenciais.'),
(2,17,'A gestão por processos utiliza estrutura vertical, enquanto a gestão tradicional adota estruturas horizontais.'),
(1,18,'A fase em que o produto é gradativamente elaborado corresponde ao ciclo de vida de um projeto denominado:'),
(2,18,'Dentre os critérios de seleção de um projeto, o que indica se a ideia tem potencial de gerar negócios lucrativos para uma empresa é o critério:'),
(1,19,'Para crescer e alcançar sucesso, uma organização geralmente lança no mercado um novo produto que deve ser sistematicamente desenvolvido para se avaliar as chances de alcançar sucesso. Quando se está no processo de previsão de vendas, ocorre o(a):'),
(2,19,'O posicionamento de produtos implica'),
(1,20,'As inovações de marketing envolvem a implementação de novos métodos de marketing, incluindo mudanças no design do produto e na embalagem, na promoção do produto e sua colocação no mercado e em métodos de estabelecimento de preços de bens e de serviços. Assim é correto afirmar que:'),
(2,20,'Ao conjunto de elementos gráficos que compõe a personalidade visual de um nome, ideia, produto ou serviço, dá-se o nome de:'),
(1,21,'(CONCURSO CRATO/2021) Qual afirmativa sobre a Libras é CORRETA? A Libras é'),
(2,21,'(CONCURSO CRATO/2021) Com relação ao disposto na Lei nº 13.146/2015, analise as opções abaixo e assinale a alternativa INCORRETA:'),
(1,22,'(CONCURSO CRATO/2021) Quando o tradutor e intérprete de Libras, ao atuar, ao mesmo tempo que recebe uma frase ou pensamento na língua fonte (Língua Portuguesa Oral) para passar para a língua alvo (Libras), o profissional está realizando uma interpretação:'),
(2,22,'(CONCURSO CRATO/2021) De acordo os parâmetros linguísticos da Libras, assinale a alternativa que apresenta sinais com a mesma localização:'),
(1,23,'Com referencia aos comandos do AutoCAD, é INCORRETO afirmar:'),
(2,23,'A sequência CORRETA, de cima para baixo, é:'),
(1,24,'Uma chapa metálica, em tamanho real, mede dois metros e sessenta centímetros (2,60 m) por um metro e setenta centímetros (1,70 m). Quando essa chapa for representada na escala 1:25 terá, respectivamente, qual das medidas abaixo depois de plotada no formato A4 em tamanho real?'),
(2,24,'Utilizam-se cotas para fornecer as distâncias entre dois pontos, linhas ou planos, ou entre alguma combinação entre estes dois elementos. A colocação de cotas é normatizada pela ABNT através da norma NBR-10126. Com base nesta norma, é INCORRETO afirmar:'),
(1,25,'Assinale a alternativa que representa uma linha não utilizada em desenho técnico.'),
(2,25,'Assinale a alternativa referente a seguinte afirmativa: “É uma régua utilizada para apoiar o esquadro ou para traçar linhas paralelas quando apoiada na mesa de desenhos, possui em média 80 cm e normalmente é de madeira com detalhes em acrílico, sendo utilizada para desenho técnico”.'),
(1,26,'Como é feito a vetorização da imagem?'),
(2,26,'Quais cores são chamativas para um site de fast-food?'),
(1,27,'Como devemos trabalhar a idealização com o cliente?'),
(2,27,'Idealização e criação do projeto, esses dois processos dependem um do outro?'),
(1,28,'No ambiente escolar, as funções executivas são primordiais para que o estudante possa ter sucesso em todas as etapas de sua educação. Sobre as funções executivas, é INCORRETO afirmar que:'),
(2,28,'Lerner (2002) apresenta alguns desafios para transformar o ensino da leitura e da escrita na Escola. Sobre isso, marque a opção correta.'),
(1,29,'A disciplina é uma prática social. As exigências de procedimento, regras e métodos de uma prática não se dissociam dos objetivos e conteúdos da mesma. Nesse sentido, disciplina escolar se identifica com:'),
(2,29,'Qual é o documento norteador de todo trabalho escolar?'),
(1,30,'Algumas características costumam marcar a identidade de escolas eficazes. Observe os itens abaixo e marque aquele que apresenta uma característica de uma escola dotada de qualidade.'),
(2,30,'Assinale a alternativa incorreta. A Associação de Pais e Mestres pode exercer várias funções como: colaborar com a direção da escola para atingir os objetivos educacionais:'),
(1,31,'Com relação ao cronograma, é correto afirmar que:'),
(2,31,'O que você indica para quem não consegue se organizar?'),
(1,32,'Como ser eficiente em gestão de tempo e pessoas?'),
(2,32,'Como deixar de procrastinar?'),
(1,33,'O que é a técnica pomodoro?'),
(2,33,'Gestão do tempo é soft skill ou hard skill?'),
(1,34,'Organizar reuniões é muito importante e ter o conhecimento dos compromissos de nossos superiores ajuda a ter agilidades para que compromissos não sejam perdidos. Este assunto refere-se a agenda de compromissos que deve conter em sua estrutura:'),
(2,34,'O projeto é um empreendimento que faz parte, consciente ou inconscientemente, do dia a dia de qualquer organização. A visão da empresa influenciará sensivelmente no sucesso do projeto. Acerca desse tema, assinale a alternativa correta.'),
(1,35,'A respeito das formas de invalidade do contrato de emprego, a doutrina e a jurisprudência prevalentes estabelecem que.'),
(2,35,'Conforme a legislação trabalhista brasileira, o repouso semanal remunerado é:'),
(1,36,'A CLT, legislação que rege as relações trabalhistas na iniciativa privada, regula, também, alguns cargos da Administração Pública. Assinale a opção que apresenta um cargo da Administração Pública regido pela CLT.'),
(2,36,'Além de ser uma das formas de controle da atividade trabalhista no país, a RAIS é um meio de disponibilização de informações acerca do mercado de trabalho às entidades governamentais.'),
(1,37,'Considerando o caso da empresa Alfa assinale, dentre as alternativas, aquela que atende plenamente à determinação dessas Leis.'),
(2,37,'Além de ser uma das formas de controle da atividade trabalhista no país, a RAIS é um meio de disponibilização de informações acerca do mercado de trabalho às entidades governamentais.'),
(1,38,'(Exatus - 2012 - Prefeitura de Diamante D´Oeste) Com relação a arquivos, é correto afirmar, EXCETO:'),
(2,38,'(IDEA - 2009 - Prefeitura de Itupiranga) No que se refere à obediência às normas de conduta é correto afirmar que o funcionário'),
(1,39,'Indique abaixo a alternativa que não se insere integralmente, no âmbito da Lei 13.105/15, entre as excepcionalidades à ordem preferencial cronológica de julgamento:'),
(2,39,'Assinale a alternativa INCORRETA quanto à cooperação internacional:'),
(1,40,'Concernente à multa por infração aos deveres processuais pelas partes e seus procuradores, assinale a alternativa INCORRETA:'),
(2,40,'Analise as seguintes assertivas, nos termos do Código de Processo Civil, e assinale a alternativa INCORRETA. O juiz dirigirá o processo, incumbindo-lhe:');
--Inserção das compras.
INSERT INTO curso_adquirido(username_aluno,cod_curso,forma_pagamento,data_compra, valor_compra) VALUES
('caio.silva',1,'Cartão','10/09/2019', (SELECT crs.valor from curso crs where crs.codigo = 1)),
('amanda.morais',2,'Boleto','30/09/2019',(SELECT crs.valor from curso crs where crs.codigo = 2)),
('rodrigo.navarro',2,'Cartão','20/10/2019',(SELECT crs.valor from curso crs where crs.codigo = 2)),
('rodrigo.navarro',10,'Boleto','20/10/2019',(SELECT crs.valor from curso crs where crs.codigo = 10)),
('rodrigo.navarro',1,'Boleto','20/10/2019',(SELECT crs.valor from curso crs where crs.codigo = 1)),
('amanda.morais',3,'Boleto','30/10/2019',(SELECT crs.valor from curso crs where crs.codigo = 3));
--Iserção das avaliações que foram feita pelos alunos
INSERT INTO executa_avaliacao(username_aluno,cod_avaliacao,data_avaliacao,nota,horario) VALUES
('caio.silva',1,'20/09/2019',8.0,'10:20'),
('caio.silva',2,'05/10/2019',5.0,'11:40'),
('amanda.morais',7,'12/10/2019',9.0,'17:20'),
('caio.silva',2,'18/10/2019',8.0,'16:30'),
('amanda.morais',8,'20/10/2019',8.0,'12:14'),
('caio.silva',3,'25/10/2019',4.0,'17:20'),
('rodrigo.navarro',35,'30/10/2019',9.0,'22:10');


--Inserção aulas assistidas por aluno.
INSERT INTO aula_assistida(username_aluno,cod_aula,data_primeiro_acesso) VALUES
('caio.silva',1,'10/09/2019'),
('caio.silva',2,'11/09/2019'),
('caio.silva',3,'12/09/2019'),
('caio.silva',4,'13/09/2019'),
('caio.silva',5,'14/09/2019'),
('caio.silva',6,'15/09/2019'),
('caio.silva',7,'16/09/2019'),
('caio.silva',8,'17/09/2019'),
('caio.silva',9,'18/09/2019'),
('caio.silva',10,'19/09/2019'),
('caio.silva',11,'20/09/2019'),
('caio.silva',12,'20/09/2019'),
('caio.silva',13,'25/09/2019'),
('caio.silva',14,'25/09/2019'),
('caio.silva',15,'30/09/2019'),
('caio.silva',16,'01/09/2019'),
('caio.silva',17,'02/09/2019'),
('caio.silva',18,'03/09/2019'),
('caio.silva',19,'04/09/2019'),
('caio.silva',20,'05/09/2019'),
('amanda.morais',31,'30/09/2019'),
('amanda.morais',32,'01/10/2019'),
('amanda.morais',33,'02/10/2019'),
('amanda.morais',34,'02/10/2019'),
('amanda.morais',35,'03/10/2019'),
('amanda.morais',36,'03/10/2019'),
('amanda.morais',37,'04/10/2019'),
('amanda.morais',38,'06/10/2019'),
('amanda.morais',39,'09/10/2019'),
('amanda.morais',40,'12/10/2019'),
('rodrigo.navarro',261,'21/10/2019'),
('rodrigo.navarro',262,'24/10/2019'),
('rodrigo.navarro',263,'24/10/2019'),
('rodrigo.navarro',264,'25/10/2019'),
('rodrigo.navarro',265,'30/10/2019');
--Updates
--bloqueio de curso
update curso set situacao = 'Inativo' where codigo = 3 and username_criador = 'thiago.almeida';
update curso set valor = 120.20 where codigo = 1 and username_criador = 'thiago.almeida';
--Execução de nova avaliação
INSERT INTO executa_avaliacao(username_aluno,cod_avaliacao,data_avaliacao,nota,horario) VALUEs ('caio.silva',3,'31/10/2019',6.0,'14:30');
