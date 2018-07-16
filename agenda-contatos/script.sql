DROP DATABASE IF EXISTS sistemacontato;
CREATE DATABASE sistemacontato;
USE sistemacontato;

DROP TABLE IF EXISTS `tipo_email`;
CREATE TABLE Tipo_Email(
	id_tipo INT NOT NULL PRIMARY KEY,
	email_tipo VARCHAR(50)
);

DROP TABLE IF EXISTS `tipo_telefone`;
CREATE TABLE tipo_telefone(
	id_tipo INT NOT NULL PRIMARY KEY,
	telefone_tipo VARCHAR(50)	
);

DROP TABLE IF EXISTS `contato`;
CREATE TABLE Contato(
	id_contato INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL 	  		
);

DROP TABLE IF EXISTS `telefone`;
CREATE TABLE telefone(
	id_telefone INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_tipo INT NOT NULL,
	id_contato INT NOT NULL,
	telefone VARCHAR(15) NOT NULL
);

DROP TABLE IF EXISTS `email`;
CREATE TABLE email(
	id_email INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_tipo INT NOT NULL,
	id_contato	INT NOT NULL,
    email VARCHAR(30) NOT NULL	
);

INSERT INTO tipo_email(id_tipo, email_tipo) VALUES (1, "pessoal");
INSERT INTO tipo_email(id_tipo, email_tipo) VALUES (2, "trabalho");

INSERT INTO tipo_telefone(id_tipo, telefone_tipo) VALUES (1, "celular");
INSERT INTO tipo_telefone(id_tipo, telefone_tipo) VALUES (2, "residencial");
INSERT INTO tipo_telefone(id_tipo, telefone_tipo) VALUES (3, "trabalho");

INSERT INTO contato(nome) VALUES ("Victor Marciano");
INSERT INTO contato(nome) VALUES ("Kelly Pires");
INSERT INTO contato(nome) VALUES ("Jose da Silva");
INSERT INTO contato(nome) VALUES ("Maria das Dores");
INSERT INTO contato(nome) VALUES ("João Paulo Santos");
INSERT INTO contato(nome) VALUES ("Mario de Andrade");
INSERT INTO contato(nome) VALUES ("Joaquim Pereira");
INSERT INTO contato(nome) VALUES ("Paulo César de Oliveira");
INSERT INTO contato(nome) VALUES ("Giovanna Ramos");
INSERT INTO contato(nome) VALUES ("Vinicius Guimarães");
INSERT INTO contato (nome) VALUES ("Caesar V. Estes");
INSERT INTO contato (nome) VALUES ("Maris Hernandez");
INSERT INTO contato (nome) VALUES ("Herrod Harmon");
INSERT INTO contato (nome) VALUES ("Imogene G. Riggs");
INSERT INTO contato (nome) VALUES ("Gary Whitfield");
INSERT INTO contato (nome) VALUES ("Rhonda Larson");
INSERT INTO contato (nome) VALUES ("Noel Riley");
INSERT INTO contato (nome) VALUES ("Serena Callahan");
INSERT INTO contato (nome) VALUES ("Sybill W. Christian");
INSERT INTO contato (nome) VALUES ("Kiona Q. Byers");
INSERT INTO contato (nome) VALUES ("Sydney Campbell");
INSERT INTO contato (nome) VALUES ("Oliver Suarez");
INSERT INTO contato (nome) VALUES ("Kalia F. Rowe");
INSERT INTO contato (nome) VALUES ("Jaquelyn Talley");
INSERT INTO contato (nome) VALUES ("Meredith W. Howard");
INSERT INTO contato (nome) VALUES ("Maile Spence");
INSERT INTO contato (nome) VALUES ("Nadine E. Lara");
INSERT INTO contato (nome) VALUES ("Alden O. Little");
INSERT INTO contato (nome) VALUES ("Gemma Mccullough");
INSERT INTO contato (nome) VALUES ("Jordan Q. Christensen");
INSERT INTO contato (nome) VALUES ("Amery Ratliff");
INSERT INTO contato (nome) VALUES ("Anthony Bradshaw");
INSERT INTO contato (nome) VALUES ("Ina P. Mays");
INSERT INTO contato (nome) VALUES ("Autumn F. Mcdowell");
INSERT INTO contato (nome) VALUES ("Alec Sherman");
INSERT INTO contato (nome) VALUES ("Cameron I. Ward");
INSERT INTO contato (nome) VALUES ("Barclay Hunt");
INSERT INTO contato (nome) VALUES ("Jana Wells");
INSERT INTO contato (nome) VALUES ("Sade Berger");
INSERT INTO contato (nome) VALUES ("Eden Franklin");
INSERT INTO contato (nome) VALUES ("Donovan Lawrence");
INSERT INTO contato (nome) VALUES ("Tarik Noble");
INSERT INTO contato (nome) VALUES ("Isabelle Santos");
INSERT INTO contato (nome) VALUES ("Amy N. Castillo");
INSERT INTO contato (nome) VALUES ("Alea Q. Kirk");
INSERT INTO contato (nome) VALUES ("Cyrus J. Pennington");
INSERT INTO contato (nome) VALUES ("Addison Salazar");
INSERT INTO contato (nome) VALUES ("Cooper H. Lara");
INSERT INTO contato (nome) VALUES ("Hamish O. Dunlap");
INSERT INTO contato (nome) VALUES ("Maisie Q. Black");
INSERT INTO contato (nome) VALUES ("Margaret Horn");
INSERT INTO contato (nome) VALUES ("Russell Foreman");
INSERT INTO contato (nome) VALUES ("Ingrid Whitley");
INSERT INTO contato (nome) VALUES ("Iola E. Strong");
INSERT INTO contato (nome) VALUES ("Shelley Velazquez");
INSERT INTO contato (nome) VALUES ("Clarke Mcdonald");
INSERT INTO contato (nome) VALUES ("Petra Hunt");
INSERT INTO contato (nome) VALUES ("Hanna R. Berger");
INSERT INTO contato (nome) VALUES ("Harper X. Mckay");
INSERT INTO contato (nome) VALUES ("Bevis D. Oneal");
INSERT INTO contato (nome) VALUES ("Reuben Sheppard");
INSERT INTO contato (nome) VALUES ("Brandon Snow");
INSERT INTO contato (nome) VALUES ("Kessie L. Boyle");
INSERT INTO contato (nome) VALUES ("Ruth M. Burgess");
INSERT INTO contato (nome) VALUES ("Brody A. Dennis");
INSERT INTO contato (nome) VALUES ("Evangeline O. Stout");
INSERT INTO contato (nome) VALUES ("Shay G. Mckee");
INSERT INTO contato (nome) VALUES ("Aristotle J. Hinton");
INSERT INTO contato (nome) VALUES ("Ferdinand V. Knight");
INSERT INTO contato (nome) VALUES ("Sybill Matthews");
INSERT INTO contato (nome) VALUES ("Noble Barrett");
INSERT INTO contato (nome) VALUES ("Colt Dejesus");
INSERT INTO contato (nome) VALUES ("Nyssa Sanders");
INSERT INTO contato (nome) VALUES ("Kennan V. Bowers");
INSERT INTO contato (nome) VALUES ("Valentine Walls");
INSERT INTO contato (nome) VALUES ("Devin J. Mathis");
INSERT INTO contato (nome) VALUES ("Lani D. Stevens");
INSERT INTO contato (nome) VALUES ("Dustin Newman");
INSERT INTO contato (nome) VALUES ("Petra F. Day");
INSERT INTO contato (nome) VALUES ("Lara Stevenson");
INSERT INTO contato (nome) VALUES ("Kalia Logan");
INSERT INTO contato (nome) VALUES ("Buffy C. Riley");
INSERT INTO contato (nome) VALUES ("Shaeleigh Bean");
INSERT INTO contato (nome) VALUES ("Addison O. Nichols");
INSERT INTO contato (nome) VALUES ("Karleigh X. Summers");
INSERT INTO contato (nome) VALUES ("Sasha Kirk");
INSERT INTO contato (nome) VALUES ("Kane F. Richards");
INSERT INTO contato (nome) VALUES ("Perry G. Murphy");
INSERT INTO contato (nome) VALUES ("Althea Woods");
INSERT INTO contato (nome) VALUES ("Keefe Barlow");
INSERT INTO contato (nome) VALUES ("Martina Arnold");
INSERT INTO contato (nome) VALUES ("Kylan I. Day");
INSERT INTO contato (nome) VALUES ("Helen Goodman");
INSERT INTO contato (nome) VALUES ("Nasim Miranda");
INSERT INTO contato (nome) VALUES ("Dakota M. Langley");
INSERT INTO contato (nome) VALUES ("Urielle L. Atkinson");
INSERT INTO contato (nome) VALUES ("Brooke Patton");
INSERT INTO contato (nome) VALUES ("Elvis D. Moses");
INSERT INTO contato (nome) VALUES ("Jacob Atkins");
INSERT INTO contato (nome) VALUES ("Dominique G. King");
INSERT INTO contato (nome) VALUES ("Sophia Dale");
INSERT INTO contato (nome) VALUES ("Bianca Webb");
INSERT INTO contato (nome) VALUES ("Tasha K. Donaldson");
INSERT INTO contato (nome) VALUES ("Halee I. Morales");
INSERT INTO contato (nome) VALUES ("Zorita Gaines");
INSERT INTO contato (nome) VALUES ("Lillian Q. Maddox");
INSERT INTO contato (nome) VALUES ("Branden Buck");
INSERT INTO contato (nome) VALUES ("Morgan W. White");
INSERT INTO contato (nome) VALUES ("Adam James");
INSERT INTO contato (nome) VALUES ("Noel F. Valenzuela");


/* RELACIONANDO AS TABELAS */

ALTER TABLE `email` 
ADD CONSTRAINT `contato_email_fk` FOREIGN KEY (`id_contato`) 
REFERENCES `contato`(`id_contato`) 
ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `email` 
ADD CONSTRAINT `email_tipo_fk` FOREIGN KEY (`id_tipo`) 
REFERENCES `tipo_email`(`id_tipo`) 
ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `telefone` 
ADD CONSTRAINT `contato_telefone_fk` FOREIGN KEY (`id_contato`) 
REFERENCES `contato`(`id_contato`) 
ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `telefone` 
ADD CONSTRAINT `telefone_tipo_fk` FOREIGN KEY (`id_tipo`) 
REFERENCES `tipo_telefone`(`id_tipo`) 
ON DELETE CASCADE ON UPDATE RESTRICT;

/* INSERÇÃO DOS DADOS RELACIONAIS MANUALMENTE */

INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,80,"(558) 660-4902");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,24,"(306) 184-1355");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,108,"(822) 914-5728");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,69,"(139) 775-0578");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,52,"(271) 241-9607");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,39,"(691) 363-6889");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,71,"(115) 186-1844");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,49,"(455) 796-9119");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,102,"(822) 222-8447");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,80,"(800) 640-0836");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,54,"(838) 842-6029");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,91,"(412) 622-0430");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,97,"(162) 699-3434");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,97,"(203) 778-4450");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,6,"(678) 175-1319");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,103,"(880) 673-2693");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,22,"(732) 581-0942");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,14,"(565) 722-4901");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,20,"(366) 516-9891");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,107,"(155) 256-4401");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,36,"(583) 834-9835");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,31,"(413) 227-8124");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,65,"(325) 465-4766");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,83,"(898) 857-1074");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,26,"(129) 498-9937");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,104,"(113) 698-3537");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,54,"(180) 734-6970");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,77,"(188) 757-7753");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,40,"(711) 700-4897");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,98,"(544) 201-6712");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,40,"(469) 974-2195");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,84,"(409) 952-5191");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,106,"(921) 881-8594");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,29,"(107) 888-8304");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,89,"(736) 411-6588");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,51,"(291) 293-1153");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,38,"(521) 936-8139");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,89,"(692) 707-1220");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,65,"(460) 625-0827");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,5,"(892) 213-9922");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,104,"(457) 935-5068");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,98,"(102) 855-7554");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,30,"(770) 733-8752");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,35,"(549) 168-3539");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,101,"(412) 875-4892");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,81,"(146) 448-8406");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,24,"(962) 805-7117");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,101,"(673) 201-9183");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,65,"(142) 526-0307");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,53,"(139) 920-6557");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,2,"(137) 192-5563");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,68,"(379) 936-9055");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,64,"(545) 153-5680");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,58,"(189) 623-3734");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,13,"(249) 496-2111");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,20,"(305) 175-9609");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,11,"(303) 982-2130");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,28,"(919) 509-3848");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,64,"(339) 838-1992");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,35,"(874) 499-6005");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,48,"(132) 828-3821");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,44,"(386) 538-1325");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,35,"(245) 884-1240");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,2,"(242) 871-2995");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,25,"(251) 585-4347");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,75,"(570) 552-9984");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,101,"(854) 757-3815");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,81,"(658) 743-7504");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,108,"(885) 744-5606");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,86,"(883) 302-1860");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,101,"(394) 819-3742");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,109,"(437) 945-5608");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,62,"(884) 644-9821");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,85,"(285) 546-3737");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,78,"(427) 387-7589");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,74,"(807) 137-7891");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,92,"(839) 506-1957");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,29,"(182) 111-8291");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,99,"(727) 940-2745");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,13,"(664) 535-9131");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,42,"(571) 746-8934");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,41,"(192) 388-0034");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,107,"(597) 449-9709");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,99,"(841) 122-7834");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,22,"(571) 789-8931");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,13,"(942) 550-3866");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,21,"(255) 129-3964");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,44,"(514) 310-9508");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,85,"(911) 395-1419");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,47,"(499) 914-6097");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,22,"(127) 931-5231");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,16,"(259) 431-3319");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,93,"(501) 740-4985");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (2,102,"(873) 414-4014");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,107,"(758) 497-3473");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (1,39,"(793) 205-0671");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,60,"(550) 408-9080");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,102,"(126) 341-5709");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,65,"(902) 212-2569");
INSERT INTO telefone (id_tipo,id_contato,telefone) VALUES (3,79,"(188) 362-7505");

INSERT INTO email (id_tipo,id_contato,email) VALUES (1,19,"sem@tellusid.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,76,"sociis.natoque@nullamagna.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,67,"aliquet.odio.Etiam@arcuet.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,18,"nisi.nibh.lacinia@necluctusfelis.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,21,"nulla@Nullafacilisis.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,79,"blandit@ullamcorper.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,8,"purus.ac.tellus@dolor.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,99,"Mauris@posuere.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,4,"lacus.Etiam.bibendum@in.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,66,"Vivamus.non@lobortis.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,63,"orci@Donec.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,79,"mollis.Duis.sit@erat.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,9,"elit.Nulla.facilisi@velitCras.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,87,"non.hendrerit@semNulla.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,93,"ut@quisdiam.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,91,"nunc.nulla@parturient.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,61,"feugiat.Sed.nec@rhoncus.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,96,"et.malesuada@Proinnonmassa.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,91,"mi.Duis@convallisdolor.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,3,"fermentum.arcu@netus.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,54,"turpis@sed.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,41,"ornare.egestas@elitpretium.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,21,"tristique.pellentesque@mi.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,11,"Fusce@vehicula.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,66,"elit@tinciduntnunc.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,7,"laoreet@lectuspedeultrices.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,4,"Morbi.metus@acsemut.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,109,"ligula.Aliquam.erat@eget.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,7,"in@porttitor.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,82,"varius.orci@arcu.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,20,"cursus.purus.Nullam@arcu.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,74,"parturient.montes.nascetur@necluctusfelis.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,3,"Suspendisse@tellusAeneanegestas.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,36,"turpis.Aliquam@Phasellus.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,73,"auctor.quis@nequeNullam.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,101,"mauris@placerat.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,22,"nibh.lacinia@augueut.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,56,"vel.est@nuncsed.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,28,"fermentum.risus@mauris.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,8,"Suspendisse@utlacusNulla.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,104,"velit@ultricesposuerecubilia.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,59,"at.fringilla.purus@Aliquamnisl.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,66,"penatibus@augue.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,96,"nisi.Aenean.eget@nibhdolornonummy.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,86,"interdum@egestas.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,22,"pharetra.felis@faucibusorciluctus.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,78,"velit@magnaLoremipsum.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,54,"nisi@bibendumDonecfelis.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,106,"luctus.aliquet.odio@vitaenibh.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,19,"Sed.eu.nibh@loremeumetus.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,74,"mi@magnaUttincidunt.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,8,"amet@Sedmalesuada.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,95,"lorem@lorem.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,22,"felis.Nulla.tempor@non.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,81,"et@purusinmolestie.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,106,"gravida.sit@purusmauris.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,68,"eget.magna@Fuscealiquam.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,9,"purus@sed.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,57,"Duis@non.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,90,"ullamcorper.velit.in@nonmassanon.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,53,"auctor@nequeMorbi.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,70,"ornare@malesuadaInteger.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,32,"a.odio@vestibulumlorem.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,27,"Aenean.euismod@egetvarius.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,77,"lectus@maurisidsapien.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,36,"Ut.sagittis.lobortis@elit.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,48,"non.quam@pedemalesuadavel.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,76,"pellentesque.a@felisullamcorper.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,54,"at.fringilla.purus@Cras.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,26,"Vivamus.rhoncus.Donec@lectus.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,8,"sollicitudin.adipiscing.ligula@non.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,14,"Maecenas.ornare.egestas@augueSedmolestie.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,1,"massa.Integer@ProinvelitSed.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,35,"vulputate@dolorNullasemper.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,78,"sem.magna@ultricesposuerecubilia.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,61,"Fusce.feugiat@lectusjusto.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,14,"vel.pede.blandit@Quisque.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,68,"auctor.velit.Aliquam@velitegetlaoreet.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,51,"dictum@egetipsum.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,25,"gravida@Pellentesque.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,3,"nulla.In.tincidunt@aneque.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,16,"Lorem@Vivamus.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,16,"lorem.Donec.elementum@nisl.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,10,"sed@sem.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,55,"non.leo.Vivamus@mauriserateget.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,48,"nec@ultrices.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,79,"lorem.sit@fringillaornare.org");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,62,"semper@dignissim.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,81,"dis.parturient.montes@sedconsequatauctor.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,69,"sodales@magna.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,95,"sed@orcilobortis.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,71,"nec@metusIn.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,45,"Mauris@incursuset.co.uk");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,61,"cubilia.Curae@iaculisodio.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,57,"a@vulputateduinec.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,45,"ornare.tortor.at@elitdictum.net");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,100,"ligula@penatibus.edu");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,55,"Sed@egestas.com");
INSERT INTO email (id_tipo,id_contato,email) VALUES (2,11,"egestas@faucibusutnulla.ca");
INSERT INTO email (id_tipo,id_contato,email) VALUES (1,93,"est.Mauris.eu@magna.ca");

/* OBRIGADO GENERATEDATA.COM \o/  */