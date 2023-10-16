DROP SCHEMA peliculasflix;

CREATE SCHEMA peliculasflix
default character set utf8mb4;

USE peliculasflix;

create table Categorias(
idCategoria INT PRIMARY KEY AUTO_INCREMENT,
nombreCategoria VARCHAR (20)
);

create table Generos(
idGenero INT PRIMARY KEY AUTO_INCREMENT,
nombreGenero VARCHAR(40)
);

create table Reparto(
idReparto INT PRIMARY KEY AUTO_INCREMENT,
NombreCompleto VARCHAR(60)
);

create table Catalogo(
idCatalogo INT PRIMARY KEY AUTO_INCREMENT,
Titulo VARCHAR(150),
Resumen TEXT,
Poster Varchar(255),
fechaDeEstreno VARCHAR(10),
nombreCategoria VARCHAR (20),
idCategoria INT,
FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria) 
-- idRepCatalogo INT,
-- FOREIGN KEY (idRepCatalogo) REFERENCES  repCatalogo (idRepCatalogo),
-- idGenCatalogo INT,
-- FOREIGN KEY (idGenCatalogo) REFERENCES genCatalogo (idGenCatalogo)
);


create table genCatalogo(
idGenCatalogo INT PRIMARY KEY AUTO_INCREMENT,
idCatalogo INT  NOT NULL,
FOREIGN KEY (idCatalogo) REFERENCES catalogo (idCatalogo),
idGenero INT  NOT NULL,
FOREIGN KEY (idGenero) REFERENCES Generos (idGenero)
);
create table repCatalogo(
idRepCatalogo INT PRIMARY KEY AUTO_INCREMENT,
idCatalogo INT NOT NULL,
FOREIGN KEY (idCatalogo) REFERENCES catalogo (idCatalogo),
idReparto INT  NOT NULL,
FOREIGN KEY (idReparto) REFERENCES Reparto (idReparto)
);

-- ALTER TABLE gencatalogo ADD CONSTRAINT gencatalogo_fk0 FOREIGN KEY (idCatalogo) REFERENCES Catalogo(idCatalogo);

-- ALTER TABLE gencatalogo ADD CONSTRAINT gencatalogo_fk1 FOREIGN KEY (idGenero) REFERENCES Genero(idGenero);

-- ALTER TABLE repcatalogo ADD CONSTRAINT repcatalogo_fk0 FOREIGN KEY (idCatalogo) REFERENCES Catalogo(idCatalogo);

-- ALTER TABLE repcatalogo ADD CONSTRAINT repcatalogo_fk1 FOREIGN KEY (idReparto) REFERENCES Reparto(idReparto);

-- ALTER TABLE catalogo	ADD CONSTRAINT catalogo_fk1 FOREIGN KEY (idCategoria) REFERENCES Categoria (idCategoria);

INSERT INTO generos (nombreGenero) VALUES ('Ciencia Ficción'),( 'Fantasía'),( 'Drama'),( 'Ficción'),('Sucesos'),( 'Misterio'),( 'Hechos verídicos'),( 'Crimen'),('Suspenso'),('Aventura'),( 'Comedia'),( 'Familia'),( 'Western'),( 'Tecnología'),( 'Terror'),('Historia'),( 'Intriga'),( 'Acción');

INSERT INTO reparto (NombreCompleto)
values 
("Anthony Hopkins"), ("Colin Farrell"), ("Toby Jones"), ("Omar Epps"), ("Jay Ryan"), ("Matt Damon"), ("Amy Manson"),
("Laurence Fishburne"), ("O.T. Fagbenle"), ("Sean Bean"), ("Bryce Dallas Howard"), ("Charlie Tahan"), ("Kyle Chandler"),
("Pedro Pascal"), ("Emmy Raver-Lampman"), ("Moses Ingram"), ("Mädchen Amick"), ("Henry Cavill"), ("Frances Conroy"),
("Jeremy Renner"), ("Carlos Valdes"), ("Simon Helberg"), ("Matthew Perry"), ("Gillian Anderson"), ("Emily Watson"),
("Thandie Newton"), ("Common"), ("Dwayne Johnson"), ("Angus Macfadyen"), ("Chadwick Boseman"), ("Caitriona Balfe"),
("Luke Allen-Gale"), ("Jude Law"), ("Rachel Weisz"), ("Kate Mara"), ("Chris Pratt"), ("Dash Mihok"), ("Corey Stoll"),
("Carl Weathers"), ("Robert Sheehan"), ("Chloe Pirrie"), ("Claire Fox"), ("Sam Claflin"), ("Brett Cullen"), ("Emilia Clarke"),
("Danielle Panabaker"), ("Kunal Nayyar"), ("Matt LeBlanc"), ("David Duchovny"), ("Paul Ritter"), ("Jeffrey Wright"),
("Geena Davis"), ("Kevin Hart"), ("Jorja Fox"), ("Michael B. Jordan"), ("Josh Lucas"), ("Nina Bergman"), ("Kate Winslet"),
("William Hurt"), ("Alicia Vikander"), ("Irrfan Khan"), ("Salli Richardson-Whitfield"), ("Patrick Fugit"), ("Misty Rosas"),
("Aidan Gallagher"), ("Janina Elkin"), ("Olivia Colman"), ("Helena Bonham Carter"), ("Shea Whigham"), ("Lena Headey"),
("Candice Patton"), ("Melissa Rauch"), ("Amybeth McNulty"), ("Mitch Pileggi"), ("Jessie Buckley"), ("Tessa Thompson"),
("Ioan Gruffudd"), ("Jack Black"), ("Enver Gjokaj"), ("Lupita Nyong'o"), ("Noah Jupe"), ("Dominic Mafham"), ("Jennifer Ehle"),
("Ray Winstone"), ("Domhnall Gleeson"), ("Vincent D'Onofrio"), ("Willow Smith"), ("John Boyega"), ("Chris Bartlett"),
("Elliot Page"), ("Lili Reinhart"), ("Matt Smith"), ("Louis Partridge"), ("Robert Downey Jr."), ("Sophie Turner"),
("Jesse L. Martin"), ("Mayim Bialik"), ("Geraldine James"), ("Robert Patrick"), ("Adam Nagaitis"), ("Ed Harris"),
("Stacy Martin"), ("Karen Gillan"), ("Bill Skarsgård"), ("Danai Gurira"), ("Jon Bernthal"), ("James Weber Brown"),
("Gwyneth Paltrow"), ("Oscar Isaac"), ("Omar Sy"), ("Emma Thompson"), ("Scott Eastwood"), ("Rio Hackford"), ("Anya Taylor-Joy"),
("Casey Cott"), ("Tobias Menzies"), ("Adeel Akhtar"), ("Chris Evans"), ("Kit Harington"), ("Tom Cavanagh"), ("Jennifer Aniston"),
("R. H. Thomson"), ("Tom Braidwood"), ("Luke Hemsworth"), ("Rhona Mitra"), ("Awkwafina"), ("Jessica Chastain"), ("Martin Freeman"),
("Génesis Rodríguez"), ("Lorina Kamburova"), ("Scarlett Johansson"), ("Sonoya Mizuno"), ("Nick Robinson"), ("Ryan Gosling"),
("Cailee Spaeny"), ("Giancarlo Esposito"), ("Thomas Brodie-Sangster"), ("Camila Mendes"), ("Vanesa Kirby"), ("Joaquin Phoenix"),
("Mark Ruffalo"), ("Peter Dinklage"), ("Jim Parsons"), ("Courteney Cox"), ("Corrine Koslo"), ("Bruce Harwood"), ("Theo James"),
("Nick Jonas"), ("Bill Hader"), ("Daniel Kaluuya"), ("Vincent Piazza"), ("Marion Cotillard"), ("Florence Pugh"), ("Kristen Wiig"),
("Corey Johnson"), ("Judy Greer"), ("Claire Foy"), ("Jing Tian"), ("Tom Hopper"), ("Harry Melling"), ("Marisol Nichols"),
("Robert De Niro"), ("Chris Hemsworth"), ("Nikolaj Coster-Waldau"), ("Johnny Galecki"), ("Lisa Kudrow"), ("Dalila Bela"),
("Jared Harris"), ("John Malkovich"), ("Peter Ferdinando"), ("Miranda Cosgrove"), ("James McAvoy"), ("Christian Bale"),
("Benjamin Sokolow"), ("David Harbour"), ("Jeff Daniels"), ("Claire Selby"), ("Will Smith"), ("Jason Clarke"), ("Rinko Kikuchi"),
("David Castañeda"), ("Madelaine Petsch"), ("Millie Bobby Brown"), ("Zazie Beetz"), ("Grant Gustin"), ("Kaley Cuoco"),
("David Schwimmer"), ("Lucas Jade Zumann"), ("Stellan Skarsgård"), ("Lia Williams"), ("Kate Walsh"), ("Isaiah Mustafa"),
("Emily Bayiokos"), ("Michael Peña"), ("Gana Bayarsaikhan"), ("Alice Braga"), ("Burn Gorman");

INSERT INTO Categorias (nombreCategoria)
VALUES ("Serie"), ("Pelicula");

INSERT INTO Catalogo (idCatalogo, Titulo, Resumen, nombreCategoria, Poster, fechaDeEstreno)
VALUES (3, 'The Mandalorian', 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.', 'Serie',"/posters/3.jpg",'12/11/2019'),
       (4, 'The Umbrella Academy', 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 'Serie',"/posters/4.jpg",'15/02/2019'),
       (5, 'Gambito de Dama', 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 'Serie',"/posters/5.jpg",'23/10/2020'),
       (2, 'Riverdale', 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 'Serie',"/posters/2.jpg",'26/01/2016'),
       (1, 'The Crown', 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 'Serie',"/posters/1.jpg",'04/11/2016'),
       (6, 'Enola Holmes', 'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', 'Película',"/posters/6.jpg",'23/09/2020'),
       (7, 'Guasón', 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', 'Película',"/posters/7.jpg",'04/11/2019'),
       (8, 'Avengers: End Game', 'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', 'Película',"/posters/8.jpg",'26/04/2019'),
       (9, 'Juego de Tronos', 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 'Serie',"/posters/9.jpg",'17/04/2011'),
       (10, 'The Flash', 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 'Serie',"/posters/10.jpg",'15/06/2023'),
       (11,'The Big Bang Theory', 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 'Serie', "/posters/11.jpg",'24/09/2007'),
       (12, 'Friends', "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.", 'Serie', "/posters/12.jpg",'22/09/1994'),
       (13, "Anne with an 'E'", 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.', 'Serie',"/posters/13.jpg", '19/03/2017'),
       (14, "Expedientes Secretos 'X'", 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de siniestro.', 'Serie',"/posters/14.jpg",'10/09/1993'),
       (15, 'Chernobyl', 'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.', 'Serie',"/posters/15.jpg",'06/05/2019'),
       (16, 'Westworld', "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.", 'Serie',"/posters/16.jpg",'02/10/2016'),
       (17, 'Halt and Catch Fire', 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valley. Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos en línea, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).', 'Serie',"/posters/17.jpg", '01/06/2014'),
       (18, 'Ava', 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por su vida.', 'Película',"/posters/18.jpg", '25/09/2020'),
       (19, 'Aves de Presa y la Fantabulosa Emancipación de una Harley Quinn', 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.', 'Película',"/posters/19.jpg", '07/02/2020'),
       (20, 'Archivo', '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.', 'Película',"/posters/20.jpg", '10/07/2020'),
       (21, 'Jumanji - The Next Level', 'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?', 'Película',"/posters/21.jpg", '13/12/2019'),
       (22, '3022', 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.', 'Película',"/posters/22.jpg",'22/11/2020'),
       (23, 'IT - Capítulo 2', 'En este segundo capitulo Han pasado 27 años desde que el "Club de los Perdedores", formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.', 'Película',"/posters/23.jpg",'06/09/2019'),
       (24, 'Pantera Negra', 'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.', 'Película',"/posters/24.jpg", '15/02/2018'),
       (25, 'Contra lo Imposible (Ford versus Ferrari)', 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.', 'Película',"/posters/25.jpg", '30/08/2019'),
       (26, 'Centígrados', 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.', 'Película',"/posters/26.jpg", '28/08/2020'),
       (27, 'DOOM: Aniquilación', 'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.', 'Película',"/posters/27.jpg",'17/05/2019'),
       (28, 'Contagio', 'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.', 'Película',"/posters/28.jpg",'09/09/2011' ),
       (29, 'Viuda Negra', 'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.', 'Película',"/posters/29.jpg",'09/07/2021'),
       (30, 'The Martian', 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.', 'Película', "/posters/30.jpg", '01/10/2015'),
       (31, 'Ex-Machina', 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que la inteligencia artificial lo es todo.', 'Película',"/posters/31.jpg", '12/03/2015'),
       (32, 'Jurassic World', 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic World, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.', 'Película',"/posters/32.jpg", '10/06/2022'),
       (33, 'Soy leyenda', 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', 'Película',"/posters/33.jpg", '01/01/2008'),
       (34, 'El primer hombre en la luna', 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', 'Película',"/posters/34.jpg", '12/10/2018'),
       (35, 'Titanes del Pacífico - La insurrección', 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.', 'Película',"/posters/35.jpg", '23/03/2018');
       


INSERT INTO gencatalogo (idCatalogo , idGenero )
VALUES (3, 2), (3, 1), (4, 2), (4, 1), (5, 3), (5, 4), (5, 5), (1, 3), (1, 7), (6, 4), (6, 3), (6, 6), (7, 8), (7, 9), (7, 3), (8, 10), (8, 1), (8, 18),(2, 3), (2, 6), (2, 4), (9, 10), (9, 2), (9, 3), (10, 1), (10, 2), (11, 11), (11, 2), (11, 4), (12, 11), (12, 12), (12, 3), (13, 3), (13, 12), (13, 13), (14, 3), (14, 1), (15, 3), (15, 7), (16, 1), (17, 4), (17, 3), (17, 14), (18, 18), (18, 3), (18, 9), (19, 18), (19, 4), (19, 11), (20, 18), (20, 1), (20, 9), (21, 11), (21, 4), (21, 10), (22, 1), (22, 9), (23, 15), (23, 9), (23, 2), (24, 18), (24, 10), (24, 2), (25, 3), (25, 16), (25, 10), (26, 3), (26, 9), (26, 17),(27, 18), (27, 1), (27, 15), (28, 3), (28, 9), (28, 4), (29, 3), (29, 18), (29, 10), (30, 3), (30, 1), (30, 10), (31, 3), (31, 1), (31, 9), (32, 9), (32, 10), (32, 4), (33, 3), (33, 15), (33, 4), (34, 3), (34, 7), (35, 18), (35, 2), (35, 1);
       
 
INSERT INTO repcatalogo (idRepCatalogo, idCatalogo, idReparto)
VALUES
(1, 1, 42), (2, 1, 67), (3, 1, 92), (4, 1, 116), (5, 1, 139), (6, 1, 68), (7, 2, 91), (8, 2, 115), (9, 2, 138), (10, 2, 161), (11, 2, 182), (12, 2, 17), (13, 3, 14),
(14, 3, 39), (15, 3, 64), (16, 3, 89), (17, 3, 113), (18, 3, 136), (19, 4, 159), (20, 4, 181), (21, 4, 15), (22, 4, 40), (23, 4, 65), (24, 4, 90), (25, 5, 114), (26, 5, 137),
(27, 5, 160),(28, 5, 16),(29, 5, 41),(30, 5, 66),(31, 6, 183),(32, 6, 18),(33, 6, 43),(34, 6, 68),(35, 6, 93),(36, 6, 117),(37, 7, 140),(38, 7, 162),
(39, 7, 184), (40, 7, 19), (41, 7, 44), (42, 7, 69), (43, 8, 94), (44, 8, 118), (45, 8, 141), (46, 8, 163), (47, 8, 131), (48, 8, 20), (49, 9, 45), (50, 9, 70), (51, 9, 95), (52, 9, 119),
(53, 9, 142), (54, 9, 164), (55, 10, 185), (56, 10, 21), (57, 10, 46), (58, 10, 71), (59, 10, 96), (60, 10, 120), (61, 11, 143), (62, 11, 165), (63, 11, 186), (64, 11, 22), (65, 11, 47),
(66, 11, 72), (67, 11, 97), (68, 12, 121), (69, 12, 144), (70, 12, 166), (71, 12, 187), (72, 12, 23), (73, 12, 48), (74, 13, 73), (75, 13, 98), (76, 13, 122), (77, 13, 145), (78, 13, 167), 
(79, 13, 188), (80, 14, 24), (81, 14, 49), (82, 14, 74), (83, 14, 99), (84, 14, 123), (85, 14, 146), (86, 15, 168), (87, 15, 189), (88, 15, 25), (89, 15, 50), (90, 15, 75), (91, 15, 100),
(93, 16, 26), (94, 16, 51), (95, 16, 76), (96, 16, 101), (97, 16, 124), (104, 18, 127), (105, 18, 169), (106, 18, 2), (107, 18, 27), (108, 18, 52), (109, 18, 77), (116, 20, 102), (117, 20, 125),
(118, 20, 147), (119, 20, 170), (120, 20, 190), (121, 20, 3), (122, 21, 28), (123, 21, 53), (124, 21, 78), (125, 21, 103), (126, 21, 126), (127, 21, 148), (128, 22, 171), (129, 22, 191), (130, 22, 4),
(131, 22, 29), (132, 22, 54), (133, 22, 79), (134, 23, 104), (135, 23, 127), (136, 23, 149), (137, 23, 172), (138, 23, 192), (139, 23, 5), (140, 24, 30), (141, 24, 55), (142, 24, 80),
(143, 24, 105), (144, 24, 128), (145, 24, 150), (146, 25, 173), (147, 25, 6), (148, 25, 31), (149, 25, 56), (150, 25, 81), (151, 25, 106), (152, 26, 129), (153, 26, 151), (154, 26, 174), (155, 26, 193),
(156, 27, 7), (157, 27, 32), (158, 27, 57), (159, 27, 82), (160, 27, 107), (161, 27, 130), (162, 28, 152), (163, 28, 6), (164, 28, 8), (165, 28, 33), (166, 28, 58), (167, 28, 83), (168, 28, 108),
(169, 29, 131), (170, 29, 153), (171, 29, 175), (172, 29, 9), (173, 29, 34), (174, 29, 59), (175, 29, 84), (176, 30, 6), (177, 30, 127), (178, 30, 154), (179, 30, 176), (180, 30, 194), (181, 30, 10),
(182, 30, 35), (183, 31, 60), (184, 31, 85), (185, 31, 109), (186, 31, 132), (187, 31, 155), (188, 31, 177), (189, 31, 195), (190, 32, 11), (191, 32, 36), (192, 32, 61), (193, 32, 86), (194, 32, 110),
(195, 32, 133), (196, 32, 156), (197, 33, 178), (198, 33, 196), (199, 33, 12), (200, 33, 37), (201, 33, 62), (202, 33, 87), (203, 33, 111), (204, 34, 134), (205, 34, 157), (206, 34, 179), (207, 34, 13), 
(208, 34, 38), (209, 35, 88), (210, 35, 112), (211, 35, 135), (212, 35, 158), (213, 35, 180), (214, 35, 197);   

update Catalogo set idCategoria =1   where nombreCategoria = "Serie";
update Catalogo set idCategoria =2  where nombreCategoria = "Pelicula";


CREATE VIEW Vista_Catalogo_Reparto AS
SELECT rc.idRepCatalogo, c.Titulo, c.Resumen, c.Poster, c.fechaDeEstreno, c.nombreCategoria, r.NombreCompleto
FROM repCatalogo rc
JOIN Catalogo c ON rc.idCatalogo = c.idCatalogo
JOIN Reparto r ON rc.idReparto = r.idReparto;

SELECT * FROM Vista_Catalogo_Reparto;


CREATE VIEW Vista_Catalogo_Generos AS
SELECT gc.idGenCatalogo, c.Titulo, c.Resumen, c.Poster, c.fechaDeEstreno, c.nombreCategoria, g.nombreGenero
FROM genCatalogo gc
JOIN Catalogo c ON gc.idCatalogo = c.idCatalogo
JOIN Generos g ON gc.idGenero = g.idGenero;


SELECT * FROM Vista_Catalogo_Generos;

-- Creamos una vista vwCatalogo para unificar la informacion a presentar en los get
create view vistacatalogo as
SELECT
	c.idCatalogo,
	c.Titulo,
	c.Resumen,
	c.Poster,
    c.idCategoria,
	GROUP_CONCAT(DISTINCT g.nombreGenero SEPARATOR ', ') AS Generos,
	group_concat(DISTINCT r.NombreCompleto separator ', ') as Actores
FROM
  Catalogo c
INNER JOIN genCatalogo gc ON c.idCatalogo = gc.idCatalogo
INNER JOIN Generos g ON gc.idgenero = g.idGenero
inner join repCatalogo rc on c.idCatalogo = rc.idCatalogo
inner join Reparto r on rc.idReparto = r.idReparto
INNER JOIN Categorias ca on c.idCategoria = ca.idCategoria
GROUP BY
  c.Titulo,
  c.Resumen,
  c.poster,
  c.idcatalogo,
  c.idcategoria
