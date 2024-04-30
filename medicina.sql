/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : medicina

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2024-04-30 03:01:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bolnichny
-- ----------------------------
DROP TABLE IF EXISTS `bolnichny`;
CREATE TABLE `bolnichny` (
  `Pacient` varchar(255) DEFAULT NULL,
  `Vrach` varchar(255) DEFAULT NULL,
  `DatNach` varchar(255) DEFAULT NULL,
  `DatConec` varchar(255) DEFAULT NULL,
  `Diagnoz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bolnichny
-- ----------------------------
INSERT INTO `bolnichny` VALUES ('Антон', 'Ваня', '21.03.68', '21.03.69', 'спид');
INSERT INTO `bolnichny` VALUES ('Дима', 'Влад', '22.22.22', '33.33.33', 'грип');

-- ----------------------------
-- Table structure for bolnicni
-- ----------------------------
DROP TABLE IF EXISTS `bolnicni`;
CREATE TABLE `bolnicni` (
  `Nomer` varchar(255) DEFAULT NULL,
  `Vrach` varchar(255) DEFAULT NULL,
  `Pacient` varchar(255) DEFAULT NULL,
  `Diagnoz` varchar(255) DEFAULT NULL,
  `Data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bolnicni
-- ----------------------------
INSERT INTO `bolnicni` VALUES ('1', '1', '1', 'Гангрена', '21.03.24');
INSERT INTO `bolnicni` VALUES ('2', '2', '2', 'Атит', '21.03.24');
INSERT INTO `bolnicni` VALUES ('3', '3', '3', 'Халера', '21.03.24');
INSERT INTO `bolnicni` VALUES ('4', '4', '4', 'Рак', '21.03.24');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `Login` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '1');
INSERT INTO `manager` VALUES ('2', '2');
INSERT INTO `manager` VALUES ('3', '3');
INSERT INTO `manager` VALUES ('4', '4');
INSERT INTO `manager` VALUES ('5', '5');

-- ----------------------------
-- Table structure for medlist
-- ----------------------------
DROP TABLE IF EXISTS `medlist`;
CREATE TABLE `medlist` (
  `Pacient` varchar(255) DEFAULT NULL,
  `Vrach` varchar(255) DEFAULT NULL,
  `DatPriem` varchar(255) DEFAULT NULL,
  `Diagnoz` varchar(255) DEFAULT NULL,
  `VidLechenia` varchar(255) DEFAULT NULL,
  `Lechenie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of medlist
-- ----------------------------
INSERT INTO `medlist` VALUES ('Антон', 'Виктор', '21.21.21', 'Спид', 'Амбулаторное', 'Мед');
INSERT INTO `medlist` VALUES ('Влад', 'Виктор', '44.44.44', 'Рак', 'Амбулаторное', 'Молоко');

-- ----------------------------
-- Table structure for pacients
-- ----------------------------
DROP TABLE IF EXISTS `pacients`;
CREATE TABLE `pacients` (
  `FamPacient` varchar(255) DEFAULT NULL,
  `NamePacient` varchar(255) DEFAULT NULL,
  `SurnamePacient` varchar(255) DEFAULT NULL,
  `DateStart` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `Numer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pacients
-- ----------------------------
INSERT INTO `pacients` VALUES ('Гагарин', 'Юрий', 'Глебович', '21.03.24', 'Гагарина', '89222506077');
INSERT INTO `pacients` VALUES ('Казаков', 'Игорь', 'Павлович', '21.03.24', 'Полевая', '89222506088');
INSERT INTO `pacients` VALUES ('Карпов', 'Максим', 'Дмитревич', '21.03.24', 'Ленина', '89223506089');

-- ----------------------------
-- Table structure for priem
-- ----------------------------
DROP TABLE IF EXISTS `priem`;
CREATE TABLE `priem` (
  `Kod_Priem` int(255) NOT NULL,
  `PacientKod` int(255) DEFAULT NULL,
  `Vrach` int(255) DEFAULT NULL,
  `DateInput` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Kod_Priem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of priem
-- ----------------------------
INSERT INTO `priem` VALUES ('1', '1', '1', '21.03.24');
INSERT INTO `priem` VALUES ('2', '2', '2', '21.03.24');
INSERT INTO `priem` VALUES ('3', '3', '3', '21.03.24');

-- ----------------------------
-- Table structure for proceduri
-- ----------------------------
DROP TABLE IF EXISTS `proceduri`;
CREATE TABLE `proceduri` (
  `Procedura name` varchar(255) DEFAULT NULL,
  `Data procedur` varchar(255) DEFAULT NULL,
  `Vrema` varchar(255) DEFAULT NULL,
  `Cabinet` varchar(255) DEFAULT NULL,
  `Pacient` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proceduri
-- ----------------------------
INSERT INTO `proceduri` VALUES ('МРТ', '21.03.24', '10:00', '22', 'Игорь');
INSERT INTO `proceduri` VALUES ('Рентген', '21.04.24', '10:00', '33', 'Влад');
INSERT INTO `proceduri` VALUES ('Кардиограмма', '11.03.24', '10:00', '44', 'Егор');

-- ----------------------------
-- Table structure for professional
-- ----------------------------
DROP TABLE IF EXISTS `professional`;
CREATE TABLE `professional` (
  `Kod_Special` int(255) NOT NULL,
  `Professional` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Kod_Special`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professional
-- ----------------------------
INSERT INTO `professional` VALUES ('1', 'Хирург');
INSERT INTO `professional` VALUES ('2', 'Уролог');
INSERT INTO `professional` VALUES ('3', 'Психиатор');
INSERT INTO `professional` VALUES ('4', 'Терапевт');
INSERT INTO `professional` VALUES ('5', 'Кардиолог');

-- ----------------------------
-- Table structure for vrachi
-- ----------------------------
DROP TABLE IF EXISTS `vrachi`;
CREATE TABLE `vrachi` (
  `Kod_vrach` int(255) NOT NULL,
  `FamVrach` varchar(255) DEFAULT NULL,
  `NameVrach` varchar(255) DEFAULT NULL,
  `SurnameVrach` varchar(255) DEFAULT NULL,
  `Professional` varchar(255) DEFAULT NULL,
  `Kab` varchar(255) DEFAULT NULL,
  `Stavka` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Kod_vrach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vrachi
-- ----------------------------
INSERT INTO `vrachi` VALUES ('1', 'Зияутдинов', 'Юрий', 'Павлович', 'Хирург', '11', '100');
INSERT INTO `vrachi` VALUES ('2', 'Шмыг', 'Глеб', 'Павлович', 'Кардиолог', '3', '120');
INSERT INTO `vrachi` VALUES ('3', 'Ломоносов', 'Максим', 'Николаевич', 'Терапевт', '2', '150');
INSERT INTO `vrachi` VALUES ('4', 'Эгнер', 'Вера', 'Тищенко', 'Психиатр', '62', '100');
INSERT INTO `vrachi` VALUES ('5', 'Тамазлыкарь', 'Ольга', 'Владимировна', 'Уролог', '71', '200');

-- ----------------------------
-- Table structure for zapis priem
-- ----------------------------
DROP TABLE IF EXISTS `zapis priem`;
CREATE TABLE `zapis priem` (
  `Idpriema` varchar(255) DEFAULT NULL,
  `Pacient` varchar(255) DEFAULT NULL,
  `Vrach` varchar(255) DEFAULT NULL,
  `Cabinet` varchar(255) DEFAULT NULL,
  `Data` varchar(255) DEFAULT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zapis priem
-- ----------------------------
INSERT INTO `zapis priem` VALUES ('1', 'Игорь', 'Глеб', '33', '77.77.77', '0000-00-00 00:00:00');
INSERT INTO `zapis priem` VALUES ('2', 'Валера', 'Вера', '44', '88.88.88', '0000-00-00 00:00:00');
INSERT INTO `zapis priem` VALUES ('3', 'Антон', 'Дима', '55', '99.99.99', '0000-00-00 00:00:00');
SET FOREIGN_KEY_CHECKS=1;
