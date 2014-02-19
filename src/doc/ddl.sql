create database project_db;

use project_db;

DROP TABLE employee;

CREATE TABLE employee (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` varchar(255) default NULL,
  `birthdate` timestamp,
  `email` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  PRIMARY KEY(id)
) engine = InnoDB;


INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Solomon Simon","1985-10-08 08:48:32","nibh.lacinia.orci@vulputatenisi.co.uk","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Dolan Crosby","1993-10-04 03:53:21","tellus.Phasellus@leo.net","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Herman Dillon","1998-04-04 17:59:23","imperdiet.dictum.magna@arcuMorbi.co.uk","Finances");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Madaline Solis","1985-10-20 12:28:32","adipiscing.lacus@sitamet.com","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Asher Frederick","1986-11-20 15:07:58","Aliquam@sitamet.ca","Finances");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Kelly Mcfarland","1985-05-16 08:43:34","dui.quis@Donecconsectetuer.org","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Zelda Lopez","1999-12-03 01:09:38","Integer.eu.lacus@nonbibendum.ca","Public Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Jael Guy","2002-06-19 03:06:14","auctor.velit.eget@orciconsectetuer.org","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Quynn Moss","1981-11-15 06:46:13","nibh.lacinia.orci@ante.org","Legal Department");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Paul Bruce","1995-07-21 12:38:46","tortor.Nunc@sagittisNullam.net","Public Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Elijah Benson","1980-07-06 22:04:52","aliquet.vel.vulputate@nibh.ca","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ramona Clay","1999-07-01 14:46:48","non.lacinia.at@Nuncpulvinar.net","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Leo Osborn","1988-04-20 05:07:52","lorem.eget.mollis@inceptos.com","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Xerxes Frazier","2002-01-28 14:48:58","Ut.tincidunt.vehicula@vestibulum.org","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Christen Foster","1999-05-29 05:25:42","orci.luctus@natoquepenatibus.net","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Damon Turner","2001-11-21 12:42:19","gravida.sagittis.Duis@nonleo.co.uk","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Murphy Townsend","1993-03-20 05:10:17","Pellentesque.habitant@velit.co.uk","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Trevor Lara","1995-04-09 18:32:59","elit@anteNuncmauris.com","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Hayfa Watkins","1990-05-19 02:08:05","neque.venenatis.lacus@Fuscediam.org","Payroll");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Tad Wilkins","1982-12-01 11:43:41","turpis.nec@risusvarius.co.uk","Accounting");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Cherokee Meyer","2000-09-05 13:43:50","Vivamus.sit.amet@Nuncmauris.ca","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Lael Phelps","1992-12-22 05:24:20","sapien.imperdiet.ornare@auguemalesuadamalesuada.ca","Sales and Marketing");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Fiona Webster","1984-07-07 16:30:29","eget@feugiat.ca","Legal Department");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Scarlet Gordon","1989-06-10 20:28:25","sagittis@gravida.edu","Finances");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Berk Graves","2002-05-16 20:00:40","Duis.elementum.dui@nuncQuisqueornare.co.uk","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Gemma Schroeder","2001-03-09 10:05:25","ultricies.ligula@arcuVestibulumut.co.uk","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ginger Carpenter","1976-02-06 06:08:42","senectus.et.netus@tellus.edu","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Declan Slater","1997-07-02 16:07:10","mi.lacinia@dolor.co.uk","Accounting");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Rooney Gilmore","1983-05-21 21:17:32","dui.Cum@aliquetProin.net","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Mechelle Dale","1985-09-27 20:13:53","orci.tincidunt@elit.org","Sales and Marketing");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Pearl Mejia","1991-06-22 21:50:35","tortor.nibh.sit@maurisaliquameu.co.uk","Public Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Meredith King","1998-06-22 10:10:00","diam.Proin.dolor@nisi.net","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ferris Stevens","1982-07-23 13:24:13","Vivamus.rhoncus.Donec@fringillaestMauris.co.uk","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Candace Randolph","1992-10-26 06:08:38","cursus.non@inhendrerit.net","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Alexa Stephens","1995-11-09 23:52:54","lacinia@Phasellus.com","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Kane Bolton","1998-05-27 13:35:48","eu.eros.Nam@tristique.org","Public Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Julian Bush","1986-08-03 22:59:04","fringilla.euismod.enim@elementum.co.uk","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Phoebe Welch","1988-07-23 01:19:00","nulla.at@vulputateposuerevulputate.org","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Leonard Chandler","1996-02-21 05:08:53","Suspendisse@Cras.edu","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Tanner Mcgowan","1978-10-01 07:15:19","ultrices@tellusSuspendisse.ca","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Hoyt Parrish","1986-11-12 08:22:25","ultrices.Duis@iaculisaliquetdiam.com","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Tucker Doyle","2000-07-15 23:12:46","cursus.luctus.ipsum@acorci.co.uk","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Jarrod Stokes","1979-12-10 06:13:16","nunc.sed.pede@liberoatauctor.org","Accounting");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Mohammad Wright","1991-11-07 13:11:43","id.blandit@sitamet.org","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Georgia Cooley","1979-07-25 13:12:49","euismod.urna@tincidunttempusrisus.edu","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Joelle Leonard","1978-09-21 12:46:07","nisl.elementum@etmagnisdis.ca","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ruth Macdonald","1980-12-12 09:28:10","posuere.enim.nisl@velit.org","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Quinlan Marks","1980-12-10 22:47:48","mauris.Morbi@massaMauris.net","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Fay Barrera","1994-09-05 03:30:49","Nulla@estacmattis.net","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Hoyt Ruiz","2002-04-08 06:48:46","sociis.natoque.penatibus@actellusSuspendisse.org","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Amaya Wyatt","1982-04-24 22:18:29","id@anteipsum.co.uk","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Brittany Padilla","1988-01-05 03:40:19","a@arcuVivamussit.ca","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Vladimir Mcgee","1984-12-01 07:03:00","Aliquam@est.edu","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Joshua Bryant","1978-04-11 05:51:04","fermentum.arcu.Vestibulum@utnulla.org","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Jasper Rush","2001-03-25 12:37:27","fermentum.risus@elitEtiamlaoreet.org","Sales and Marketing");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Shellie Hodge","1999-07-25 14:01:51","rutrum.Fusce@ligula.edu","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Asher Meadows","1986-04-19 11:50:02","commodo.ipsum.Suspendisse@Duis.org","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Dieter Riggs","1994-10-07 06:05:52","eu.tempor@risusDonecegestas.ca","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Susan Wilder","1978-05-30 02:42:30","tempus.eu@odio.com","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Allistair Boyer","1990-12-29 22:48:41","magna.Nam@Quisque.ca","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Amy Owen","1978-04-26 06:39:30","orci.tincidunt.adipiscing@vitaealiquam.co.uk","Accounting");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Porter Hamilton","1987-07-23 00:37:19","sed.facilisis.vitae@acturpisegestas.ca","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Edward Arnold","1977-05-02 03:42:10","nunc@blandit.org","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Wendy Rivera","1982-07-14 23:26:54","est.mollis.non@eget.edu","Payroll");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Adam Norton","1990-03-07 03:02:13","vitae.aliquet.nec@odioAliquam.net","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Louis Hale","2001-12-28 09:02:30","enim@Aliquam.edu","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Dahlia Fitzgerald","1990-08-26 12:14:54","Quisque.varius.Nam@temporloremeget.com","Legal Department");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ferris Gallagher","1976-05-01 08:53:10","molestie@In.co.uk","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Erasmus Levine","1983-01-11 03:46:33","velit.justo.nec@sagittisDuis.co.uk","Finances");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Isadora Bates","1982-10-20 00:17:51","sit.amet.faucibus@netusetmalesuada.co.uk","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Leslie Hale","1983-02-11 17:47:51","eu.tempor.erat@inmolestie.co.uk","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Brianna Carey","2000-10-23 14:01:36","augue@elit.org","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Jane Campbell","1982-03-27 14:19:46","accumsan@luctus.net","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Hadley Beach","1985-05-29 00:00:25","bibendum.fermentum@nonvestibulum.edu","Sales and Marketing");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Teagan Navarro","1989-12-07 22:07:23","convallis.erat.eget@idantedictum.net","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ivory Horne","1981-07-13 11:06:10","nisi.Aenean.eget@utmiDuis.net","Asset Management");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Zane Blackwell","2000-08-08 18:47:10","Nam@pede.com","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Elliott Byers","1978-09-09 19:04:35","Vestibulum.ante.ipsum@pede.co.uk","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Meghan Griffin","1981-10-07 14:16:38","justo@varius.com","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Tanner Jensen","1995-09-26 10:42:55","posuere.at@eleifend.co.uk","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Portia Vega","1991-10-12 13:43:24","orci.tincidunt.adipiscing@vitaeerat.com","Advertising");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Josephine Casey","1996-04-14 17:12:41","auctor@miDuis.co.uk","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Clementine Hines","1977-03-18 04:25:49","Maecenas.mi@nullavulputate.net","Finances");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Trevor Fuller","2002-09-14 18:16:13","non.leo.Vivamus@Aliquamgravida.org","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Dane Atkins","1984-08-20 07:03:12","iaculis@pedeSuspendisse.edu","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Emma Lowery","1988-05-11 22:20:57","tristique.pharetra.Quisque@turpisNulla.org","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Donna Calderon","1976-02-28 09:43:20","ipsum@ullamcorper.edu","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Xavier Clayton","1980-06-17 08:37:28","tellus.lorem@penatibuset.com","Research and Development");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Lucy Carlson","1992-09-20 16:47:22","purus.accumsan.interdum@Nullamvitae.co.uk","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ingrid Christensen","1992-11-03 12:56:15","enim.Nunc.ut@indolor.edu","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Alden Meadows","1992-10-27 06:40:16","Morbi.non.sapien@nullaat.edu","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ahmed Hayden","1999-12-09 12:11:40","sociis@acmattisvelit.org","Quality Assurance");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Jaime Smith","1988-03-22 16:23:40","nunc@Cumsociisnatoque.co.uk","Media Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Iola Garza","1980-09-13 13:31:34","quis.tristique@egestas.com","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Rina Wallace","1996-12-22 05:39:25","elit.pretium@Proin.edu","Human Resources");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Cody Bridges","2001-04-27 18:50:16","tempus.scelerisque.lorem@sed.org","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ignatius Cohen","1988-06-11 03:08:59","rhoncus.Donec.est@nullaCras.co.uk","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Melvin Harrell","1995-12-07 05:27:39","ipsum.primis@nuncQuisqueornare.org","Customer Relations");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Declan Schroeder","1990-04-23 10:47:47","facilisis@etipsum.ca","Customer Service");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Hamilton Parsons","1987-12-26 22:24:57","ipsum.primis.in@commodoat.co.uk","Tech Support");
INSERT INTO `employee` (`name`,`birthdate`,`email`,`department`) VALUES ("Ulric Livingston","1996-02-23 06:01:38","tempor.diam.dictum@tortorNunc.com","Customer Service");
