-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for LMS
CREATE DATABASE IF NOT EXISTS `LMS` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LMS`;

-- Dumping structure for table LMS.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.courses: ~21 rows (approximately)
INSERT INTO `courses` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Chief Design Engineer', 'Curabitur at ipsum ac tellus semper interdum.', NULL, NULL),
	(2, 'Senior Quality Engineer', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', NULL, NULL),
	(3, 'Environmental Tech', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', NULL, NULL),
	(4, 'Developer I', 'Fusce consequat. Nulla nisl.', NULL, NULL),
	(5, 'Database Administrator IV', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', NULL, NULL),
	(6, 'Account Executive', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', NULL, NULL),
	(7, 'Senior Quality Engineer', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', NULL, NULL),
	(8, 'Administrative Assistant I', 'Praesent blandit lacinia erat.', NULL, NULL),
	(9, 'Help Desk Operator', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', NULL, NULL),
	(10, 'Budget/Accounting Analyst III', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', NULL, NULL),
	(11, 'Sales Associate', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', NULL, NULL),
	(12, 'Web Designer III', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', NULL, NULL),
	(13, 'Pharmacist', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', NULL, NULL),
	(14, 'Associate Professor', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', NULL, NULL),
	(15, 'Cost Accountant', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', NULL, NULL),
	(16, 'Tax Accountant', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', NULL, NULL),
	(17, 'Senior Quality Engineer', 'Nunc rhoncus dui vel sem. Sed sagittis.', NULL, NULL),
	(18, 'Environmental Specialist', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', NULL, NULL),
	(19, 'Account Coordinator', 'Vestibulum sed magna at nunc commodo placerat.', NULL, NULL),
	(20, 'Pharmacist', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', NULL, NULL),
	(21, 'Chief Design Engineer', 'Curabitur at ipsum ac tellus semper interdum.', NULL, NULL);

-- Dumping structure for table LMS.course_user
CREATE TABLE IF NOT EXISTS `course_user` (
  `course_id` int NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `FK_course_user_courses` (`course_id`),
  KEY `FK_course_user_users` (`user_id`),
  CONSTRAINT `FK_course_user_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FK_course_user_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.course_user: ~20 rows (approximately)
INSERT INTO `course_user` (`course_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(2, 2, NULL, NULL),
	(3, 3, NULL, NULL),
	(4, 4, NULL, NULL),
	(5, 5, NULL, NULL),
	(6, 6, NULL, NULL),
	(7, 7, NULL, NULL),
	(8, 8, NULL, NULL),
	(9, 9, NULL, NULL),
	(10, 10, NULL, NULL),
	(11, 11, NULL, NULL),
	(12, 12, NULL, NULL),
	(13, 13, NULL, NULL),
	(14, 14, NULL, NULL),
	(15, 15, NULL, NULL),
	(16, 16, NULL, NULL),
	(17, 17, NULL, NULL),
	(18, 18, NULL, NULL),
	(19, 19, NULL, NULL),
	(20, 20, NULL, NULL);

-- Dumping structure for table LMS.lessons
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lessons_courses` (`course_id`),
  CONSTRAINT `FK_lessons_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.lessons: ~20 rows (approximately)
INSERT INTO `lessons` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Business Systems Development Analyst', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', NULL, NULL),
	(2, 2, 'Data Coordinator', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', NULL, NULL),
	(3, 3, 'Web Designer III', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', NULL, NULL),
	(4, 4, 'Safety Technician III', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', NULL, NULL),
	(5, 5, 'Software Engineer II', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', NULL, NULL),
	(6, 6, 'Nurse', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', NULL, NULL),
	(7, 7, 'Paralegal', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', NULL, NULL),
	(8, 8, 'VP Accounting', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', NULL, NULL),
	(9, 9, 'Librarian', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', NULL, NULL),
	(10, 10, 'Media Manager I', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', NULL, NULL),
	(11, 11, 'Software Engineer I', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', NULL, NULL),
	(12, 12, 'Clinical Specialist', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', NULL, NULL),
	(13, 13, 'Accounting Assistant II', 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', NULL, NULL),
	(14, 14, 'Design Engineer', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', NULL, NULL),
	(15, 15, 'Civil Engineer', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', NULL, NULL),
	(16, 16, 'Compensation Analyst', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', NULL, NULL),
	(17, 17, 'Desktop Support Technician', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', NULL, NULL),
	(18, 18, 'Structural Engineer', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', NULL, NULL),
	(19, 19, 'Senior Sales Associate', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', NULL, NULL),
	(20, 20, 'Structural Analysis Engineer', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', NULL, NULL);

-- Dumping structure for table LMS.materials
CREATE TABLE IF NOT EXISTS `materials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_materials_lessons` (`lesson_id`),
  CONSTRAINT `FK_materials_lessons` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.materials: ~20 rows (approximately)
INSERT INTO `materials` (`id`, `lesson_id`, `title`, `file_path`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Community Outreach Specialist', 'IdJustoSit.tiff', NULL, NULL),
	(2, 2, 'Business Systems Development Analyst', 'Mi.mp3', NULL, NULL),
	(3, 3, 'Mechanical Systems Engineer', 'Non.mp3', NULL, NULL),
	(4, 4, 'Junior Executive', 'NonummyMaecenasTincidunt.xls', NULL, NULL),
	(5, 5, 'Sales Representative', 'TinciduntInLeo.avi', NULL, NULL),
	(6, 6, 'Quality Engineer', 'InQuisJusto.txt', NULL, NULL),
	(7, 7, 'Programmer III', 'CongueRisus.pdf', NULL, NULL),
	(8, 8, 'Operator', 'Odio.ppt', NULL, NULL),
	(9, 9, 'Assistant Manager', 'LigulaSitAmet.txt', NULL, NULL),
	(10, 10, 'Programmer Analyst II', 'VolutpatEratQuisque.ppt', NULL, NULL),
	(11, 11, 'Executive Secretary', 'EuMassa.tiff', NULL, NULL),
	(12, 12, 'Executive Secretary', 'UrnaUt.xls', NULL, NULL),
	(13, 13, 'Senior Sales Associate', 'Nisl.mpeg', NULL, NULL),
	(14, 14, 'Developer III', 'Commodo.png', NULL, NULL),
	(15, 15, 'Marketing Manager', 'Cubilia.ppt', NULL, NULL),
	(16, 16, 'Recruiter', 'Enim.xls', NULL, NULL),
	(17, 17, 'Analog Circuit Design manager', 'SollicitudinUt.ppt', NULL, NULL),
	(18, 18, 'Accountant IV', 'NisiNam.avi', NULL, NULL),
	(19, 19, 'Chief Design Engineer', 'Pulvinar.mp3', NULL, NULL),
	(20, 20, 'Structural Analysis Engineer', 'Justo.doc', NULL, NULL);

-- Dumping structure for table LMS.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL DEFAULT '0',
  `option` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `is_correct` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__questions` (`question_id`),
  CONSTRAINT `FK__questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.options: ~0 rows (approximately)

-- Dumping structure for table LMS.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__quizzes` (`quiz_id`),
  CONSTRAINT `FK__quizzes` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.questions: ~20 rows (approximately)
INSERT INTO `questions` (`id`, `quiz_id`, `question`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', NULL, NULL),
	(2, 2, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', NULL, NULL),
	(3, 3, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', NULL, NULL),
	(4, 4, 'In congue.', NULL, NULL),
	(5, 5, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', NULL, NULL),
	(6, 6, 'Morbi non quam nec dui luctus rutrum.', NULL, NULL),
	(7, 7, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', NULL, NULL),
	(8, 8, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', NULL, NULL),
	(9, 9, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', NULL, NULL),
	(10, 10, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', NULL, NULL),
	(11, 11, 'Sed vel enim sit amet nunc viverra dapibus.', NULL, NULL),
	(12, 12, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', NULL, NULL),
	(13, 13, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', NULL, NULL),
	(14, 14, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', NULL, NULL),
	(15, 15, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', NULL, NULL),
	(16, 16, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', NULL, NULL),
	(17, 17, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', NULL, NULL),
	(18, 18, 'Sed sagittis.', NULL, NULL),
	(19, 19, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', NULL, NULL),
	(20, 20, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', NULL, NULL);

-- Dumping structure for table LMS.quizzes
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__lessons` (`lesson_id`),
  CONSTRAINT `FK__lessons` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.quizzes: ~20 rows (approximately)
INSERT INTO `quizzes` (`id`, `lesson_id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Clinical Specialist', NULL, NULL),
	(2, 2, 'Cost Accountant', NULL, NULL),
	(3, 3, 'Operator', NULL, NULL),
	(4, 4, 'Quality Engineer', NULL, NULL),
	(5, 5, 'Civil Engineer', NULL, NULL),
	(6, 6, 'Physical Therapy Assistant', NULL, NULL),
	(7, 7, 'Business Systems Development Analyst', NULL, NULL),
	(8, 8, 'Sales Representative', NULL, NULL),
	(9, 9, 'Recruiting Manager', NULL, NULL),
	(10, 10, 'Financial Advisor', NULL, NULL),
	(11, 11, 'Web Designer II', NULL, NULL),
	(12, 12, 'Marketing Manager', NULL, NULL),
	(13, 13, 'Budget/Accounting Analyst II', NULL, NULL),
	(14, 14, 'Human Resources Assistant III', NULL, NULL),
	(15, 15, 'Legal Assistant', NULL, NULL),
	(16, 16, 'Executive Secretary', NULL, NULL),
	(17, 17, 'Developer II', NULL, NULL),
	(18, 18, 'Computer Systems Analyst IV', NULL, NULL),
	(19, 19, 'Engineer IV', NULL, NULL),
	(20, 20, 'Project Manager', NULL, NULL);

-- Dumping structure for table LMS.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table LMS.users: ~20 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Sherilyn Ickov', 'sickov0@ovh.net', 'gB2w@|?oJ+B!hV<', NULL, NULL),
	(2, 'Merridie Taylerson', 'mtaylerson1@nba.com', 'pM39qNvlZ(I2f_B9', NULL, NULL),
	(3, 'Barbee Pond', 'bpond2@dyndns.org', 'yA9ntt8c)ODkp4', NULL, NULL),
	(4, 'Scottie Wyper', 'swyper3@nyu.edu', 'sC9ibh,w{d', NULL, NULL),
	(5, 'Amitie Bates', 'abates4@walmart.com', 'aR5JR3ISU\'V', NULL, NULL),
	(6, 'Vassily Vowels', 'vvowels5@narod.ru', 'tQ3yb#*i2', NULL, NULL),
	(7, 'Adrianna Cattini', 'acattini6@aol.com', 'hF69.dmcz{c>>70b', NULL, NULL),
	(8, 'Beryle Hartropp', 'bhartropp7@ezinearticles.com', 'nM6h1ILH/', NULL, NULL),
	(9, 'Harrietta Etienne', 'hetienne8@meetup.com', 'uN2=<`aZj#0t', NULL, NULL),
	(10, 'Lonni Brymner', 'lbrymner9@techcrunch.com', 'fT4=%{_u/W+tT', NULL, NULL),
	(11, 'Nana Domegan', 'ndomegana@e-recht24.de', 'oT4riyKN', NULL, NULL),
	(12, 'Hazlett Undy', 'hundyb@angelfire.com', 'qM2ykwjRLGnE>', NULL, NULL),
	(13, 'Mattie De la Barre', 'mdec@csmonitor.com', 'aO4"_o<Gy<c)#', NULL, NULL),
	(14, 'Clio Start', 'cstartd@ted.com', 'oJ3\'z"*m2)(~', NULL, NULL),
	(15, 'Kelci Wolters', 'kwolterse@wikispaces.com', 'gH9~g1?VoM', NULL, NULL),
	(16, 'Brose Beamson', 'bbeamsonf@answers.com', 'qI8%ZRvnA', NULL, NULL),
	(17, 'Rikki Cowp', 'rcowpg@sohu.com', 'vG5j4UBT(m<VGO%', NULL, NULL),
	(18, 'Germaine Cristofano', 'gcristofanoh@go.com', 'cU4YWlMeu)a', NULL, NULL),
	(19, 'Biddy Darko', 'bdarkoi@technorati.com', 'mH9K$0%K<q%=.', NULL, NULL),
	(20, 'Tisha Kezor', 'tkezorj@xrea.com', 'lB5YWrl.GbV0m."Q', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
