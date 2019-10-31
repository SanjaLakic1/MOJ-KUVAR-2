-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 07:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza1`
--
CREATE DATABASE IF NOT EXISTS `baza1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `baza1`;

-- --------------------------------------------------------

--
-- Table structure for table `polaganja`
--

CREATE TABLE `polaganja` (
  `indeks` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `sifra` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ocena` int(11) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `polaganja`
--

INSERT INTO `polaganja` (`indeks`, `sifra`, `ocena`, `datum`) VALUES
('mi10005', 'UVIT', 8, '2014-01-06'),
('mi12034', 'G1', 8, '2014-01-15'),
('mi12034', 'UVIT', 10, '2014-01-06'),
('mi12089', 'P1', 9, '2013-01-15'),
('mi12089', 'P2', 9, '2013-07-07'),
('mi12234', 'OOP', 8, '2013-06-12'),
('mi12234', 'UVIT', 10, '2013-01-18'),
('ml11201', 'MM', 7, '2013-02-10'),
('ml11201', 'VS', 7, '2014-02-09'),
('mn10056', 'A2', 8, '2013-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `predmeti`
--

CREATE TABLE `predmeti` (
  `sifra` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bodovi` int(11) NOT NULL,
  `semestar` int(11) NOT NULL COMMENT 'semestar u kojem se predmet slusa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `predmeti`
--

INSERT INTO `predmeti` (`sifra`, `naziv`, `bodovi`, `semestar`) VALUES
('A1', 'Analiza 1', 6, 2),
('A2', 'Analiza 2', 6, 3),
('G1', 'Geometrija 1', 5, 2),
('IIFM', 'Istorija i filozofija matematike', 3, 8),
('MM', 'Metodika nastave matematike', 6, 6),
('OOP', 'Objektno orjentisano programiranje', 6, 4),
('OS', 'Operativni sistemi', 6, 6),
('P1', 'Programiranje 1', 8, 1),
('P2', 'Programiranje 2', 8, 2),
('PPJ', 'Prevodjenje programskih jezika', 6, 5),
('UVIT', 'Uvod u Veb i Internet tehnologije', 6, 4),
('VS', 'Verovatnoca i statistika', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `radnik`
--

CREATE TABLE `radnik` (
  `id_radnika` int(11) NOT NULL,
  `ime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plata` int(11) NOT NULL,
  `polozaj` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `radno_mesto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `datum_zaposlenja` date DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `radnik`
--

INSERT INTO `radnik` (`id_radnika`, `ime`, `prezime`, `plata`, `polozaj`, `radno_mesto`, `datum_zaposlenja`, `telefon`) VALUES
(1, 'Petar', 'Petrovic', 40000, 'trgovac', 'Beograd', '2017-05-10', '0119876543'),
(2, 'Marko', 'Markovic', 55000, 'trgovac', 'Beograd', '2017-05-10', '0119876544'),
(3, 'Pera', 'Peric', 40000, 'trgovac', 'Beograd', '2017-05-10', '0118876544'),
(4, 'Jova', 'Jovic', 40000, 'trgovac', 'Beograd', '2017-05-10', '0119876554');

-- --------------------------------------------------------

--
-- Table structure for table `studenti`
--

CREATE TABLE `studenti` (
  `indeks` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `napomena` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `studenti`
--

INSERT INTO `studenti` (`indeks`, `ime`, `prezime`, `napomena`) VALUES
('mi10005', 'Jovan', 'Markovic', ''),
('mi12034', 'Zika', 'Zikic', 'disciplinska kazna'),
('mi12089', 'Marko', 'Petrovic', ''),
('mi12234', 'Pera', 'Peric', 'odlican student'),
('mi13002', 'Ivan', 'Pajic', ''),
('ml11201', 'Kosta', 'Kojic', 'ubrzano studiranje'),
('ml12127', 'Jelena', 'Jaksic', ''),
('mn10056', 'Tijana', 'Jovanovic', ''),
('mn11345', 'Maja', 'Lalic', ''),
('mr11103', 'Vladimir', 'Bojic', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `polaganja`
--
ALTER TABLE `polaganja`
  ADD PRIMARY KEY (`indeks`,`sifra`,`datum`),
  ADD KEY `sifra` (`sifra`);

--
-- Indexes for table `predmeti`
--
ALTER TABLE `predmeti`
  ADD PRIMARY KEY (`sifra`);

--
-- Indexes for table `radnik`
--
ALTER TABLE `radnik`
  ADD PRIMARY KEY (`id_radnika`);

--
-- Indexes for table `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`indeks`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `radnik`
--
ALTER TABLE `radnik`
  MODIFY `id_radnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `polaganja`
--
ALTER TABLE `polaganja`
  ADD CONSTRAINT `polaganja_ibfk_3` FOREIGN KEY (`indeks`) REFERENCES `studenti` (`indeks`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `polaganja_ibfk_4` FOREIGN KEY (`sifra`) REFERENCES `predmeti` (`sifra`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `baza2`
--
CREATE DATABASE IF NOT EXISTS `baza2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `baza2`;
--
-- Database: `blok52`
--
CREATE DATABASE IF NOT EXISTS `blok52` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `blok52`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subscribed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`username`, `password`, `email`, `created`, `subscribed`) VALUES
('asdsa', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'asdasd@adsad.com', '2019-06-08 17:29:28', 1),
('pera', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'pera@gmail.com', '2019-06-08 18:09:54', 1),
('stefan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'stefi@gmail.com', '2019-06-08 17:37:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postovi`
--

CREATE TABLE `postovi` (
  `id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postovi`
--

INSERT INTO `postovi` (`id`, `title`, `content`, `date`) VALUES
(1, 'Nas prvi post', 'Ovo je nas prvi post. Srecno!', '2019-06-08 18:16:12'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, qui eu dolorem honestatis, pri ne natum rationibus dissentiet, iusto dicunt salutandi mea ut. Sit no legere fabellas dissentiunt, in debet tibique erroribus pri. Est sumo consetetur eu, sit eu dictas nominavi. Integre recteque postulant ad has, veniam facilisi vix te. Qui id quod cetero.\r\n', '2019-06-08 18:16:46'),
(3, 'Lorem ipsum v2', 'Et mel appetere splendide. Sed stet abhorreant persequeris ei. Eu vim paulo propriae. Est deserunt argumentum ex, quo odio magna viris an. Id pro stet scaevola, mei ne oblique ancillae molestiae, te his error prompta democritum. Vix facete tibique cu, nec id alia molestie, vix et viris tamquam percipitur.\r\n', '2019-06-08 18:17:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `postovi`
--
ALTER TABLE `postovi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `postovi`
--
ALTER TABLE `postovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `magacin`
--
CREATE DATABASE IF NOT EXISTS `magacin` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `magacin`;

-- --------------------------------------------------------

--
-- Table structure for table `artkal`
--

CREATE TABLE `artkal` (
  `Naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Bar-kod` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `Jedinica mere` int(10) NOT NULL,
  `Opis` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magacioner`
--

CREATE TABLE `magacioner` (
  `JMBG` int(13) NOT NULL,
  `Ime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Prezime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Adresa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Broj telefona` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prijemnica`
--

CREATE TABLE `prijemnica` (
  `JMBG` int(13) NOT NULL,
  `Datum` datetime(6) NOT NULL,
  `Redni broj` int(255) NOT NULL,
  `Broj paketa` int(255) NOT NULL,
  `Broj komada u paketu` int(255) NOT NULL,
  `Ukupna kolicina` int(255) NOT NULL,
  `Datum isteka roka` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Jmbg se odnosi na magacionera';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prijemnica`
--
ALTER TABLE `prijemnica`
  ADD PRIMARY KEY (`JMBG`);
--
-- Database: `phpbloga`
--
CREATE DATABASE IF NOT EXISTS `phpbloga` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `phpbloga`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `content`, `created_at`, `topic`) VALUES
(1, 'Prvi post', 'Mtf tim', 'Ovo je nas prvi post', '2019-06-08 09:45:22', 'php'),
(2, 'Drugi post', 'Matf tim', 'nas drugi post', '2019-06-08 09:45:22', 'js'),
(3, 'treci post', 'Matf tim', 'ovo je nas treci posna na temu mysql', '2019-06-08 09:46:27', 'php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"projekat\",\"table\":\"receptnamirnica\"},{\"db\":\"projekat\",\"table\":\"namirnica\"},{\"db\":\"projekat\",\"table\":\"recept\"},{\"db\":\"proba\",\"table\":\"recepti\"},{\"db\":\"blok52\",\"table\":\"korisnici\"},{\"db\":\"baza1\",\"table\":\"polaganja\"},{\"db\":\"projekat\",\"table\":\"ReceptNamirnica\"},{\"db\":\"magacin\",\"table\":\"Prijemnica\"},{\"db\":\"magacin\",\"table\":\"Artkal\"},{\"db\":\"MAGACIN\",\"table\":\"Magacioner\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-28 18:26:40', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `proba`
--
CREATE DATABASE IF NOT EXISTS `proba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proba`;

-- --------------------------------------------------------

--
-- Table structure for table `recepti`
--

CREATE TABLE `recepti` (
  `id` int(11) NOT NULL,
  `ime` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recepti`
--

INSERT INTO `recepti` (`id`, `ime`) VALUES
(14, 'kasicasargarepa'),
(15, 'sanja');
--
-- Database: `projekat`
--
CREATE DATABASE IF NOT EXISTS `projekat` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `projekat`;

-- --------------------------------------------------------

--
-- Table structure for table `namirnica`
--

CREATE TABLE `namirnica` (
  `id` int(11) DEFAULT NULL,
  `ime` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `namirnica`
--

INSERT INTO `namirnica` (`id`, `ime`) VALUES
(1, 'jabuka'),
(2, 'kruska'),
(3, 'visnja'),
(4, 'sljiva'),
(5, 'grozdje'),
(6, 'brusnica'),
(7, 'ananas'),
(8, 'krompir'),
(9, 'sargarepa'),
(10, 'pasulj'),
(11, 'grasak'),
(12, 'paradajz'),
(13, 'crni luk'),
(14, 'beli luk'),
(15, 'mix povrca'),
(16, 'brasno'),
(17, 'maslinovo ulje'),
(18, 'pirinac'),
(20, 'griz'),
(21, 'jaja'),
(22, 'mleko'),
(23, 'jogurt'),
(24, 'pilece belo '),
(25, 'teletina'),
(26, 'pileci batak'),
(27, 'riba'),
(28, 'mleveno meso'),
(29, 'suvo meso'),
(30, 'tunjevina'),
(31, 'bundeva'),
(19, 'testenine');

-- --------------------------------------------------------

--
-- Table structure for table `recept`
--

CREATE TABLE `recept` (
  `id` int(11) DEFAULT NULL,
  `ime` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recept`
--

INSERT INTO `recept` (`id`, `ime`) VALUES
(1, 'Bolonjeze'),
(2, 'Kasica jabuka sargarepa'),
(3, 'Krem supa od bundeve'),
(4, 'Sareni pirinac'),
(5, 'Kasica bundeva'),
(6, 'Koh'),
(7, 'Pita sa jabukama'),
(8, 'Grasak'),
(9, 'Kasica krompir teletina'),
(10, 'Mafini sa sljivama'),
(11, 'Kasica grasak piletina'),
(12, 'Kolac sa visnjama'),
(13, 'Hleb bez glutena'),
(14, 'Kasica sargarepa'),
(15, 'Pasulj');

-- --------------------------------------------------------

--
-- Table structure for table `receptnamirnica`
--

CREATE TABLE `receptnamirnica` (
  `ID` int(50) NOT NULL,
  `IME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ReceptID` int(50) NOT NULL,
  `NamirniceID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receptnamirnica`
--

INSERT INTO `receptnamirnica` (`ID`, `IME`, `ReceptID`, `NamirniceID`) VALUES
(1, 'Bolonjeze.html', 1, 9),
(2, 'Bolonjeze.html', 1, 12),
(3, 'Bolonjeze.html', 1, 13),
(4, 'Bolonjeze.html', 1, 17),
(5, 'Bolonjeze.html', 1, 19),
(6, 'kasicajabukasargarepa.html', 2, 1),
(7, 'kasicajabukasargarepa.html', 2, 9),
(8, 'kremsupaodbundeve.html', 3, 8),
(9, 'kremsupaodbundeve.html', 3, 9),
(10, 'kremsupaodbundeve.html', 3, 13),
(11, 'kremsupaodbundeve.html', 3, 31),
(12, 'sarenipirinac.html', 4, 15),
(13, 'sarenipirinac.html', 4, 17),
(14, 'sarenipirinac.html', 4, 18),
(15, 'kasicabundeva.html', 5, 17),
(16, 'kasicabundeva.html', 5, 31),
(17, 'koh.html', 6, 20),
(18, 'koh.html', 6, 21),
(19, 'koh.html', 6, 22),
(20, 'pitasajabukama.html', 7, 1),
(21, 'pitasajabukama.html', 7, 16),
(22, 'pitasajabukama.html', 7, 17),
(23, 'pitasajabukama.html', 7, 22),
(24, 'grasak.html', 8, 9),
(25, 'grasak.html', 8, 11),
(26, 'grasak.html', 8, 13),
(27, 'grasak.html', 8, 24),
(28, 'kasicakrompirteletina.html', 9, 8),
(29, 'kasicakrompirteletina.html', 9, 17),
(30, 'kasicakrompirteletina.html', 9, 25),
(31, 'mafinisasljivama.html', 10, 4),
(32, 'mafinisasljivama.html', 10, 16),
(33, 'mafinisasljivama.html', 10, 17),
(34, 'mafinisasljivama.html', 10, 21),
(35, 'mafinisasljivama.html', 10, 23),
(36, 'kasicagrasakpiletina.html', 11, 11),
(37, 'kasicagrasakpiletina.html', 11, 17),
(38, 'kasicagrasakpiletina.html', 11, 24),
(39, 'kolacsavisnjama.html', 12, 3),
(40, 'kolacsavisnjama.html', 12, 16),
(41, 'kolacsavisnjama.html', 12, 17),
(42, 'kolacsavisnjama.html', 12, 23),
(43, 'hlebbezglutena.html', 13, 16),
(44, 'hlebbezglutena.html', 13, 17),
(45, 'kasicasargarepa.html', 14, 9),
(46, 'kasicasargarepa.html', 14, 17),
(47, 'pasulj.html', 15, 10),
(48, 'pasulj.html', 15, 13),
(49, 'pasulj.html', 15, 29);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(25) NOT NULL,
  `Username` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `EmailAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(25) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
