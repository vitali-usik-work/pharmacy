-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table pharmacy.drug
CREATE TABLE IF NOT EXISTS `drug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `drugImg` text NOT NULL,
  `desc` text NOT NULL,
  `isPrescription` text NOT NULL,
  `producer` text NOT NULL,
  `country` text NOT NULL,
  `dosage` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmacy.drug: ~7 rows (approximately)
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` (`id`, `name`, `drugImg`, `desc`, `isPrescription`, `producer`, `country`, `dosage`, `type`) VALUES
	(1, 'Анальгин', 'http://localhost:8080/pharmacy/resources/img/analgin.jpg', 'Лекарство от головных болей', 'без рецепта', 'Белмедпрепараты', 'Беларусь', '112мг', 'Лекарства'),
	(2, 'Уголь активированный', 'http://localhost:8080/pharmacy/resources/img/ugol.jpg', 'Характеризуется большой поверхностной активностью, обусловливающей способность связывать вещества, понижающие поверхностную энергию (не изменяя их химическую природу). Сорбирует газы, токсины, алкалоиды, гликозиды, соли тяжелых металлов, салицилаты, барбитураты и другие соединения, уменьшает их всасывание в ЖКТ и способствует выведению из организма с фекалиями.', 'без рецепта', 'БОРЩАГОВСКИЙ ХФЗ', 'Украина', 'Таблетки 250мг х10', 'Лекарства'),
	(3, 'Но-шпа', 'http://localhost:8080/pharmacy/resources/img/noshpa.jpg', 'Дротаверин представляет собой производное изохинолина. Проявляет мощное спазмолитическое действие на гладкую мускулатуру за счет ингибирования ФДЭ. ФДЭ необходим для гидролиза цАМФ до АМФ.', 'без рецепта', 'Санофи', 'Франция', 'Таблетки 40мг х24', 'Лекарства'),
	(4, 'Валериана', 'http://localhost:8080/pharmacy/resources/img/valer.jpg', 'Валерьянка является лекарственным средством растительного происхождения и оказывает седативное действие. Проявляет так же спазмолитический эффект в отношении мочевыделительной системы и органов желудочно-кишечного тракта, и  естественным путем облегчает отход ко сну при бессоннице.', 'без рецепта', 'Биотест', 'Беларусь', 'Таблетки 40мг х20', 'Лекарства'),
	(5, 'Арпетол', 'http://localhost:8080/pharmacy/resources/img/arpetol.png', 'Специфически ингибирует вирусы гриппа А и В. Противовирусное действие обусловлено подавлением слияния липидной оболочки вируса с клеточными мембранами при контакте вируса с клеткой. Проявляет интерферониндуцирующую и иммуномодулирующую ак­тивность, стимулирует гуморальные и клеточные реакции иммунитета, фагоцитарную функцию мак­рофагов, повышает устойчивость организма к вирусным инфекциям.', 'без рецепта', 'Лекфарм', 'Беларусь', 'Таблетки 50мг х20', 'Лекарства'),
	(6, 'Ингалипт', 'http://localhost:8080/pharmacy/resources/img/inga.jpg', 'Прозрачная жидкость от светло-желтого до темно-желтого цвета, находящаяся в баллоне с клапаном непрерывного действия под давлением сжатого газа. Препарат при выходе из баллона образует струю с характерным запахом тимола и ментола.', 'без рецепта', 'Терапия', 'Румыния', 'Таблетки 10мг х20', 'Лекарства'),
	(7, 'Ампициллина тригидрат', 'http://localhost:8080/pharmacy/resources/img/ampizilin.jpg', 'Ампициллина тригидрат — антибиотик группы полусинтетических пенициллинов. Обладает антибактериальным (бактерицидным) действием. Активен в отношении широкого спектра грамположительных (альфа- и бета-гемолитические стрептококки, Streptococcus pneumoniae, Staрhylococcus spp., за исключением штаммов, продуцирующих пенициллиназу, Bacillus anthracis, Clostridium spp., Enterococcus spp.)', 'без рецепта', 'Белмедпрепараты', 'Беларусь', 'Таблетки 250мг х20', 'Антибиотики');
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;


-- Dumping structure for table pharmacy.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drugId` (`drugid`),
  KEY `userId` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmacy.order: ~3 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `drugid`, `userid`) VALUES
	(1, 7, 1),
	(2, 7, 1),
	(3, 7, 1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
