/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table courses
# ------------------------------------------------------------

CREATE TABLE `courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `name`, `desc`)
VALUES
	(1,'CSC 480','Programs and techniques that characterize artificial intelligence. Programming in a high level language. Free A\'s to everyone! 3 lectures, 1 laboratory.'),
	(2,'CSC 300','The responsibilities of the computer science professional. Teaches you that you shouldn\'t do bad stuff. Like hacking websites with SQL injections. 3 lectures, 1 laboratory.'),
	(3,'CSC 445','Theory of formal languages and automata. Teaches you that you cannot create a program that compares if two programs are equal or not, which apparently is called job security. Also coffee is vital for this course. 4 lectures.'),
	(4,'CSC 369','Introduction to distributed computing paradigms and cloud computing. Actually jk, the course is about how Scala is better than Java. 3 lectures, 1 laboratory.');

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table grades
# ------------------------------------------------------------

CREATE TABLE `grades` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `course` varchar(255) NOT NULL DEFAULT '',
  `grade` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;

INSERT INTO `grades` (`id`, `user_id`, `course`, `grade`)
VALUES
	(1,2,'csc300','A'),
	(2,3,'csc300','B'),
	(3,2,'geog350','D');

/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `is_admin` smallint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `is_admin`)
VALUES
	(3,'admin@calpoly.edu','fD@J384€#fm',1),
	(4,'andreas@calpoly.edu','nerfgun',NULL),
	(5,'hejsan@calpoly.edu','slf£$sf.54DL',NULL),
	(8,'friend@calpoly.edu','1235',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
