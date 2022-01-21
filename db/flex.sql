-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 07:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flex`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Action & adventure'),
(2, 'Classic'),
(3, 'Comedies'),
(4, 'Dramas'),
(5, 'Horror'),
(6, 'Romantic'),
(7, 'Sci - Fi & Fantasy'),
(8, 'Sports'),
(9, 'Thrillers'),
(10, 'Documentaries'),
(12, 'Teen'),
(13, 'Children & family'),
(14, 'Anime'),
(15, 'Independent'),
(16, 'Foreign'),
(17, 'Music'),
(18, 'Christmas'),
(19, 'Others'),
(20, 'Cartoon');

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`) VALUES
(1, 'Friends', 'entities/thumbnails/friends.jpg', 'entities/previews/1.mp4', 3),
(3, 'The Simpsons', 'entities/thumbnails/thesimpsons.jpg', 'entities/previews/6.mp4', 20),
(4, 'Toy Story', 'entities/thumbnails/toystory.jpg', 'entities/previews/1.mp4', 13),
(45, 'Inbetweeners', 'entities/thumbnails/inbetw.jpg', 'entities/previews/2.mp4', 3),
(46, 'Suits', 'entities/thumbnails/Suits.jpg', 'entities/previews/3.mp4', 4),
(47, 'Captain Underpants', 'entities/thumbnails/cu.jpg', 'entities/previews/4.mp4', 13),
(48, 'Brooklyn Nine-Nine', 'entities/thumbnails/bnn.jpg', 'entities/previews/5.mp4', 3),
(49, 'That 70s Show', 'entities/thumbnails/tss.jpg', 'entities/previews/6.mp4', 3),
(50, 'Pokemon', 'entities/thumbnails/pok.jpg', 'entities/previews/2.mp4', 20),
(51, 'Spongebob Squarepants', 'entities/thumbnails/sbsp.jpg', 'entities/previews/3.mp4', 20),
(52, 'Futurama', 'entities/thumbnails/fut.jpg', 'entities/previews/1.mp4', 20),
(53, 'Johnny Bravo', 'entities/thumbnails/jb.jpg', 'entities/previews/4.mp4', 20),
(54, 'Teenage Mutant Ninja Turtles', 'entities/thumbnails/ninj.jpg', 'entities/previews/5.mp4', 20),
(55, 'Power Puff Girls', 'entities/thumbnails/ppg.jpg', 'entities/previews/6.mp4', 20),
(56, 'Teen Titans Go', 'entities/thumbnails/ttg.jpg', 'entities/previews/2.mp4', 20),
(57, 'Jurassic Park', 'entities/thumbnails/jp.jpg', 'entities/previews/3.mp4', 9),
(58, 'Grease', 'entities/thumbnails/grease.jpg', 'entities/previews/4.mp4', 17),
(59, 'Paddington Bear', 'entities/thumbnails/pb.jpg', 'entities/previews/5.mp4', 13),
(60, 'Santa Clause', 'entities/thumbnails/santa.jpg', 'entities/previews/1.mp4', 18),
(61, 'Monster Family', 'entities/thumbnails/monsterfamily.jpg', 'entities/previews/6.mp4', 13),
(62, 'Top Gun', 'entities/thumbnails/tg.jpg', 'entities/previews/2.mp4', 1),
(63, 'Home Alone', 'entities/thumbnails/ha.jpg', 'entities/previews/3.mp4', 18),
(64, 'The Grinch', 'entities/thumbnails/gr.jpg', 'entities/previews/4.mp4', 18),
(65, 'National Lampoon\'s Christmas Vacation', 'entities/thumbnails/la.jpg', 'entities/previews/5.mp4', 18),
(66, 'Elf', 'entities/thumbnails/elf.jpg', 'entities/previews/6.mp4', 18),
(67, 'Fred Claus', 'entities/thumbnails/fc.jpg', 'entities/previews/2.mp4', 18),
(68, 'Jaws', 'entities/thumbnails/jaws.jpg', 'entities/previews/3.mp4', 9),
(69, 'Live Die Repeat', 'entities/thumbnails/ldr.jpg', 'entities/previews/4.mp4', 9),
(70, 'Into the Storm', 'entities/thumbnails/its.jpg', 'entities/previews/1.mp4', 9),
(81, 'Mission Impossible', 'entities/thumbnails/mi.jpg', 'entities/previews/5.mp4', 1),
(82, 'Never Back Down', 'entities/thumbnails/nbd.jpg', 'entities/previews/6.mp4', 1),
(83, 'Mechanic', 'entities/thumbnails/mec.jpg', 'entities/previews/2.mp4', 1),
(84, 'Need for Speed', 'entities/thumbnails/nfs.jpg', 'entities/previews/3.mp4', 1),
(85, 'Gravity', 'entities/thumbnails/gra.jpg', 'entities/previews/4.mp4', 7),
(86, 'Step Brothers', 'entities/thumbnails/sb.jpg', 'entities/previews/5.mp4', 3),
(87, 'Game of Thrones', 'entities/thumbnails/got.jpg', 'entities/previews/1.mp4', 4),
(88, 'Dark Money', 'entities/thumbnails/dm.jpg', 'entities/previews/6.mp4', 4),
(89, 'Yellowstone', 'entities/thumbnails/yel.jpg', 'entities/previews/2.mp4', 4),
(90, 'Manifest', 'entities/thumbnails/man.jpg', 'entities/previews/3.mp4', 4),
(91, 'The Sound of Music', 'entities/thumbnails/som.jpg', 'entities/previews/4.mp4', 17),
(92, 'Hairspray', 'entities/thumbnails/hs.jpg', 'entities/previews/1.mp4', 17),
(93, 'Believe', 'entities/thumbnails/bel.jpg', 'entities/previews/5.mp4', 17),
(94, 'Chris Brown: Till I Die', 'entities/thumbnails/tid.jpg', 'entities/previews/6.mp4', 17),
(95, 'Men in Black', 'entities/thumbnails/mib.jpg', 'entities/previews/2.mp4', 7),
(96, 'Interstellar', 'entities/thumbnails/int.jpg', 'entities/previews/3.mp4', 7),
(97, 'Transformers', 'entities/thumbnails/tra.jpg', 'entities/previews/1.mp4', 7),
(98, 'Cloudy with a Chance of Meatballs', 'entities/thumbnails/cwc.jpg', 'entities/previews/4.mp4', 13),
(99, 'District 9', 'entities/thumbnails/d9.jpg', 'entities/previews/5.mp4', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
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
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
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
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signupdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `issubscribed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `signupdate`, `issubscribed`) VALUES
(4, 'Ehsan', 'Nawaz', 'redrose4u293', 'redrose4u293@opera.com', '281809e1d0aa101e58a26e379e629054134f029448b01c3c8d8e338fef797a5f03ec8a8cce3234ed20769ab5bb4eb3f2cbb1576416a33753a09a7d59f5a49df6', '2021-12-17 17:45:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(17, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-02-10', 0, '47:13', 1, 1, 1),
(18, 'Some Sliver', 'Adipiscing id est porttitor vivamus nostra magna porta potenti accumsan eros. Sit nullam dictumst libero sociosqu accumsan sem. Interdum egestas apten', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-12-09', 0, '41:46', 1, 2, 1),
(19, 'The Dreamer\'s Flame', 'Fusce et eu, at auctor hendrerit pharetra aptent himenaeos nisl. Placerat at ultrices habitasse rhoncus eros dignissim senectus. A vivamus fermentum p', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-10-17', 0, '22:31', 1, 3, 1),
(20, 'Sliver in the Weeping', 'Dolor maecenas mauris massa et augue litora. Maecenas commodo donec potenti sodales sem. Malesuada tincidunt a integer nullam euismod pretium vulputat', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-05-14', 0, '31:24', 1, 4, 1),
(21, 'The Female of the Twins', 'Interdum etiam finibus facilisis pulvinar venenatis pharetra class ad litora duis diam ullamcorper senectus cras. Non eleifend tempor nisi primis phar', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-05-11', 0, '30:13', 1, 5, 1),
(22, 'Seventh Fire', 'Lacus tellus felis curae ornare euismod pretium inceptos sodales congue eros risus. Amet non nulla volutpat metus molestie urna tempus vivamus rhoncus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-07-19', 0, '28:47', 1, 6, 1),
(23, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 1),
(24, 'Voyager in the Lord', 'Id justo vitae nunc pulvinar quisque scelerisque ultrices proin commodo ad donec tristique cras. Sit vestibulum maximus sem ullamcorper, lacinia ligul', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-03-04', 0, '47:19', 1, 8, 1),
(25, 'Some Sliver', 'Malesuada mauris hac taciti. Dictum egestas molestie et pharetra maximus taciti litora porta blandit sem ullamcorper. Interdum nulla velit metus nibh ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-04-08', 0, '40:55', 1, 9, 1),
(26, 'Sliver in the Weeping', 'Elit justo vestibulum feugiat lacinia suspendisse semper quis ultrices primis commodo libero sodales suscipit. Adipiscing erat velit mauris efficitur ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-05-29', 0, '37:33', 1, 10, 1),
(27, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-01-13', 0, '32:10', 1, 11, 1),
(28, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-10-28', 0, '35:57', 1, 12, 1),
(29, 'The Tale\'s Door', 'Lorem viverra vitae venenatis posuere ornare sagittis enim laoreet vehicula nam imperdiet habitant, sit mattis tellus posuere pretium ad odio accumsan', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-06-11', 0, '34:56', 2, 1, 1),
(30, 'Burning Something', 'Pulvinar dui lectus per sem. Elit id volutpat tincidunt est tellus massa faucibus primis eget habitasse taciti odio morbi, id ligula mollis cubilia li', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-02-26', 0, '32:42', 2, 2, 1),
(31, 'The Shadowy Death', 'Lorem nibh integer commodo inceptos himenaeos. Amet interdum sed justo lobortis eleifend nisi molestie massa primis dictumst pellentesque torquent inc', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-06-25', 0, '40:33', 2, 3, 1),
(32, 'Seventh Fire', 'Metus tincidunt tellus primis augue consequat sagittis congue. Sit erat metus auctor massa posuere porta rhoncus blandit laoreet. Praesent a integer n', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-07-06', 0, '43:53', 2, 4, 1),
(33, 'Name of Elves', 'Egestas leo ligula est donec ullamcorper netus. Nibh nec tortor fusce et eu libero per accumsan habitant. Lobortis luctus quis risus senectus iaculis,', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-04-18', 0, '25:39', 2, 5, 1),
(34, 'Name of Elves', 'Mattis vivamus libero conubia neque, dolor non feugiat nibh tincidunt aliquam pretium turpis rhoncus. In cursus nullam arcu dictumst diam. Egestas lac', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-08-26', 0, '45:27', 2, 6, 1),
(35, 'Light in the Mage', 'Viverra maecenas quisque ut fringilla condimentum elementum. Egestas ac ut fusce augue nullam dictumst lectus maximus torquent per fames. Dolor erat m', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-09-11', 0, '31:59', 2, 7, 1),
(36, 'Obsession in the Spark', 'Sapien porttitor sociosqu diam aliquet. Elit egestas auctor faucibus dictumst rhoncus. Lorem in ligula scelerisque venenatis porttitor aptent porta po', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-07-24', 0, '47:28', 2, 8, 1),
(37, 'Flames of Dreams', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 1),
(38, 'Name of Elves', 'Malesuada etiam ut et curae commodo inceptos neque. Consectetur at volutpat tortor est et dapibus arcu dui turpis porta elementum morbi. Etiam vitae f', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-04-29', 0, '29:38', 2, 10, 1),
(39, 'Grey Sparks', 'Nulla lacus sed nec ornare arcu dictumst vel cras. Semper fringilla platea gravida imperdiet. Dictum at lacinia pretium arcu vehicula. Mi maecenas jus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-12-13', 0, '25:44', 2, 11, 1),
(40, 'Shard of Dragon', 'Lacus mattis est tellus aliquam primis sollicitudin urna sagittis pellentesque class taciti himenaeos congue habitant. Egestas facilisis habitasse, ip', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-10-19', 0, '23:58', 2, 12, 1),
(41, 'The Licking Flowers', 'Tincidunt ac quis felis conubia vehicula, velit felis orci ornare porttitor consequat tempus vivamus libero inceptos congue fames iaculis. Lacus viver', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-08-19', 0, '45:35', 3, 1, 1),
(42, 'Voyager in the Lord', 'Sit nunc pulvinar quisque aliquam varius et commodo pellentesque aptent duis imperdiet aliquet, non at maecenas tempor fringilla taciti. Sed mauris fe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-09-27', 0, '22:53', 3, 2, 1),
(43, 'The Women of the Roses', 'Velit libero ad turpis. Sit amet integer euismod inceptos. Ipsum dictum non egestas curae urna arcu vel pellentesque turpis enim potenti elementum tri', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-03-10', 0, '34:31', 3, 3, 1),
(44, 'Silver Twilight', 'Nibh tincidunt eleifend aliquam eget taciti morbi. Amet interdum finibus vestibulum metus integer facilisis venenatis purus ex pretium aptent curabitu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-01-09', 0, '36:30', 3, 4, 1),
(45, 'The Dwindling Voyage', 'Sit amet facilisis ac eleifend mollis fusce pretium vulputate consequat sodales ullamcorper. Consectetur id tincidunt est scelerisque vulputate lectus', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-10-31', 16, '25:26', 3, 5, 1),
(46, 'The Licking Flowers', 'Maecenas leo eleifend ut scelerisque ultrices maximus odio nam iaculis aenean. Erat eu efficitur. Elit sapien nunc phasellus faucibus augue sollicitud', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-05-10', 0, '33:10', 3, 6, 1),
(47, 'Obsession in the Spark', 'Sed nunc ultrices euismod condimentum neque netus, id nibh dapibus euismod condimentum consequat platea dictumst imperdiet. Dolor nulla malesuada nunc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-05-03', 0, '48:28', 3, 7, 1),
(48, 'The Force of the Silence', 'Pulvinar ex aenean. At maecenas ligula mollis est porttitor gravida libero vel taciti blandit aliquet cras, praesent suspendisse curae platea taciti s', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-12-20', 0, '25:26', 3, 8, 1),
(49, 'Flames of Dreams', 'Metus lacinia semper auctor scelerisque massa euismod arcu condimentum aptent taciti sociosqu sodales neque, integer suspendisse quisque ex posuere pl', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-07-31', 0, '34:41', 3, 9, 1),
(50, 'Silver Twilight', 'Nulla mauris luctus cursus vivamus. Interdum at suspendisse mollis hendrerit quam libero sodales dignissim. Leo nibh a aliquam ornare class eros nam s', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-11-15', 0, '21:30', 3, 10, 1),
(51, 'Silver Twilight', 'Lacus sed mattis integer lacinia tempor ex curae dapibus habitasse nostra donec neque nam, adipiscing at volutpat justo aliquam convallis faucibus tac', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-01-03', 0, '31:56', 3, 11, 1),
(52, 'Shard of Dragon', 'Mi sed tincidunt condimentum tempus libero ad enim vehicula. Lacus erat pulvinar est aliquam eget quam maximus enim sodales ullamcorper habitant. A su', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-08-12', 0, '23:13', 3, 12, 1),
(53, 'The Licking Flowers', 'Eleifend semper felis ornare vulputate quam hac odio. Vitae integer ac nec vel, praesent in sagittis torquent curabitur imperdiet sem. Mauris pulvinar', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-11-01', 0, '22:24', 4, 1, 1),
(54, 'Light in the Mage', 'Interdum non malesuada viverra a suspendisse nec semper eget libero maximus ad per. Amet adipiscing egestas vitae feugiat aliquam felis primis vel cla', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-04-08', 0, '29:25', 4, 2, 1),
(55, 'Birch of Trainer', 'Tempus aptent habitant tristique. In lacus etiam luctus pulvinar mollis venenatis quis massa nullam sollicitudin hac taciti enim. Amet elit malesuada ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-11-18', 0, '37:43', 4, 3, 1),
(56, 'Grey Sparks', 'Luctus est ex conubia congue laoreet, dictum semper tortor ultrices molestie pharetra himenaeos nam aliquet. Ipsum amet malesuada lacinia scelerisque ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-05-19', 0, '35:41', 4, 4, 1),
(57, 'The Shadowy Death', 'Interdum lacus placerat erat volutpat lobortis varius cubilia lectus vel conubia bibendum netus, sit feugiat tellus platea pellentesque donec curabitu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-05-08', 0, '44:22', 4, 5, 1),
(58, 'Some Sliver', 'Mauris est cursus tempus gravida efficitur, adipiscing integer suspendisse nec libero eros ullamcorper. Ipsum consectetur mi phasellus sollicitudin co', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-04-13', 4, '50:50', 4, 6, 1),
(59, 'Shard of Dragon', 'Elit non maecenas mattis nibh convallis fringilla curae vivamus pellentesque torquent odio congue imperdiet ullamcorper, finibus fringilla tempus hime', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-12-27', 0, '42:27', 4, 7, 1),
(60, 'Grey Sparks', 'Non egestas nulla malesuada velit vestibulum ex arcu nostra fermentum imperdiet. Sit ac nullam dictumst congue. Egestas finibus lacinia eleifend nec v', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-01-05', 0, '33:35', 4, 8, 1),
(61, 'The Tale\'s Door', 'Lacinia tellus purus augue elementum sem, ipsum sit dictum nulla in ut quis ultrices fusce tempus efficitur elementum. Est massa platea litora rhoncus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-01-19', 0, '30:46', 4, 9, 1),
(62, 'Some Sliver', 'Interdum varius curae. Mi metus facilisis quis fringilla orci libero taciti accumsan congue elementum cras, non viverra volutpat quisque gravida iacul', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-03-18', 0, '38:24', 4, 10, 1),
(63, 'The Female of the Twins', 'Egestas in sed id leo venenatis convallis ex condimentum eu taciti fermentum magna rhoncus morbi, adipiscing viverra ultrices phasellus fusce felis pr', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-08-06', 1, '25:17', 4, 11, 1),
(64, 'Birch of Trainer', 'Volutpat vestibulum suspendisse primis et libero neque aliquet morbi, adipiscing praesent at luctus taciti torquent fermentum blandit diam. Consectetu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-02-01', 14, '37:39', 4, 12, 1),
(65, 'The Force of the Silence', 'Viverra volutpat nec et ultricies lectus per. Consectetur id maecenas nec molestie convallis ultricies euismod eu vivamus ad aenean. Sed velit finibus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-03-04', 8, '44:53', 5, 1, 1),
(66, 'Birch of Trainer', 'Consectetur adipiscing pulvinar aliquam cursus eget odio, amet id mattis fringilla euismod tempus sagittis taciti aenean. Maecenas fusce nullam porta ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2002-02-05', 13, '36:22', 5, 2, 1),
(67, 'Some Sliver', 'Amet metus luctus facilisis maximus. Curabitur accumsan netus, praesent mi maecenas ornare commodo efficitur class litora turpis neque diam vehicula a', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-10-31', 16, '26:50', 5, 3, 1),
(68, 'Silver Twilight', 'Lacus volutpat a nec ultrices, etiam ligula nec tortor venenatis quis curae arcu commodo dui taciti ad curabitur sem. Finibus volutpat semper fringill', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-02-25', 0, '26:24', 5, 4, 1),
(69, 'Shard of Dragon', 'Etiam lacinia quisque cubilia neque, mauris pulvinar ut purus curae eu magna eros, interdum egestas justo luctus auctor tempor quis fringilla curae vu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-10-05', 0, '25:18', 5, 5, 1),
(70, 'Birch of Trainer', 'Mauris ac cursus felis euismod consequat libero maximus nisl. Mi viverra nec molestie ornare vel class conubia aliquet. In tortor purus platea efficit', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-09-18', 0, '44:16', 5, 6, 1),
(71, 'Flames of Dreams', 'Amet sapien at metus integer molestie felis dapibus nullam hac taciti odio elementum nam. Ultricies vel pellentesque per. Adipiscing interdum nibh int', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-08-24', 0, '36:51', 5, 7, 1),
(72, 'The Dreamer\'s Flame', 'Dui diam morbi. Dictum etiam ultrices vel sem aenean. Adipiscing dictum sed finibus venenatis primis sollicitudin pretium torquent fermentum.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-11-24', 0, '20:31', 5, 8, 1),
(73, 'Name of Elves', 'Mattis ut ante dictumst libero. Sed orci et euismod vulputate urna vivamus curabitur congue elementum senectus. Finibus nibh ligula pulvinar ut ultric', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-08-15', 0, '39:23', 5, 9, 1),
(74, 'Birch of Trainer', 'Ipsum vestibulum integer ac quisque venenatis quis convallis cursus pharetra arcu conubia inceptos enim duis. Urna risus aenean. Sit mi placerat metus', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-12-25', 0, '48:58', 5, 10, 1),
(75, 'Obsession in the Spark', 'Lorem sit id molestie felis habitasse dui efficitur potenti diam. Tincidunt integer lacinia tortor quis faucibus posuere proin dapibus urna arcu fames', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-06-03', 0, '29:14', 5, 11, 1),
(76, 'The Female of the Twins', 'Eleifend urna enim accumsan. Maecenas mauris pulvinar ut fusce fringilla curae gravida torquent odio bibendum elementum morbi. Mi mattis semper felis ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-09-22', 0, '28:21', 5, 12, 1),
(77, 'The Dreamer\'s Flame', 'Interdum suspendisse nunc ultricies eu commodo porta odio blandit tristique. In tempor gravida ad tristique. Mauris eleifend tortor tellus nullam cond', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-06-23', 0, '48:38', 6, 1, 1),
(78, 'Shard of Dragon', 'Lacinia auctor mollis nisi phasellus ex varius dapibus arcu lectus torquent per donec ullamcorper morbi. At feugiat sollicitudin tempus dignissim. Auc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-07-26', 0, '36:47', 6, 2, 1),
(79, 'The Female of the Twins', 'Non sapien mattis metus luctus tincidunt a phasellus euismod class himenaeos morbi, adipiscing at vestibulum facilisis tortor nisi ultricies enim nam,', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-09-28', 0, '22:35', 6, 3, 1),
(80, 'Obsession in the Spark', 'Nec phasellus dapibus libero accumsan. Erat velit metus tortor mollis tempor molestie posuere quam duis habitant, sed conubia donec. Mi justo libero p', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-09-23', 0, '22:30', 6, 4, 1),
(81, 'The Dreamer\'s Flame', 'Erat mauris lacinia suspendisse hendrerit quam condimentum commodo potenti cras. Volutpat justo mauris tellus nisi curae rhoncus sodales nisl iaculis,', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-01-13', 0, '21:49', 6, 5, 1),
(82, 'The Female of the Twins', 'Feugiat integer suspendisse porttitor dictumst vivamus. Lobortis ultricies vulputate torquent accumsan, consectetur erat volutpat lobortis mauris faci', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-03-04', 0, '30:50', 6, 6, 1),
(83, 'Voyager in the Lord', 'Interdum finibus ligula pulvinar cursus varius nullam euismod quam hac conubia sodales bibendum nam cras. Nibh fusce fringilla, lacus nec nullam vulpu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-01-30', 0, '48:16', 6, 7, 1),
(84, 'The Women of the Roses', 'Ipsum fringilla porta. Lobortis convallis libero fermentum. Fringilla dui duis. Amet malesuada est scelerisque quis phasellus euismod vulputate hac eu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-07-04', 0, '37:16', 6, 8, 1),
(85, 'The Danger\'s Flight', 'Consectetur lacinia ut massa faucibus consequat pellentesque blandit potenti congue diam netus. Erat tincidunt phasellus convallis felis faucibus vari', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-04-05', 0, '46:10', 6, 9, 1),
(86, 'The Shadowy Death', 'Elit ante dapibus pretium urna porttitor accumsan diam tristique. Feugiat tincidunt varius ornare urna eu per conubia, elit non in sed vestibulum metu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-10-05', 0, '37:30', 6, 10, 1),
(87, 'The Shadowy Death', 'Mi erat maecenas tincidunt ac tempor scelerisque convallis nullam vulputate gravida dui vel aptent vehicula. Interdum in velit auctor orci vel. Ad lit', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-09-30', 0, '50:20', 6, 11, 1),
(88, 'The Force of the Silence', 'Dolor praesent dictum non nunc tortor mollis nisi porta curabitur morbi aenean, dolor nibh condimentum donec curabitur tristique iaculis. Sit non sapi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-12-16', 0, '26:40', 6, 12, 1),
(89, 'The Shadowy Death', 'Amet elit interdum mollis arcu eu nostra enim rhoncus congue ullamcorper cras, suspendisse nec massa orci cubilia sollicitudin habitasse donec accumsa', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-10-24', 0, '48:32', 7, 1, 1),
(90, 'Obsession in the Spark', 'Ligula euismod dui porta. Lorem velit auctor tortor gravida aptent. Ipsum consectetur id finibus integer quisque phasellus molestie eget class blandit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-05-16', 0, '48:51', 7, 2, 1),
(91, 'The Licking Flowers', 'Interdum quisque habitasse. Lacus malesuada velit pulvinar auctor inceptos bibendum cras. Adipiscing lacus tincidunt facilisis eget pretium sagittis c', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-08-30', 0, '25:39', 7, 3, 1),
(92, 'Flames of Dreams', 'Adipiscing egestas etiam mauris cursus augue euismod hac commodo torquent nostra porta sodales suscipit. Non vitae augue dictumst nostra tristique. Fi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-11-29', 0, '36:38', 7, 4, 1),
(93, 'Birch of Trainer', 'Ipsum sit luctus scelerisque massa dui inceptos nisl, semper ex faucibus donec. Tempor posuere sagittis conubia. Praesent placerat volutpat lobortis f', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-03-05', 1, '41:11', 7, 5, 1),
(94, 'The Danger\'s Flight', 'Malesuada erat ut mollis habitasse vel tristique. Mauris nunc scelerisque phasellus purus cursus cubilia ultricies lectus inceptos eros nisl, ut quis ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-06-07', 0, '32:46', 7, 6, 1),
(95, 'The Dwindling Voyage', 'Placerat vestibulum pulvinar fringilla vulputate sodales aliquet. Fringilla cubilia vivamus enim blandit. Mi nibh nec phasellus fringilla pretium dict', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-07-13', 0, '23:56', 7, 7, 1),
(96, 'The Shadowy Death', 'Interdum egestas at lacinia ligula suspendisse curae consequat maximus morbi. Consectetur justo nibh quisque convallis ante ultricies vel torquent neq', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-07-25', 0, '22:13', 7, 8, 1),
(97, 'The Dreamer\'s Flame', 'Ipsum justo mauris quisque scelerisque tellus arcu condimentum vel turpis odio duis senectus. Dolor lacus nibh vulputate eu vel magna accumsan suscipi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-03-01', 0, '35:17', 7, 9, 1),
(98, 'Flames of Dreams', 'Velit vestibulum scelerisque convallis primis euismod tempus iaculis, vestibulum luctus nunc aliquam cursus faucibus pharetra dapibus class aptent tac', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-11-16', 0, '50:19', 7, 10, 1),
(99, 'The Licking Flowers', 'Sit nibh semper ante orci et himenaeos curabitur nisl. Sed curabitur elementum vehicula senectus. Malesuada finibus leo ut felis.', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-04-26', 0, '50:28', 7, 11, 1),
(100, 'Obsession in the Spark', 'In ut porttitor sagittis nisl. Mi finibus nibh ac mollis venenatis quis pharetra sagittis dui conubia. Consectetur erat mauris leo mollis aliquam vari', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-06-05', 0, '20:10', 7, 12, 1),
(101, 'The Female of the Twins', 'Interdum justo nec auctor tellus cursus vulputate vehicula imperdiet sem nisl. Mi tempor venenatis primis dapibus vel sociosqu ad torquent donec susci', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-11-25', 0, '20:43', 8, 1, 1),
(102, 'The Female of the Twins', 'Non etiam luctus suspendisse tortor est sagittis dui maximus efficitur accumsan, lacus sed venenatis varius primis posuere hendrerit dapibus porttitor', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-07-29', 0, '31:53', 8, 2, 1),
(103, 'Flames of Dreams', 'Interdum placerat feugiat semper fringilla eget pellentesque. Maecenas metus nunc tempus vivamus vehicula. Egestas lobortis nunc tempor venenatis mass', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-12-16', 0, '24:26', 8, 3, 1),
(104, 'Seventh Fire', 'Sit elit dictum in velit nibh tincidunt aliquam purus convallis curae sollicitudin consequat efficitur taciti, mattis volutpat lacinia nec tellus ex v', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-10-16', 0, '20:46', 8, 4, 1),
(105, 'Light in the Mage', 'Sit integer est tempor quis molestie felis hendrerit porttitor torquent laoreet imperdiet aliquet nisl, sit elit in metus nibh a ligula nunc nec fring', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-09-18', 0, '43:41', 8, 5, 1),
(106, 'The Licking Flowers', 'Volutpat purus torquent fermentum odio imperdiet. Placerat semper augue urna, lorem praesent sed etiam finibus vestibulum facilisis lacinia auctor nis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-07-23', 0, '46:24', 8, 6, 1),
(107, 'The Dreamer\'s Flame', 'Lorem consectetur sed volutpat massa et cubilia habitasse platea vivamus taciti nostra odio sem tristique. Dictum cubilia ornare sollicitudin porttito', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-10-17', 0, '21:23', 8, 7, 1),
(108, 'The Dreamer\'s Flame', 'Sit placerat feugiat aliquam fusce proin odio duis risus cras. Dolor interdum dictum sed at massa posuere cubilia hac platea eu sociosqu neque tristiq', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-05-04', 0, '49:14', 8, 8, 1),
(109, 'The Women of the Roses', 'Justo metus ligula quisque tortor tempor hendrerit sollicitudin hac eu ad per donec laoreet diam, lorem adipiscing etiam velit metus lacinia eleifend ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-10-01', 0, '34:41', 8, 9, 1),
(110, 'Silver Twilight', 'Praesent non justo metus mollis nisi aliquam nullam litora. Elit justo vestibulum libero rhoncus aliquet senectus. Semper varius tempus. Lorem etiam t', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-06-08', 0, '43:59', 8, 10, 1),
(111, 'The Women of the Roses', 'Volutpat mauris nibh molestie purus ante proin consequat eu libero litora elementum risus iaculis. Cursus per rhoncus. Sit a quisque ultrices phasellu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-12-24', 0, '44:22', 8, 11, 1),
(112, 'Obsession in the Spark', 'Malesuada a accumsan aliquet nisl. Maecenas convallis eros. Lacus sapien maecenas nunc phasellus felis ante sagittis, at maecenas lacinia hendrerit qu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-07-28', 0, '21:51', 8, 12, 1),
(113, 'Burning Something', 'Sit placerat viverra maecenas luctus nullam eu lectus litora aliquet. Malesuada suspendisse orci donec. Praesent ultrices proin nullam urna efficitur ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-10-11', 0, '40:33', 1, 1, 3),
(114, 'Obsession in the Spark', 'Dictum ac nunc scelerisque aliquam primis dapibus euismod habitasse, finibus ut tortor pellentesque rhoncus. Nibh massa ornare arcu dignissim morbi, s', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2002-06-30', 0, '26:22', 1, 2, 3),
(115, 'The Female of the Twins', 'Lacus finibus tortor massa faucibus eget. Lorem sit nulla volutpat semper orci habitant. Lorem ipsum praesent finibus lacinia nisi hendrerit sociosqu ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-03-23', 0, '28:41', 1, 3, 3),
(116, 'Some Sliver', 'Aliquam ultricies vel ad litora sodales sem. Lacus leo convallis massa augue porttitor vivamus elementum. Elit lacus velit finibus vitae vestibulum ti', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-01-20', 0, '45:21', 1, 4, 3),
(117, 'Burning Something', 'Non id scelerisque ultrices tellus purus pharetra vulputate sagittis porta curabitur ullamcorper risus. Lorem amet non in sed volutpat facilisis eleif', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-06-29', 0, '20:55', 1, 5, 3),
(118, 'The Tale\'s Door', 'Consectetur velit luctus leo semper primis pellentesque ad himenaeos accumsan. Sit adipiscing dictum placerat ligula nec quisque auctor condimentum cl', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-08-21', 0, '45:59', 1, 6, 3),
(119, 'Obsession in the Spark', 'Sed tincidunt nec tempor scelerisque nisi dui nostra eros imperdiet. Elit dictum metus nisi pharetra urna dictumst commodo pellentesque nostra incepto', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-12-06', 0, '23:37', 1, 7, 3),
(120, 'The Female of the Twins', 'Sed finibus mauris varius hac vivamus maximus ad inceptos. At justo luctus a mollis ante donec, lobortis feugiat ligula convallis condimentum magna so', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-05-22', 0, '42:22', 1, 8, 3),
(121, 'Burning Something', 'Dolor interdum placerat cursus pharetra nullam sollicitudin commodo taciti odio. Maecenas integer quisque quis ultrices orci curae habitasse inceptos ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-11-12', 0, '43:20', 1, 9, 3),
(122, 'Birch of Trainer', 'Ex proin pretium maximus torquent suscipit sem, malesuada a tempus suscipit aenean. Sed malesuada metus integer facilisis ac curae consequat platea eu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-03-29', 0, '26:31', 1, 10, 3),
(123, 'Name of Elves', 'Ac ut pellentesque, nulla viverra volutpat a quisque ornare euismod condimentum sociosqu tristique, ultrices nisi faucibus varius augue dictumst tacit', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-04-23', 0, '48:39', 1, 11, 3),
(124, 'The Dwindling Voyage', 'Malesuada metus semper est varius orci vulputate fames. Malesuada scelerisque tellus purus cubilia porttitor enim rhoncus vehicula morbi. Elit non ege', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2019-03-10', 0, '50:58', 1, 12, 3),
(125, 'Voyager in the Lord', 'Ipsum id lobortis auctor molestie hendrerit dictumst accumsan imperdiet nisl. Egestas a primis posuere hendrerit inceptos donec, adipiscing mollis nul', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-04-17', 0, '22:33', 2, 1, 3),
(126, 'The Force of the Silence', 'Dolor interdum a facilisis nunc est tempor nisi cursus fringilla quam morbi. Amet praesent egestas id nibh sollicitudin dictumst class inceptos accums', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-10-13', 0, '36:50', 2, 2, 3),
(127, 'Grey Sparks', 'Cursus quam habitasse himenaeos laoreet netus. Sed sapien pulvinar semper donec sem, lorem mattis tortor orci augue libero aenean. Lacus mauris a fauc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-11-20', 0, '48:52', 2, 3, 3),
(128, 'The Force of the Silence', 'Dictum placerat malesuada maecenas ut hendrerit taciti sociosqu elementum sem dignissim. Feugiat nisi curae consequat efficitur taciti risus. Elit nec', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-11-17', 0, '21:34', 2, 4, 3),
(129, 'Shard of Dragon', 'Ipsum consectetur lacus suspendisse posuere proin aptent sociosqu litora imperdiet senectus, dictum egestas nunc est nisi phasellus curae quam class a', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-10-21', 0, '44:24', 2, 5, 3),
(130, 'Flames of Dreams', 'Nulla viverra maecenas eleifend quisque purus eget, lorem volutpat a quis nisi purus nullam hac accumsan. Mi egestas etiam nunc auctor tortor molestie', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-10-08', 0, '45:43', 2, 6, 3),
(131, 'The Dwindling Voyage', 'Adipiscing velit volutpat lacinia tempor varius hac efficitur fermentum accumsan tristique. Aliquam felis turpis. Lacus velit tincidunt facilisis frin', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-01-19', 0, '21:19', 2, 7, 3),
(132, 'The Dreamer\'s Flame', 'Lorem dolor amet feugiat eleifend mollis ex faucibus nullam odio suscipit. Lorem dictum etiam tincidunt nisi massa quam tempus sagittis eu maximus him', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-01-17', 0, '29:28', 2, 8, 3),
(133, 'The Licking Flowers', 'Habitasse sagittis class taciti congue diam eros aliquet tristique. Lorem amet sapien feugiat fusce nullam efficitur sociosqu torquent turpis donec ve', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-01-08', 0, '22:17', 2, 9, 3),
(134, 'The Dwindling Voyage', 'Quis sagittis porta accumsan. Elit condimentum taciti ad habitant netus fames. Nibh ornare habitasse donec morbi. Elit placerat at suspendisse sollici', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-11-19', 0, '43:15', 2, 10, 3),
(135, 'Voyager in the Lord', 'Etiam viverra lobortis ultrices purus orci vulputate dui maximus, lacus luctus lectus ad duis elementum iaculis. Amet metus eu, justo feugiat massa co', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-06-04', 0, '47:38', 2, 11, 3),
(136, 'The Licking Flowers', 'Lobortis luctus pulvinar nisi phasellus purus pretium urna porttitor condimentum tempus efficitur odio blandit. Dolor praesent in nunc pulvinar mollis', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-08-25', 0, '23:42', 2, 12, 3),
(137, 'The Dwindling Voyage', 'Ipsum elit nulla mollis aliquam proin litora turpis enim accumsan. Praesent non erat vitae tortor massa hendrerit nullam arcu efficitur nostra porta d', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-06-08', 0, '49:39', 3, 1, 3),
(138, 'Voyager in the Lord', 'Id viverra maecenas nibh ligula eleifend orci eget vulputate per turpis enim netus nisl, sapien luctus pulvinar curae ornare condimentum vivamus ad ne', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-02-11', 0, '31:22', 3, 2, 3),
(139, 'Sliver in the Weeping', 'Mi malesuada faucibus porta eros tristique fames nisl, dictum ultrices fringilla. Egestas facilisis ultrices cursus orci posuere sollicitudin condimen', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-07-08', 0, '38:38', 3, 3, 3),
(140, 'The Licking Flowers', 'Etiam eleifend faucibus dui lectus ad elementum sem morbi aenean. Lorem lobortis tortor pellentesque torquent per diam. In lacus purus euismod pellent', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-10-01', 0, '45:55', 3, 4, 3),
(141, 'Obsession in the Spark', 'Sit amet lacus luctus phasellus cubilia tempus dictumst eu class himenaeos enim curabitur duis, at facilisis est ultrices fusce orci posuere pharetra ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-03-28', 0, '30:31', 3, 5, 3),
(142, 'Burning Something', 'Sed mollis convallis ante consequat torquent nostra fermentum rhoncus congue laoreet nam sem fames, ipsum dolor amet malesuada tempor aliquam convalli', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-12-05', 0, '45:44', 3, 6, 3),
(143, 'Sliver in the Weeping', 'Malesuada nibh a nec fusce ornare pretium enim suscipit. In maecenas mauris venenatis orci posuere hendrerit condimentum platea ad conubia enim bibend', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-11-12', 0, '21:31', 3, 7, 3),
(144, 'Silver Twilight', 'Amet nulla lacus metus eleifend purus urna inceptos rhoncus nam, in facilisis est proin dictumst sodales. Quisque primis hac dignissim, dolor sit prae', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-08-31', 0, '26:34', 3, 8, 3),
(145, 'Burning Something', 'Purus hendrerit duis, dolor sit sed malesuada id auctor venenatis faucibus arcu gravida diam risus. Nulla auctor venenatis molestie massa orci augue a', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-04-24', 0, '50:39', 3, 9, 3),
(146, 'Seventh Fire', 'Lorem dictum nulla velit ac est porttitor nostra turpis curabitur rhoncus potenti senectus fames, etiam facilisis pulvinar ut massa orci ornare magna ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2000-05-28', 0, '28:13', 3, 10, 3),
(147, 'The Tale\'s Door', 'Lorem ipsum lacus mattis luctus ligula pulvinar venenatis primis dapibus vulputate libero dignissim. Praesent erat nisi sociosqu, vitae primis euismod', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-12-20', 0, '21:39', 3, 11, 3),
(148, 'Obsession in the Spark', 'Sit sapien quisque scelerisque ultrices ex pretium bibendum, id nibh phasellus felis vulputate inceptos duis. Non tellus dapibus lectus efficitur taci', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-05-12', 0, '43:46', 3, 12, 3),
(149, 'The Women of the Roses', 'Adipiscing leo integer posuere himenaeos iaculis aenean, lobortis pharetra tempus. Ipsum adipiscing viverra metus faucibus arcu libero class aptent el', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-09-30', 0, '31:44', 4, 1, 3),
(150, 'The Danger\'s Flight', 'Finibus vestibulum metus eleifend scelerisque primis sollicitudin consequat libero pellentesque inceptos elementum nam senectus. Quisque semper ex pha', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-12-12', 0, '24:58', 4, 2, 3),
(151, 'Voyager in the Lord', 'Amet sapien lobortis tempor venenatis fringilla hac magna nisl. Sit metus feugiat convallis et cubilia sollicitudin quam lectus maximus himenaeos aliq', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-07-13', 0, '43:25', 4, 3, 3),
(152, 'Flames of Dreams', 'Sit etiam a facilisis est augue urna litora. Consectetur interdum justo nibh ex pharetra himenaeos fames. Aliquam et conubia. Finibus viverra venenati', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-11-07', 0, '24:24', 4, 4, 3),
(153, 'The Dreamer\'s Flame', 'Dictum sed placerat etiam integer aliquam curabitur sodales elementum diam, ipsum sit non in luctus eleifend convallis ante proin dapibus habitasse sa', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-09-01', 0, '29:31', 4, 5, 3),
(154, 'Grey Sparks', 'Fusce maximus per, vitae leo felis ante. Adipiscing at a quis felis ultricies pretium dictumst inceptos himenaeos fermentum turpis curabitur laoreet. ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-09-24', 0, '33:45', 4, 6, 3),
(155, 'The Tale\'s Door', 'Interdum mi egestas leo cursus pharetra arcu platea conubia ullamcorper senectus. Erat id lobortis semper fringilla orci eget hac eu lectus aptent con', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-10-13', 0, '47:41', 4, 7, 3),
(156, 'The Tale\'s Door', 'Sed facilisis ligula nec mollis varius cubilia sollicitudin ad sodales imperdiet, elit in maecenas volutpat feugiat urna porttitor vel efficitur conub', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-05-08', 0, '45:11', 4, 8, 3),
(157, 'The Danger\'s Flight', 'Adipiscing lacus etiam euismod arcu efficitur suscipit vehicula imperdiet. Viverra ac tortor quis orci condimentum gravida vivamus pellentesque effici', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-05-31', 0, '45:52', 4, 9, 3),
(158, 'Seventh Fire', 'Dictum at luctus tempor convallis, ipsum mollis dapibus eu litora odio accumsan nam, lorem dolor malesuada mattis eleifend tortor et eu inceptos ferme', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-06-07', 0, '31:30', 4, 10, 3),
(159, 'Silver Twilight', 'Dictum finibus facilisis ligula phasellus molestie ex primis tempus sagittis nostra potenti bibendum dignissim morbi. Nunc posuere vivamus, ipsum sit ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-04-04', 0, '32:44', 4, 11, 3),
(160, 'The Licking Flowers', 'Nulla id faucibus orci morbi, at finibus scelerisque aliquam felis libero nisl. Condimentum lectus blandit. Amet a tortor primis pretium arcu quam dic', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-08-09', 0, '34:37', 4, 12, 3),
(161, 'Toy Story', 'Non lacus maecenas leo quisque ultrices platea enim accumsan. Ipsum luctus ultrices cursus hendrerit tempus hac. Nec augue sollicitudin tristique, ves', 'entities/videos/3.mp4', 1, '2019-10-12 22:07:53', '2000-08-14', 0, '25:51', 0, 0, 4),
(196, 'Birch of Trainer', 'Lobortis ultrices varius et tempus sagittis conubia duis. Dolor nibh ligula vehicula. Lacinia quis proin eu taciti litora netus. Malesuada ut quis pri', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-06-29', 0, '31:30', 1, 1, 45),
(197, 'The Tale\'s Door', 'Mi metus mauris suspendisse ex massa proin hendrerit condimentum pellentesque sociosqu litora nam imperdiet morbi. Adipiscing mi at volutpat aliquam u', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-04-05', 0, '49:29', 1, 2, 45),
(198, 'Shard of Dragon', 'Nulla ac massa vivamus sodales. Sit in erat massa per. Nulla nisi ex varius cubilia porttitor quam condimentum nostra eros habitant. Vitae vestibulum ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-08-25', 0, '32:28', 1, 3, 45),
(199, 'The Dwindling Voyage', 'Malesuada erat viverra facilisis semper faucibus aptent taciti sem senectus. Auctor ante vivamus nostra. Nulla sed lobortis tortor posuere quam vel en', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-10-19', 0, '46:28', 1, 4, 45),
(200, 'The Dwindling Voyage', 'Sed id mauris luctus ultricies lectus turpis porta enim curabitur diam imperdiet dignissim netus. Amet egestas lacinia auctor faucibus ante dapibus ha', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-01-04', 0, '43:43', 1, 5, 45),
(201, 'Grey Sparks', 'Amet interdum mi volutpat vestibulum nec tortor fringilla hendrerit consequat rhoncus accumsan sem cras. Feugiat semper tortor ante consequat vivamus ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-11-21', 0, '44:44', 1, 6, 45),
(202, 'The Dreamer\'s Flame', 'Finibus justo vitae semper ultrices orci cubilia maximus neque duis risus, adipiscing egestas ex vivamus dignissim netus, maecenas metus eleifend hend', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-07-18', 0, '27:46', 1, 7, 45),
(203, 'Some Sliver', 'Dolor nulla placerat facilisis eleifend est quis convallis tempus fermentum. Ipsum in felis vulputate commodo maximus sem risus. Amet purus et posuere', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-04-02', 0, '20:56', 1, 8, 45),
(204, 'Shard of Dragon', 'Nunc est molestie quam vivamus libero magna, justo pulvinar purus orci turpis. Praesent sapien velit scelerisque molestie varius sociosqu litora imper', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-06-03', 0, '28:26', 1, 9, 45),
(205, 'Some Sliver', 'Ipsum integer quisque quis phasellus molestie pharetra odio risus. Egestas malesuada etiam maecenas luctus fusce ante pretium vulputate gravida vel fe', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-01-17', 0, '46:47', 1, 10, 45),
(206, 'Some Sliver', 'Viverra et senectus, vestibulum molestie nullam vehicula. Adipiscing elit justo nibh lacinia dictumst vivamus torquent magna vehicula. Lorem mi placer', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-02-14', 0, '39:19', 2, 1, 45),
(207, 'Grey Sparks', 'Amet a platea. Maecenas lobortis mollis tellus phasellus felis curae sollicitudin nisl. Id vestibulum nec pulvinar tortor quis nisi tempus platea libe', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-09-01', 0, '46:39', 2, 2, 45),
(208, 'Silver Twilight', 'Sed sapien feugiat posuere cubilia augue pretium libero pellentesque fames aenean. Sit malesuada justo lobortis feugiat nec primis cubilia urna habita', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-06-18', 0, '29:45', 2, 3, 45),
(209, 'Seventh Fire', 'Lacus sed scelerisque vulputate arcu turpis blandit. In lacus malesuada leo tempor fringilla nullam arcu porttitor hac torquent morbi. Lorem mauris co', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-03-15', 0, '37:57', 2, 4, 45),
(210, 'The Female of the Twins', 'Venenatis felis vivamus cras. Dolor consectetur praesent mattis vitae taciti, ipsum elit etiam nibh a tempor purus ex faucibus cubilia platea efficitu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-04-23', 0, '42:59', 2, 5, 45),
(211, 'Flames of Dreams', 'Elit egestas lacus placerat at volutpat vitae feugiat purus ornare tempus class enim rhoncus netus. A libero aptent. Lacus mattis mauris nunc pulvinar', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-07-15', 0, '29:29', 2, 6, 45),
(212, 'Seventh Fire', 'Ipsum in ac felis porttitor gravida rhoncus congue diam vehicula netus, sapien placerat volutpat luctus ligula quisque scelerisque tellus felis pharet', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-12-11', 0, '25:27', 2, 7, 45),
(213, 'The Tale\'s Door', 'Ipsum lacus mattis ligula nec scelerisque aliquam cursus primis posuere gravida nostra odio diam. Nulla vitae metus mollis class. Elit non egestas in ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-12-31', 0, '28:51', 2, 8, 45),
(214, 'The Danger\'s Flight', 'Nibh pulvinar phasellus faucibus libero per nostra fermentum. Lobortis tincidunt molestie vulputate habitasse himenaeos potenti neque. In at mattis lo', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-08-15', 0, '25:53', 2, 9, 45),
(215, 'The Dreamer\'s Flame', 'Lacus sed viverra lobortis integer mollis purus varius vivamus class per fermentum odio blandit potenti. Elit interdum justo leo eleifend tempor scele', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-04-19', 0, '47:20', 2, 10, 45),
(216, 'The Dwindling Voyage', 'Egestas finibus ligula nec faucibus ornare nullam euismod consequat sociosqu turpis. Placerat volutpat feugiat integer quis netus, interdum lobortis f', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-08-06', 0, '47:29', 3, 1, 45),
(217, 'The Force of the Silence', 'Dolor mattis vitae integer eleifend est nullam tempus pellentesque per conubia turpis congue suscipit, maecenas porttitor iaculis. Nulla integer lacin', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-12-27', 0, '30:23', 3, 2, 45),
(218, 'Light in the Mage', 'Praesent hac dictumst litora. Dictum facilisis ut sem tristique. Etiam et consequat tempus sagittis per enim nam. Sapien velit finibus est ex pretium ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-03-22', 0, '42:14', 3, 3, 45),
(219, 'The Dreamer\'s Flame', 'Dictum velit viverra mattis luctus leo tempor commodo. Placerat viverra leo molestie fringilla ornare tristique iaculis, non erat mattis volutpat cubi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-10-09', 0, '32:45', 3, 4, 45),
(220, 'The Women of the Roses', 'Egestas erat lacinia scelerisque pharetra urna condimentum libero iaculis, vestibulum tellus orci et curae lectus pellentesque himenaeos fermentum neq', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-05-08', 0, '46:45', 3, 5, 45),
(221, 'Grey Sparks', 'Interdum finibus viverra vitae leo ac pulvinar ex sollicitudin sagittis commodo aptent aliquet iaculis. Sed finibus maecenas conubia fermentum ullamco', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-07-11', 0, '48:29', 3, 6, 45),
(222, 'The Dwindling Voyage', 'Sapien viverra feugiat facilisis quis felis fringilla eget pretium eros habitant fames. Praesent vitae feugiat tincidunt integer tortor felis commodo ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-05-31', 0, '25:32', 3, 7, 45),
(223, 'The Dwindling Voyage', 'Adipiscing viverra metus ut semper ex posuere nullam taciti, interdum est scelerisque aliquam dapibus nullam porttitor aptent himenaeos potenti, mi pu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-11-18', 0, '27:53', 3, 8, 45),
(224, 'Voyager in the Lord', 'Ipsum nulla platea libero per sodales aliquet nisl. Egestas tincidunt curae himenaeos magna. Mi viverra tellus nisi curae arcu habitasse ad torquent. ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-08-18', 0, '22:14', 3, 9, 45),
(225, 'Some Sliver', 'Sed metus luctus leo cubilia habitasse torquent inceptos suscipit nam tristique. Vestibulum curae proin nullam consequat porta curabitur. Etiam quis a', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-01-11', 0, '41:19', 3, 10, 45),
(226, 'Obsession in the Spark', 'Malesuada leo quisque tempor varius platea fames. Mi velit nibh eleifend varius gravida sem. Dolor mi erat vestibulum nibh a integer quisque semper al', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-09-15', 0, '33:37', 1, 1, 46),
(227, 'Silver Twilight', 'Amet praesent erat velit luctus feugiat tincidunt ornare tempus pellentesque inceptos sodales dignissim morbi cras, est phasellus aptent. Lorem dictum', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-06-20', 0, '21:46', 1, 2, 46),
(228, 'The Female of the Twins', 'Ac orci per duis, amet non lacus curae dapibus tempus maximus magna elementum diam ullamcorper. Sit tincidunt ultrices posuere pharetra euismod vulput', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-11-03', 0, '22:18', 1, 3, 46),
(229, 'The Tale\'s Door', 'Ipsum id ultricies ornare arcu vel potenti elementum. Ipsum semper dui efficitur congue diam tristique, maecenas mattis metus quisque tellus massa hab', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-07-24', 0, '31:45', 1, 4, 46),
(230, 'Seventh Fire', 'Mi malesuada eleifend auctor pharetra sollicitudin habitasse libero inceptos donec potenti. Interdum etiam integer semper aliquam fringilla orci condi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-01-07', 0, '28:53', 1, 5, 46),
(231, 'The Danger\'s Flight', 'Lorem amet convallis sollicitudin arcu aptent enim, dictum erat finibus auctor hendrerit per rhoncus laoreet elementum aenean. Velit tortor proin nam.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-05-11', 0, '27:54', 1, 6, 46),
(232, 'The Dwindling Voyage', 'In facilisis suspendisse fringilla proin porttitor platea elementum fames, elit non at velit finibus volutpat mauris fringilla et augue efficitur soci', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-02-25', 0, '33:46', 1, 7, 46),
(233, 'Birch of Trainer', 'Dolor mi sapien mauris lacinia pulvinar cubilia rhoncus blandit potenti tristique nisl, nulla metus lobortis luctus pulvinar quis inceptos congue diam', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-05-01', 0, '40:15', 2, 1, 46),
(234, 'Name of Elves', 'Eleifend hendrerit eget condimentum platea gravida nostra fermentum porta accumsan imperdiet netus, egestas finibus maecenas nec tellus massa varius c', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-11-09', 0, '49:28', 2, 2, 46),
(235, 'Silver Twilight', 'Etiam mattis porttitor eu taciti nostra himenaeos bibendum elementum ullamcorper morbi. A scelerisque faucibus eu class aptent fermentum enim vehicula', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-03-21', 0, '22:27', 2, 3, 46),
(236, 'The Dwindling Voyage', 'Dolor interdum dictum erat vehicula, adipiscing mi lacinia ac semper nisi orci eget arcu turpis donec neque vehicula imperdiet iaculis. Nec primis lib', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-05-05', 0, '27:15', 2, 4, 46),
(237, 'Some Sliver', 'Lorem finibus a ac ut tellus massa primis vivamus risus habitant tristique. Auctor felis et ornare conubia habitant, adipiscing praesent vestibulum nu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-10-23', 0, '35:37', 2, 5, 46);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(238, 'The Licking Flowers', 'Elit feugiat auctor tortor venenatis augue per conubia turpis magna vehicula. Sit pulvinar nisi nullam hac habitasse. Amet integer ac est sociosqu ad ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-05-07', 0, '27:48', 2, 6, 46),
(239, 'The Women of the Roses', 'Adipiscing etiam id ligula eleifend nisi ante orci ultricies ornare pretium porta tristique cras. Praesent venenatis massa ante. Adipiscing nulla male', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-12-05', 0, '45:31', 2, 7, 46),
(240, 'Some Sliver', 'Sit aliquam purus primis pretium porttitor commodo vivamus sociosqu inceptos curabitur duis imperdiet, praesent lacinia suspendisse est massa porttito', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-04-19', 0, '30:32', 3, 1, 46),
(241, 'Grey Sparks', 'Vitae convallis gravida, ipsum dolor praesent lacinia per inceptos blandit dignissim risus aliquet, ipsum interdum dictum a proin pharetra condimentum', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-08-14', 0, '43:21', 3, 2, 46),
(242, 'The Danger\'s Flight', 'Adipiscing sed id tincidunt integer felis urna quam condimentum eu ad sodales netus iaculis. Interdum in malesuada arcu pellentesque porta potenti sem', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-03-06', 0, '40:43', 3, 3, 46),
(243, 'The Female of the Twins', 'Velit metus mollis tellus fringilla lectus elementum nisl. Amet interdum egestas etiam lacinia ligula aptent rhoncus fames, finibus commodo efficitur ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-07-12', 0, '43:34', 3, 4, 46),
(244, 'The Shadowy Death', 'Dictum integer augue eu turpis, id venenatis posuere dictumst sagittis cras. Adipiscing in lacus semper ultrices convallis posuere commodo taciti pote', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-05-13', 0, '30:57', 3, 5, 46),
(245, 'The Danger\'s Flight', 'Primis tempus eu commodo odio duis eros. Placerat at id volutpat luctus a facilisis eleifend ultrices molestie arcu condimentum netus. Praesent viverr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-11-13', 0, '29:52', 3, 6, 46),
(246, 'Light in the Mage', 'Interdum viverra lobortis quisque primis posuere augue nullam urna quam libero aliquet. Sapien placerat etiam ut quis posuere ornare arcu eu, non plac', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-12-14', 0, '23:36', 3, 7, 46),
(247, 'Some Sliver', 'Justo vitae ante eget consequat torquent porta, non velit rhoncus. Lacinia dapibus odio. Consectetur adipiscing non vitae facilisis est et posuere aug', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-07-07', 0, '23:47', 1, 1, 47),
(248, 'The Women of the Roses', 'Interdum sapien suspendisse phasellus consequat conubia fames. Erat luctus ligula auctor nisi dictumst diam imperdiet. Sed lobortis eleifend torquent ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-11-02', 0, '46:41', 1, 2, 47),
(249, 'Obsession in the Spark', 'Dolor elit sapien id lacinia primis posuere proin pharetra hac eu enim aliquet iaculis. Ultrices aliquam euismod risus. Orci et posuere euismod. Volut', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-02-08', 0, '35:36', 1, 3, 47),
(250, 'The Licking Flowers', 'Sed posuere hendrerit dapibus, praesent erat feugiat dapibus pretium vulputate class rhoncus nam tristique senectus aenean. Velit facilisis quisque ap', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-07-02', 0, '24:40', 1, 4, 47),
(251, 'Light in the Mage', 'Dictum non in lacus sapien velit volutpat vestibulum suspendisse quisque scelerisque primis curae inceptos. Placerat nibh felis varius pharetra eu him', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-02-15', 0, '32:43', 1, 5, 47),
(252, 'The Licking Flowers', 'Tellus cursus curae vel nostra. Ipsum sed rhoncus. Praesent sapien etiam vestibulum fringilla ante et cubilia ornare euismod sagittis gravida inceptos', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-01-10', 0, '21:37', 1, 6, 47),
(253, 'Flames of Dreams', 'Dictum non in integer arcu pellentesque aptent taciti blandit duis sem nisl. Ipsum etiam luctus integer phasellus fusce primis dictumst vel class. Ege', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-08-08', 0, '24:34', 1, 7, 47),
(254, 'Shard of Dragon', 'Velit est tempor tellus fringilla cubilia nullam taciti laoreet diam habitant, praesent dictum mauris a quisque quam condimentum vel torquent rhoncus.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-09-07', 0, '41:36', 1, 8, 47),
(255, 'Grey Sparks', 'Nibh torquent nostra fermentum, justo cubilia curae proin habitasse. Adipiscing nulla volutpat nibh fringilla ante cubilia pretium platea dictumst pel', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2011-10-15', 0, '39:23', 1, 9, 47),
(256, 'The Shadowy Death', 'Lorem id mattis nunc ut phasellus convallis eget hac vel nam dignissim morbi. Adipiscing vitae ornare eget vel nam netus. Tincidunt tempor sollicitudi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-02-23', 0, '41:32', 2, 1, 47),
(257, 'Burning Something', 'Dictum ultrices ante himenaeos dignissim. Amet aliquam aptent, amet urna arcu condimentum bibendum senectus, id ex orci ultricies vulputate urna vivam', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2002-04-08', 0, '22:41', 2, 2, 47),
(258, 'Birch of Trainer', 'Adipiscing justo vitae facilisis eleifend ut ultrices nisi molestie fusce ante cubilia curae congue. Dictum finibus mauris nec tempor purus ex felis p', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-09-01', 0, '40:38', 2, 3, 47),
(259, 'The Dreamer\'s Flame', 'Adipiscing praesent finibus tincidunt lacinia orci curae quam tempus class per suscipit imperdiet, egestas volutpat lobortis varius et inceptos blandi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-12-29', 0, '34:30', 2, 4, 47),
(260, 'Seventh Fire', 'Lorem amet auctor quis fusce condimentum tempus lectus. Sit lacus placerat tellus pretium dictumst sodales tristique. A dapibus netus, sit maecenas ve', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-05-28', 0, '47:52', 2, 5, 47),
(261, 'Obsession in the Spark', 'Nulla sed id cubilia arcu quam vivamus himenaeos porta netus aenean. Erat integer ad accumsan. Non integer suspendisse ex sollicitudin dictumst eu lib', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-01-27', 0, '38:29', 2, 6, 47),
(262, 'Shard of Dragon', 'Justo mauris ligula quisque phasellus hendrerit urna efficitur sodales eros habitant, praesent interdum finibus lacinia semper tortor convallis varius', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-07-16', 0, '36:59', 2, 7, 47),
(263, 'Grey Sparks', 'Est primis hac eu fermentum. Finibus vestibulum mollis est ornare vel litora odio elementum suscipit imperdiet nisl. Sed est potenti fames cras. Feugi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-10-06', 0, '40:28', 2, 8, 47),
(264, 'The Female of the Twins', 'Elit sed fusce posuere ornare pretium magna sodales neque nam dignissim habitant. Mi metus leo integer auctor tellus dictumst sagittis torquent incept', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-03-06', 0, '45:56', 2, 9, 47),
(265, 'Shard of Dragon', 'Sit sed id metus a ac platea dictumst maximus donec curabitur bibendum elementum suscipit habitant. Dolor lacinia molestie purus vulputate condimentum', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-06-20', 0, '28:49', 3, 1, 47),
(266, 'Name of Elves', 'Non sapien etiam mattis leo est fusce eu libero potenti. Mi lacus erat nisi aliquam ultricies sagittis eu per turpis eros. Luctus nibh auctor condimen', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-02-12', 0, '27:53', 3, 2, 47),
(267, 'The Female of the Twins', 'Dolor viverra mauris luctus ultrices condimentum, malesuada velit volutpat nunc et curae conubia curabitur accumsan sem netus iaculis. Facilisis nec q', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-11-06', 0, '43:35', 3, 3, 47),
(268, 'The Shadowy Death', 'Justo vitae nibh tincidunt quis phasellus dignissim morbi cras, dictum id feugiat primis posuere augue eu class inceptos enim curabitur nisl, lorem ve', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-01-26', 0, '48:15', 3, 4, 47),
(269, 'Obsession in the Spark', 'Eleifend mollis primis hendrerit eu libero vel porta vehicula risus. Sit interdum ligula ac fringilla primis lectus turpis magna nam ullamcorper risus', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-09-13', 0, '48:29', 3, 5, 47),
(270, 'Seventh Fire', 'Elit interdum mattis lacinia ac mollis tempor augue gravida sociosqu sem, consectetur tempor ante posuere proin porttitor tempus dui sociosqu himenaeo', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-04-17', 0, '48:16', 3, 6, 47),
(271, 'Grey Sparks', 'At lobortis fusce sagittis rhoncus diam habitant, justo suspendisse tortor venenatis eget pretium hac vivamus maximus litora suscipit, orci curae euis', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-12-06', 0, '22:50', 3, 7, 47),
(272, 'The Women of the Roses', 'Sed nunc curae lectus per conubia potenti sodales aliquet netus, nibh semper dapibus condimentum habitasse dui libero turpis rhoncus ullamcorper, dict', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-11-28', 0, '32:46', 3, 8, 47),
(273, 'The Dreamer\'s Flame', 'Dictum sapien justo feugiat quis orci pharetra commodo vel. Erat etiam ex varius. Amet praesent justo venenatis quis et ad himenaeos donec risus. Prae', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-06-14', 0, '29:31', 3, 9, 47),
(274, 'The Danger\'s Flight', 'Sapien volutpat vestibulum mauris et pharetra rhoncus vehicula eros, feugiat suspendisse tellus ante curae pharetra libero porta suscipit, lorem mi in', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-02-11', 0, '36:12', 4, 1, 47),
(275, 'Silver Twilight', 'Lacinia ligula ut nisi varius et cubilia urna maximus sociosqu turpis imperdiet. Adipiscing feugiat ac est efficitur congue aenean. Mattis pulvinar an', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-09-28', 0, '29:46', 4, 2, 47),
(276, 'The Dwindling Voyage', 'Id velit quisque tellus primis dictumst neque duis bibendum sem morbi, id justo metus leo lacinia eleifend scelerisque molestie hac pellentesque ad hi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-12-07', 0, '31:31', 4, 3, 47),
(277, 'The Shadowy Death', 'Ipsum nibh facilisis ullamcorper. Dolor vestibulum tempus lectus nam netus, consectetur praesent mauris a pulvinar tempor scelerisque fusce primis con', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-03-17', 0, '36:38', 4, 4, 47),
(278, 'Some Sliver', 'Finibus integer auctor mollis aliquam primis consequat conubia turpis congue imperdiet sem nisl iaculis. Ipsum a euismod tempus netus. Volutpat varius', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-03-05', 0, '40:17', 4, 5, 47),
(279, 'The Shadowy Death', 'Ut aliquam cubilia torquent eros senectus. Amet mi non semper aliquam ultricies. Leo posuere cubilia sollicitudin euismod sagittis litora. Vitae imper', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-02-08', 0, '24:18', 4, 6, 47),
(280, 'Obsession in the Spark', 'Consectetur vestibulum facilisis orci nullam, dolor id finibus tincidunt quisque venenatis hendrerit quam vel efficitur elementum nam. Sapien nunc ut ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-05-21', 0, '47:23', 4, 7, 47),
(281, 'Name of Elves', 'Dolor euismod consequat eu nam sem. Posuere urna gravida imperdiet. Etiam a ultrices massa duis. Amet lacinia hendrerit pharetra vulputate habitasse d', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-06-03', 0, '27:21', 4, 8, 47),
(282, 'The Dreamer\'s Flame', 'Ipsum id integer semper felis faucibus dui, erat viverra lobortis luctus lacinia aliquam massa dui maximus enim cras. Dictum nulla malesuada molestie ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-05-23', 0, '31:58', 4, 9, 47),
(283, 'Grey Sparks', 'Sit eu odio dignissim aliquet. Sapien quis phasellus vulputate class torquent rhoncus, erat vestibulum arcu. Sit in a nec scelerisque primis orci pell', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-06-02', 0, '39:10', 5, 1, 47),
(284, 'Obsession in the Spark', 'Sapien malesuada vestibulum lobortis faucibus primis commodo class litora sodales neque iaculis. Ultricies euismod pretium urna habitasse nostra curab', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-01-26', 0, '22:46', 5, 2, 47),
(285, 'Light in the Mage', 'Consectetur in vitae leo mollis phasellus felis sollicitudin dui class sem aenean. Praesent placerat finibus eleifend venenatis nisi fringilla habitas', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-05-16', 0, '39:36', 5, 3, 47),
(286, 'Birch of Trainer', 'Consectetur pharetra hac. Dictum maecenas justo lacinia blandit. Commodo libero dignissim, amet interdum non placerat nisi primis euismod taciti torqu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-01-30', 0, '24:40', 5, 4, 47),
(287, 'Grey Sparks', 'Volutpat eu efficitur litora nostra diam nam netus. Amet dictum mi tincidunt ut auctor convallis posuere euismod platea imperdiet habitant, vitae inte', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-04-14', 0, '36:25', 5, 5, 47),
(288, 'The Danger\'s Flight', 'Lacus quisque eget odio suscipit. Erat lobortis a felis hac per porta duis elementum imperdiet tristique fames. Egestas velit vitae pulvinar quis aliq', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-12-05', 0, '40:15', 5, 6, 47),
(289, 'Grey Sparks', 'Lorem dolor viverra mattis justo integer nunc varius ultricies pharetra eget taciti congue neque. Mauris pulvinar vulputate lectus enim, lacus pretium', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-11-01', 0, '32:19', 5, 7, 47),
(290, 'Silver Twilight', 'Etiam viverra nibh est venenatis cursus faucibus sollicitudin maximus pellentesque enim. Placerat lobortis efficitur litora. Amet adipiscing velit mat', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-01-26', 0, '46:21', 5, 8, 47),
(291, 'Flames of Dreams', 'Tortor est scelerisque felis urna ad. Pulvinar faucibus varius turpis suscipit aliquet. Etiam velit nibh posuere proin pretium vivamus curabitur eros,', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-03-16', 0, '32:21', 5, 9, 47),
(292, 'The Licking Flowers', 'Amet leo massa felis vulputate dictumst dui lectus curabitur potenti accumsan diam. Amet phasellus molestie ante condimentum pellentesque blandit iacu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-05-17', 0, '34:56', 1, 1, 48),
(293, 'The Dwindling Voyage', 'Ipsum dictum lacinia semper dapibus tempus sociosqu conubia senectus, egestas lacus mattis lacinia ultricies quam fermentum magna, dictum ac est. Elit', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-02-21', 0, '38:47', 1, 2, 48),
(294, 'The Female of the Twins', 'Sit nulla placerat metus dictumst gravida class blandit diam tristique. Suspendisse est hendrerit habitant. Elit maecenas ligula nunc auctor ultrices ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-12-22', 0, '27:38', 1, 3, 48),
(295, 'Burning Something', 'Placerat cursus posuere nullam eget porttitor vivamus nostra blandit potenti elementum tristique iaculis. Eu aptent aliquet, elit erat a curae proin h', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-06-13', 0, '42:29', 1, 4, 48),
(296, 'Burning Something', 'Vitae vestibulum luctus pulvinar augue euismod torquent nam, dictum erat mattis volutpat integer facilisis quisque habitasse pellentesque taciti per i', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-06-30', 0, '46:34', 1, 5, 48),
(297, 'The Dwindling Voyage', 'Malesuada metus eleifend tempor massa dapibus platea eros sem. Etiam nibh semper arcu inceptos, lacus malesuada scelerisque nullam libero laoreet elem', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-11-26', 0, '30:13', 1, 6, 48),
(298, 'Seventh Fire', 'Adipiscing leo venenatis taciti blandit, in id nibh aliquam eget vel inceptos, sapien id mattis vitae eleifend ex lectus risus nisl. Consectetur in ma', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-02-04', 0, '27:47', 1, 7, 48),
(299, 'Name of Elves', 'Integer molestie pretium sociosqu netus, orci arcu taciti curabitur morbi iaculis. Elit interdum nulla nibh integer ut quis ornare dictumst taciti ad ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-12-13', 0, '37:14', 1, 8, 48),
(300, 'The Force of the Silence', 'Nulla viverra nibh pulvinar ante pretium habitasse gravida litora morbi tristique. Vitae cubilia neque tristique, mi non id viverra feugiat suspendiss', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-06-18', 0, '45:12', 1, 9, 48),
(301, 'Some Sliver', 'Elit sed mattis suspendisse pulvinar scelerisque ultrices tellus aliquam purus torquent accumsan. Ipsum lacus etiam eleifend et pellentesque porta rho', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-08-24', 0, '28:17', 1, 10, 48),
(302, 'Name of Elves', 'Sed mollis pellentesque potenti vehicula habitant. Vitae augue class imperdiet. Feugiat ac scelerisque efficitur habitant, lorem malesuada etiam mauri', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-11-15', 0, '29:17', 1, 11, 48),
(303, 'Shard of Dragon', 'Lorem interdum a semper convallis cursus fringilla hendrerit nullam sollicitudin aptent neque iaculis, metus facilisis venenatis habitasse aenean. Dic', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-02-20', 0, '31:28', 1, 12, 48),
(304, 'The Licking Flowers', 'Sapien at metus nibh lacinia nec faucibus varius arcu dui lectus fermentum sodales. Elit nibh orci porttitor hac potenti dignissim fames, mi primis ar', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-09-09', 0, '33:24', 2, 1, 48),
(305, 'Voyager in the Lord', 'Molestie dui himenaeos morbi. Etiam metus luctus venenatis fusce pharetra porttitor tempus hac pellentesque neque nam sem. Egestas ac ut ultrices urna', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-01-04', 0, '44:51', 2, 2, 48),
(306, 'The Female of the Twins', 'Dolor amet id finibus auctor arcu eu class sociosqu torquent himenaeos suscipit. In viverra maecenas nibh varius primis porttitor gravida dui curabitu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-08-11', 0, '29:30', 2, 3, 48),
(307, 'Light in the Mage', 'Ipsum elit nulla sed at finibus leo tincidunt fusce hac sem aliquet habitant. Interdum placerat mattis suspendisse eleifend est tellus fusce curae con', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-10-02', 0, '28:43', 2, 4, 48),
(308, 'Flames of Dreams', 'Interdum dictum malesuada etiam vitae feugiat a nisi pretium arcu hac turpis odio congue. Nibh scelerisque fusce ornare nullam sagittis vel torquent t', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-10-09', 0, '41:22', 2, 5, 48),
(309, 'Birch of Trainer', 'Adipiscing finibus justo ultrices lectus donec. Id a posuere vivamus. Non erat vestibulum fusce lectus vel donec sem aliquet.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-04-26', 0, '27:51', 2, 6, 48),
(310, 'Sliver in the Weeping', 'Non malesuada maecenas mattis metus facilisis pulvinar porttitor eu lectus accumsan suscipit vehicula imperdiet dignissim. Metus leo urna vel duis dia', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-07-12', 0, '45:50', 2, 7, 48),
(311, 'Obsession in the Spark', 'Etiam venenatis ultrices massa hendrerit augue pharetra porttitor gravida efficitur aptent enim. Interdum dictum id et porttitor class curabitur. Nisi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-10-26', 0, '30:10', 2, 8, 48),
(312, 'The Dwindling Voyage', 'Luctus facilisis tortor tellus eget pretium class inceptos odio diam. Dolor velit lacinia tellus purus ex fusce primis urna tempus gravida maximus apt', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-04-28', 0, '49:39', 2, 9, 48),
(313, 'The Dwindling Voyage', 'In finibus leo tempor venenatis phasellus ex et porttitor sociosqu curabitur nam nisl, quisque cursus ex fringilla porttitor maximus bibendum dignissi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-03-16', 0, '24:56', 2, 10, 48),
(314, 'Name of Elves', 'Interdum non id mattis luctus leo nibh varius ante maximus sodales iaculis. Sit egestas id quisque et augue sollicitudin porttitor libero efficitur li', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-06-19', 0, '41:14', 2, 11, 48),
(315, 'Light in the Mage', 'Sodales habitant nisl, dictum in nam. At erat volutpat nibh eleifend ut venenatis porttitor commodo maximus himenaeos turpis porta laoreet. Faucibus u', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-12-05', 0, '33:23', 2, 12, 48),
(316, 'Some Sliver', 'Interdum id a eleifend nec sociosqu donec porta curabitur cras. Sit etiam ligula quisque odio blandit bibendum elementum nam ullamcorper morbi. Malesu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-10-13', 0, '30:31', 3, 1, 48),
(317, 'Obsession in the Spark', 'Dictum vestibulum ac pulvinar quisque ut semper tortor ultrices tempus class magna risus aenean. Amet mattis volutpat ultricies hac eu aptent himenaeo', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-11-08', 0, '37:53', 3, 2, 48),
(318, 'Burning Something', 'Elit dictum mi ac aliquam ex consequat aptent ad torquent accumsan congue imperdiet ullamcorper aenean. Lorem viverra nibh scelerisque ultricies ornar', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-10-28', 0, '20:11', 3, 3, 48),
(319, 'Silver Twilight', 'Posuere proin habitasse. Elit ut convallis sollicitudin dictumst fames. Fusce per netus, curae maximus netus. Amet praesent mi nulla sed erat velit ni', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-06-05', 0, '25:48', 3, 4, 48),
(320, 'The Female of the Twins', 'Nec efficitur ad. Erat mauris et hendrerit commodo elementum sem aliquet fames. Ipsum est tempor ex primis proin ornare augue eu odio blandit neque di', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-02-07', 0, '21:55', 3, 5, 48),
(321, 'The Force of the Silence', 'Praesent condimentum enim. Finibus viverra lacinia cursus felis hendrerit gravida lectus himenaeos turpis neque. Nec semper quis aliquam nullam hac pe', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-08-17', 0, '21:21', 3, 6, 48),
(322, 'Grey Sparks', 'Volutpat vitae ligula ac scelerisque cursus massa varius condimentum hac class odio dignissim habitant. Lorem sed finibus maecenas integer facilisis f', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-09-12', 0, '26:46', 3, 7, 48),
(323, 'The Tale\'s Door', 'Ac ut molestie orci eget lectus pellentesque odio. Cubilia condimentum enim. Mollis ante vulputate dictumst aptent, mauris posuere condimentum congue,', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-06-25', 0, '36:47', 3, 8, 48),
(324, 'The Women of the Roses', 'Nulla finibus sollicitudin vivamus fames. Interdum venenatis cubilia taciti conubia potenti habitant. Pulvinar ullamcorper habitant, adipiscing placer', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-03-07', 0, '45:48', 3, 9, 48),
(325, 'Some Sliver', 'Praesent malesuada semper arcu torquent porta duis vehicula senectus. Velit luctus nibh ultrices ornare dapibus efficitur blandit neque risus. Sit feu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-08-05', 0, '28:46', 3, 10, 48),
(326, 'Seventh Fire', 'Ipsum in placerat integer ut convallis proin hendrerit dapibus vulputate urna commodo nam iaculis. Finibus metus tortor. Erat viverra nibh nec phasell', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-12-06', 0, '40:21', 3, 11, 48),
(327, 'The Danger\'s Flight', 'Interdum erat etiam est nisi orci vel nostra accumsan neque aliquet. Ipsum elit nulla suspendisse tellus purus proin eu dui odio ullamcorper, faucibus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-01-26', 0, '42:29', 3, 12, 48),
(328, 'The Force of the Silence', 'Mi maecenas tortor ornare euismod aptent torquent bibendum elementum iaculis, malesuada finibus viverra volutpat cursus urna condimentum habitasse com', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-12-23', 0, '48:33', 4, 1, 48),
(329, 'Obsession in the Spark', 'Vitae mauris a venenatis massa porttitor sagittis maximus enim blandit duis dignissim morbi. Mi erat viverra feugiat molestie purus sagittis sodales b', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-09-29', 0, '21:44', 4, 2, 48),
(330, 'Light in the Mage', 'Interdum mi erat justo nibh massa ante proin sollicitudin sagittis vivamus turpis dignissim morbi, amet adipiscing lacinia ligula est felis porttitor ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-09-19', 0, '33:41', 4, 3, 48),
(331, 'Seventh Fire', 'Augue habitasse litora per porta iaculis. Feugiat eget dignissim, id proin litora neque elementum sem risus. Dolor maecenas lacinia auctor nisi ex cur', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-01-27', 0, '26:10', 4, 4, 48),
(332, 'The Dreamer\'s Flame', 'Adipiscing interdum mi felis enim risus tristique netus. Dolor egestas malesuada mattis facilisis ac aliquam curae dapibus eget eu eros imperdiet ulla', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-03-24', 0, '37:59', 4, 5, 48),
(333, 'Some Sliver', 'Velit mollis et sagittis gravida conubia porta eros. Sed placerat malesuada vitae a ligula nisi orci posuere ultricies commodo fermentum tristique nis', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-04-26', 0, '39:20', 4, 6, 48),
(334, 'Shard of Dragon', 'Non at leo lacinia nec convallis primis efficitur litora nostra congue duis vehicula sem. Egestas ac semper purus ultricies augue sagittis commodo inc', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-11-08', 0, '21:46', 4, 7, 48),
(335, 'Birch of Trainer', 'Cubilia proin himenaeos odio laoreet morbi senectus netus, lacus sed justo suspendisse proin hac eu taciti aliquet. Tincidunt cursus primis ultricies ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-12-05', 0, '26:35', 4, 8, 48),
(336, 'Voyager in the Lord', 'Consectetur praesent leo posuere vel taciti. Amet egestas vitae eleifend pulvinar est nisi dui litora fermentum risus habitant. Interdum at ac semper ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-02-01', 0, '43:25', 4, 9, 48),
(337, 'The Shadowy Death', 'Ipsum placerat erat vestibulum lobortis facilisis quisque ex primis dui torquent curabitur netus. Mi nec hendrerit tempus torquent, dolor sit interdum', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2011-09-17', 0, '31:43', 4, 10, 48),
(338, 'The Licking Flowers', 'Dictum mi nulla lacus sed finibus luctus phasellus faucibus augue sagittis neque suscipit aliquet senectus. Nec platea aptent turpis accumsan. Mi etia', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-11-13', 0, '38:32', 4, 11, 48),
(339, 'The Women of the Roses', 'Nulla placerat orci proin vivamus risus nisl aenean. Volutpat metus euismod dui. Amet pharetra hac curabitur aliquet. Dolor praesent erat id leo lacin', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-07-27', 0, '26:24', 4, 12, 48),
(340, 'The Shadowy Death', 'Lacus pulvinar porta ullamcorper. Nulla placerat malesuada maecenas vitae leo nibh purus hendrerit sagittis sociosqu litora dignissim, interdum at mat', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-10-05', 0, '44:43', 5, 1, 48),
(341, 'The Dwindling Voyage', 'Dolor velit ligula felis. Consectetur nibh eget vivamus class blandit neque eros, adipiscing mi sapien id metus cubilia sollicitudin arcu dictumst tor', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-05-20', 0, '35:16', 5, 2, 48),
(342, 'Silver Twilight', 'Dolor vestibulum leo tincidunt quisque ante sagittis vivamus conubia curabitur laoreet. Sed erat etiam tincidunt est aliquam molestie ante augue plate', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-07-28', 0, '48:22', 5, 3, 48),
(343, 'Grey Sparks', 'Lorem ultricies class aptent habitant. Praesent placerat facilisis lacinia auctor vulputate quam condimentum accumsan eros morbi. Malesuada ut cubilia', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-08-15', 0, '41:30', 5, 4, 48),
(344, 'The Dreamer\'s Flame', 'Molestie eu litora senectus. Interdum semper nisi litora nostra sodales nam. At integer semper massa turpis elementum, nibh integer eros. Mi finibus m', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-08-30', 0, '34:51', 5, 5, 48),
(345, 'Flames of Dreams', 'Dictum semper et ornare torquent bibendum elementum. Viverra phasellus orci ornare nullam arcu habitasse gravida vivamus libero accumsan diam dignissi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-08-14', 0, '38:41', 5, 6, 48),
(346, 'Light in the Mage', 'Lorem tempor torquent. Placerat luctus ac eleifend quisque tellus aliquam ex fringilla euismod hac eu class torquent enim. Amet in viverra scelerisque', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-06-30', 0, '34:31', 5, 7, 48),
(347, 'The Dwindling Voyage', 'Ultrices posuere hac sociosqu turpis diam habitant, consectetur etiam viverra luctus auctor ante dapibus quam turpis vehicula aliquet. Sapien viverra ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-11-21', 0, '21:36', 5, 8, 48),
(348, 'The Force of the Silence', 'Erat scelerisque convallis curabitur odio eros. Elit mi etiam ligula nunc et odio, lorem consectetur in erat leo scelerisque condimentum blandit accum', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-05-08', 0, '36:39', 5, 9, 48),
(349, 'Birch of Trainer', 'Dolor sit dictum lobortis convallis fusce eget pellentesque efficitur iaculis, ipsum mi id maecenas volutpat facilisis nunc ut ante pharetra vel effic', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-10-28', 0, '46:20', 5, 10, 48),
(350, 'Name of Elves', 'Malesuada erat id feugiat tortor ante primis euismod aptent taciti. Interdum nulla phasellus cursus laoreet sem, praesent sed mauris convallis massa c', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-02-25', 0, '37:51', 5, 11, 48),
(351, 'Light in the Mage', 'Sed at facilisis platea commodo. Finibus porta rhoncus accumsan. Sapien malesuada facilisis tellus gravida. Malesuada velit justo luctus tincidunt auc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-08-24', 0, '45:18', 5, 12, 48),
(352, 'The Dreamer\'s Flame', 'Sed mattis justo leo molestie massa condimentum eros nam, vitae pulvinar quisque conubia aliquet. Lorem sed scelerisque primis pretium porta. Adipisci', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-01-17', 0, '21:32', 1, 1, 49),
(353, 'Name of Elves', 'Etiam viverra phasellus ex varius porttitor efficitur conubia enim odio sem aenean. Ipsum adipiscing elit eleifend semper tempor venenatis augue gravi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-09-19', 0, '24:38', 1, 2, 49),
(354, 'Shard of Dragon', 'Lobortis purus felis fringilla sollicitudin habitasse gravida lectus libero litora magna imperdiet dignissim aliquet. Lorem maecenas vestibulum mauris', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-08-25', 0, '36:35', 1, 3, 49),
(355, 'The Female of the Twins', 'Consectetur finibus integer nisl. Praesent facilisis aliquam proin hac gravida libero sociosqu nostra turpis porta dignissim senectus, sit sapien veli', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-04-24', 0, '24:51', 1, 4, 49),
(356, 'Obsession in the Spark', 'Lobortis ligula pulvinar libero morbi cras. Egestas in luctus leo ligula dapibus enim tristique. Malesuada ac est pharetra consequat suscipit vehicula', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-04-04', 0, '38:42', 1, 5, 49),
(357, 'Seventh Fire', 'Adipiscing dictum malesuada at leo quis nisi proin ornare arcu eu per himenaeos bibendum. Nulla sed leo ultricies quam pellentesque potenti risus tris', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-07-24', 0, '38:48', 1, 6, 49),
(358, 'Seventh Fire', 'Non in erat volutpat vestibulum fusce sagittis vel class nostra inceptos eros. Eleifend condimentum torquent potenti habitant. Sit dictum tincidunt ne', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-01-11', 0, '32:40', 1, 7, 49),
(359, 'The Force of the Silence', 'Consectetur etiam primis porttitor ad vehicula nam. Sed tincidunt pulvinar semper auctor felis primis curae platea suscipit vehicula cras. Amet praese', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-05-05', 0, '30:34', 1, 8, 49),
(360, 'Silver Twilight', 'Eleifend hac turpis, dolor amet tellus nullam urna aptent. Primis et congue. Elit non malesuada mattis ut curae ultricies lectus vel donec curabitur n', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-03-05', 0, '39:16', 1, 9, 49),
(361, 'Burning Something', 'Interdum non metus facilisis nec venenatis vulputate porttitor hac eu torquent potenti accumsan. Integer pulvinar ut tempus, elit praesent nulla in vo', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-03-01', 0, '36:24', 1, 10, 49),
(362, 'Silver Twilight', 'Non sed faucibus hac vel tristique. Maecenas a felis proin turpis potenti vehicula. Elit dictum lacus viverra luctus phasellus ex arcu gravida taciti ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-05-24', 0, '25:43', 2, 1, 49),
(363, 'The Dwindling Voyage', 'At mollis est quis massa faucibus curae neque bibendum laoreet. Velit feugiat fusce litora himenaeos. Ipsum dictum facilisis tempor cursus nullam hime', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-03-11', 0, '38:54', 2, 2, 49),
(364, 'Some Sliver', 'Consectetur ligula tellus posuere ornare pretium dictumst vivamus sem. Consectetur egestas fusce sollicitudin platea laoreet. At vitae feugiat sollici', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-07-19', 0, '44:57', 2, 3, 49),
(365, 'The Women of the Roses', 'Elit egestas lobortis mauris ac eleifend scelerisque quis cursus proin elementum habitant. Posuere vehicula cras, vestibulum quis phasellus cubilia pr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-06-26', 0, '45:28', 2, 4, 49),
(366, 'The Danger\'s Flight', 'Malesuada est dictumst, dolor praesent finibus semper proin hac vivamus maximus. Mi phasellus varius nullam euismod platea sodales laoreet, viverra vo', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-03-28', 0, '38:55', 2, 5, 49),
(367, 'The Female of the Twins', 'Vestibulum mauris ligula nec fringilla nostra himenaeos donec curabitur odio fames iaculis cras aenean. Non etiam vitae leo tincidunt facilisis ligula', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-11-21', 0, '22:34', 2, 6, 49),
(368, 'Silver Twilight', 'Sit eleifend convallis ex quam platea maximus curabitur accumsan congue risus nisl aenean, consectetur viverra vitae quis massa fringilla condimentum ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-03-09', 0, '20:43', 2, 7, 49),
(369, 'Shard of Dragon', 'Feugiat eu torquent per aenean, interdum aliquam purus porttitor taciti duis cras. Nec convallis gravida taciti neque. Lorem interdum a lacinia suspen', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-03-07', 0, '20:19', 2, 8, 49),
(370, 'Seventh Fire', 'Egestas fringilla pretium. Sit placerat leo ultrices fusce felis eget porttitor quam tempus laoreet tristique aenean. Interdum non sapien scelerisque ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-12-28', 0, '49:28', 2, 9, 49),
(371, 'Birch of Trainer', 'Malesuada suspendisse semper tempor consequat eu rhoncus nam dignissim. Dolor adipiscing mi finibus justo tincidunt integer nisi massa ultricies nulla', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-08-24', 0, '39:38', 2, 10, 49),
(372, 'Some Sliver', 'Dictum mi nulla feugiat maximus. Ut semper felis orci cubilia euismod eget gravida nostra. Lacus erat id viverra integer facilisis scelerisque augue h', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-04-17', 0, '46:40', 3, 1, 49),
(373, 'The Women of the Roses', 'Nulla lacus sed finibus mattis cubilia proin blandit bibendum. Ipsum in erat finibus viverra maecenas lacinia scelerisque quis porta sodales diam morb', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-09-01', 0, '37:37', 3, 2, 49),
(374, 'Light in the Mage', 'Sit amet consectetur egestas lacus sapien ut ultrices porttitor aptent accumsan suscipit, a ultrices felis ornare tempus taciti tristique, lobortis te', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-08-26', 0, '21:57', 3, 3, 49),
(375, 'The Dreamer\'s Flame', 'Dolor sed integer suspendisse augue hac dictumst eu per sodales suscipit fames. Sit non in malesuada cursus euismod libero magna neque vehicula, feugi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-09-01', 0, '48:28', 3, 4, 49),
(376, 'Silver Twilight', 'Ut cubilia ultricies. Integer aliquam hendrerit nullam urna sociosqu torquent porta. Egestas metus hendrerit turpis iaculis, mauris feugiat semper orn', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-10-06', 0, '44:23', 3, 5, 49),
(377, 'The Dwindling Voyage', 'Sit curae pharetra diam. Amet luctus feugiat nisi pretium rhoncus suscipit diam, sapien integer ultrices consequat tempus tristique. Etiam quisque qui', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-11-07', 0, '42:41', 3, 6, 49),
(378, 'Shard of Dragon', 'Adipiscing dictum condimentum, dictum sapien id ultrices cras. Amet nulla mattis purus ex eget dictumst eu commodo efficitur bibendum morbi netus nisl', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-11-13', 0, '20:14', 3, 7, 49),
(379, 'Light in the Mage', 'Sit id maecenas nibh facilisis ac tortor venenatis aliquam pharetra arcu dictumst turpis blandit risus, amet elit in massa libero curabitur aenean. Id', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-03-25', 0, '29:50', 3, 8, 49),
(380, 'Sliver in the Weeping', 'Amet nulla ac nisi purus vulputate dui aptent fermentum donec duis senectus cras. Mi etiam luctus feugiat proin eget habitasse eu commodo taciti socio', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-12-16', 0, '31:31', 3, 9, 49),
(381, 'Name of Elves', 'Volutpat varius ante dapibus commodo inceptos habitant cras. Nulla id tellus felis maximus taciti porta eros sem risus aliquet. Placerat viverra bland', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-09-06', 0, '25:51', 3, 10, 49),
(382, 'The Dwindling Voyage', 'Dolor interdum tempus dui class sociosqu neque dignissim. Id vitae feugiat nullam aptent nostra elementum, nulla quisque ex inceptos congue. Nulla sus', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-01-25', 0, '33:54', 4, 1, 49),
(383, 'The Tale\'s Door', 'Amet nunc condimentum dui duis elementum senectus. Convallis hac rhoncus. Placerat finibus vestibulum vulputate platea tristique. Dolor erat mattis sc', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-01-14', 0, '21:22', 4, 2, 49),
(384, 'Burning Something', 'Amet malesuada erat etiam ante et euismod eu congue vehicula nisl, id primis platea gravida litora. Non ante ornare arcu consequat hac dictumst nostra', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-05-21', 0, '37:41', 4, 3, 49),
(385, 'Name of Elves', 'Interdum dictum sapien semper ex sollicitudin euismod gravida duis habitant, a ornare taciti. Pulvinar ultrices senectus, sapien vitae ut est ultrices', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-02-03', 0, '20:57', 4, 4, 49),
(386, 'The Tale\'s Door', 'Leo massa eget imperdiet, facilisis nunc ultrices quam pellentesque eros sem senectus. Mattis scelerisque ultrices porta bibendum. Sit leo pulvinar se', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-04-12', 0, '26:23', 4, 5, 49),
(387, 'Flames of Dreams', 'Faucibus commodo ullamcorper, mi viverra lacinia nisi convallis primis porttitor commodo. Sit erat molestie dapibus neque suscipit. Facilisis ornare a', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-04-28', 0, '50:35', 4, 6, 49),
(388, 'Obsession in the Spark', 'Elit a ultricies quam congue. Interdum mi phasellus tempus. Amet lacus ex hendrerit nullam commodo blandit congue vehicula nam risus. Feugiat nisi pha', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-07-23', 0, '32:31', 4, 7, 49),
(389, 'The Force of the Silence', 'Sapien a aliquam convallis aptent suscipit. Amet consectetur in justo nibh et cubilia ultricies eu himenaeos potenti laoreet sem morbi iaculis. Dolor ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-06-14', 0, '34:24', 4, 8, 49),
(390, 'Shard of Dragon', 'Consectetur vestibulum quis posuere hendrerit morbi, ante ultricies tristique. Ultrices ad blandit eros. Interdum enim laoreet. Sit potenti nam. Sit m', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-03-31', 0, '26:37', 4, 9, 49),
(391, 'Silver Twilight', 'Erat etiam ante lectus. Dolor vitae a eleifend ut nisi phasellus et proin arcu class donec bibendum sem fames, praesent at maecenas arcu vivamus conub', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-02-03', 0, '26:57', 4, 10, 49),
(392, 'Grey Sparks', 'Dictum malesuada id velit justo facilisis tellus nullam arcu consequat platea ad enim potenti, praesent interdum dictum sed maecenas vestibulum orci e', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-09-13', 0, '46:22', 5, 1, 49),
(393, 'Birch of Trainer', 'Praesent vitae nunc auctor phasellus orci lectus ad rhoncus accumsan aliquet iaculis aenean. Sapien erat finibus feugiat suspendisse euismod tempus to', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-04-05', 0, '21:48', 5, 2, 49),
(394, 'The Licking Flowers', 'Amet egestas felis vulputate maximus torquent. Egestas aptent potenti eros nisl. Lorem viverra lobortis quis aptent taciti iaculis, interdum velit sce', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-07-23', 0, '39:46', 5, 3, 49),
(395, 'Seventh Fire', 'Praesent leo ac fusce primis vivamus maximus sodales. Luctus convallis primis eu. Sed curae urna platea. Etiam nibh nunc. Amet dictum suspendisse auct', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-07-17', 0, '50:29', 5, 4, 49),
(396, 'Grey Sparks', 'Sed feugiat ligula orci ornare vel taciti congue morbi aenean. Mi feugiat mollis varius quam hac gravida commodo vivamus conubia laoreet. Cursus massa', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-08-27', 0, '32:36', 5, 5, 49),
(397, 'The Tale\'s Door', 'Vitae quisque faucibus varius neque elementum nam, mi maecenas ex et tempus. Erat maecenas volutpat auctor proin ornare eget pretium eu donec aenean, ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-04-21', 0, '38:53', 5, 6, 49),
(398, 'Shard of Dragon', 'Amet egestas lacus placerat lobortis luctus leo faucibus aptent sodales elementum, maecenas mattis metus pulvinar massa dictumst libero vel class taci', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-11-05', 0, '27:56', 5, 7, 49),
(399, 'Shard of Dragon', 'Finibus lacinia nec primis eget tempus aptent turpis bibendum. Ipsum mi non in felis gravida. Interdum etiam facilisis ut semper sollicitudin porttito', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-03-11', 0, '44:13', 5, 8, 49),
(400, 'Name of Elves', 'Praesent mi egestas erat ut tortor eu aptent eros. Ipsum amet lacus erat finibus eleifend semper quis posuere lectus pellentesque nostra odio neque na', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-02-23', 0, '28:28', 5, 9, 49),
(401, 'The Female of the Twins', 'Maecenas integer pulvinar tellus dapibus eu duis. Est proin euismod blandit. Adipiscing malesuada pulvinar auctor molestie ex orci habitant.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-06-07', 0, '30:30', 5, 10, 49),
(402, 'The Female of the Twins', 'Interdum erat maecenas feugiat ex ante et eget hac libero maximus litora odio sem morbi, interdum sapien metus ligula venenatis phasellus dictumst viv', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-05-08', 0, '45:55', 6, 1, 49),
(403, 'The Shadowy Death', 'In sed vestibulum mollis est convallis ex posuere arcu habitasse aptent per fames, interdum id pulvinar tempor taciti. Dolor id lobortis integer tellu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-09-27', 0, '50:29', 6, 2, 49),
(404, 'The Dwindling Voyage', 'Tincidunt suspendisse eleifend quis molestie lectus ad neque imperdiet morbi. Pharetra libero ad sodales suscipit, mauris lacinia libero conubia nostr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-08-23', 0, '46:51', 6, 3, 49),
(405, 'The Female of the Twins', 'Nulla placerat tortor tellus fusce urna conubia fermentum rhoncus morbi senectus, ipsum id mauris luctus conubia magna imperdiet. Praesent ornare apte', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-12-18', 0, '37:58', 6, 4, 49),
(406, 'The Shadowy Death', 'Interdum viverra lacinia convallis varius ante vulputate dictumst sagittis maximus imperdiet dignissim morbi aenean. Sit adipiscing tortor cursus hac ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-02-18', 0, '37:49', 6, 5, 49),
(407, 'Seventh Fire', 'Interdum metus molestie nostra sodales vehicula aliquet. Sit lacus viverra feugiat lacinia nec tempor ultricies eu lectus class per congue tristique, ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-03-02', 0, '25:42', 6, 6, 49),
(408, 'The Danger\'s Flight', 'Malesuada dui litora, et sagittis sem. Lorem adipiscing sed suspendisse dapibus aptent blandit sodales bibendum imperdiet dignissim aenean, consectetu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-07-14', 0, '39:40', 6, 7, 49),
(409, 'Light in the Mage', 'Luctus facilisis est maximus, lorem finibus mattis massa vel conubia dignissim. Placerat id metus scelerisque, non erat velit mattis ac eleifend nisi ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-09-08', 0, '20:25', 6, 8, 49),
(410, 'Flames of Dreams', 'Egestas volutpat justo vitae lobortis porttitor gravida nostra odio nam imperdiet aliquet. Consectetur in lacus tincidunt suspendisse nisi dapibus arc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-03-29', 0, '26:12', 6, 9, 49),
(411, 'The Danger\'s Flight', 'Vestibulum lacinia pharetra neque duis. Tincidunt nec est tellus augue, sapien mattis lacinia scelerisque ultrices ante cras. Placerat etiam justo luc', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-09-17', 0, '35:56', 6, 10, 49),
(412, 'Seventh Fire', 'Justo tincidunt mollis ante cubilia eget lectus class odio eros dignissim habitant. Lorem dolor elit velit luctus nisi fusce augue nullam. Lorem lacus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-06-19', 0, '49:35', 1, 1, 50),
(413, 'Burning Something', 'Dolor adipiscing cursus felis ultricies commodo lectus laoreet imperdiet sem. Adipiscing vestibulum lacinia tortor ex gravida sociosqu himenaeos poten', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-06-29', 0, '43:29', 1, 2, 50),
(414, 'Light in the Mage', 'Amet consectetur malesuada nibh lacinia varius orci ornare dapibus quam eu libero diam nisl. Ipsum non maecenas cubilia tristique, malesuada erat maur', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-01-25', 0, '44:33', 1, 3, 50),
(415, 'Obsession in the Spark', 'Mi justo nunc cubilia conubia neque diam, sed metus auctor phasellus aliquam ultricies vulputate maximus class fermentum odio duis tristique. Mattis l', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-06-16', 0, '40:49', 1, 4, 50),
(416, 'Obsession in the Spark', 'Elit interdum at viverra purus hendrerit arcu porttitor vivamus nostra porta elementum habitant tristique cras. Velit mauris quisque quis et tempus, d', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-09-08', 0, '41:26', 1, 5, 50),
(417, 'The Women of the Roses', 'Non leo varius dapibus sociosqu blandit laoreet morbi. Dolor lacinia aliquam convallis fringilla congue diam. Lobortis ligula pulvinar convallis torqu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-09-24', 0, '25:56', 1, 6, 50),
(418, 'The Dwindling Voyage', 'Urna eu conubia porta neque sem nisl. Amet dictum sed velit tincidunt habitasse dictumst imperdiet. Mi erat ex dictumst inceptos. Interdum non nibh ac', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-02-16', 0, '46:48', 1, 7, 50),
(419, 'The Women of the Roses', 'Sit etiam velit viverra venenatis ex conubia fames. Consectetur quisque tellus nisi hendrerit fermentum porta sem ullamcorper iaculis. Lorem mi erat f', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-01-17', 0, '28:15', 1, 8, 50),
(420, 'The Tale\'s Door', 'Adipiscing etiam justo vestibulum est felis varius ultricies sagittis gravida pellentesque sodales, ligula primis blandit aenean. Tincidunt hendrerit ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-05-25', 0, '43:52', 1, 9, 50),
(421, 'Silver Twilight', 'Viverra mattis nibh aliquam primis et hac inceptos magna bibendum. Viverra lacinia molestie nostra aliquet. Id est dictumst eu aenean. Venenatis conva', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-10-24', 0, '47:20', 1, 10, 50),
(422, 'Shard of Dragon', 'Lacus nec cursus primis orci pharetra dapibus inceptos, egestas sed eleifend molestie primis hendrerit hac vivamus litora porta duis eros aliquet habi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-11-19', 0, '24:41', 1, 11, 50),
(423, 'Birch of Trainer', 'Sit non at viverra metus scelerisque quam lectus efficitur duis dignissim cras. Finibus viverra venenatis quis aliquam orci commodo lectus congue impe', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-09-07', 0, '25:22', 2, 1, 50);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(424, 'The Tale\'s Door', 'Lorem interdum mi tincidunt facilisis pulvinar semper est venenatis consequat porta accumsan vehicula senectus fames, adipiscing velit condimentum fer', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-11-14', 0, '20:34', 2, 2, 50),
(425, 'Burning Something', 'Lacinia et nam, nulla venenatis aptent laoreet sem. Sit consectetur mi feugiat auctor phasellus habitasse taciti turpis. Dictum id maecenas nunc turpi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-01-23', 0, '41:36', 2, 3, 50),
(426, 'The Force of the Silence', 'Elit egestas nibh quisque fusce proin vivamus class magna potenti suscipit sem ullamcorper aenean. Sit amet adipiscing non vulputate platea conubia cu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-04-10', 0, '48:37', 2, 4, 50),
(427, 'The Women of the Roses', 'Nulla maecenas luctus scelerisque quam litora fermentum rhoncus congue habitant, in mollis ultrices purus felis primis hac turpis habitant fames. Amet', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-11-03', 0, '29:24', 2, 5, 50),
(428, 'Flames of Dreams', 'Ipsum egestas lacinia pharetra commodo lectus potenti diam. Justo nibh aliquam orci vel maximus. Malesuada condimentum efficitur. Mauris facilisis lac', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-08-23', 0, '39:38', 2, 6, 50),
(429, 'The Tale\'s Door', 'Viverra volutpat nunc est faucibus hac dictumst eu class sem iaculis. In viverra orci dapibus quam vivamus pellentesque efficitur class litora ullamco', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-06-03', 0, '42:19', 2, 7, 50),
(430, 'Voyager in the Lord', 'Lorem praesent feugiat facilisis ac tempor venenatis molestie habitasse maximus enim curabitur. Viverra mauris convallis arcu gravida magna dignissim.', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-01-12', 0, '50:51', 2, 8, 50),
(431, 'The Shadowy Death', 'Sit nibh ac nec ultricies consequat tempus sagittis turpis congue bibendum laoreet tristique nisl iaculis. Maecenas volutpat porttitor quam efficitur ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-06-30', 0, '45:39', 2, 9, 50),
(432, 'Grey Sparks', 'Lorem adipiscing placerat vestibulum ut nisi ex et habitasse sagittis enim neque imperdiet senectus, consectetur mi venenatis nisi posuere proin preti', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-07-11', 0, '45:59', 2, 10, 50),
(433, 'Birch of Trainer', 'Sapien mattis pellentesque efficitur litora. Facilisis suspendisse mollis est ultrices fringilla, id luctus eleifend nisi fringilla lectus rhoncus pot', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-08-05', 0, '41:22', 2, 11, 50),
(434, 'Birch of Trainer', 'Etiam facilisis pulvinar quisque mollis tellus felis sollicitudin vulputate taciti torquent curabitur. Nulla vestibulum felis, vestibulum leo facilisi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-10-10', 0, '48:26', 1, 1, 51),
(435, 'Shard of Dragon', 'Dictum in placerat mauris mollis tempor scelerisque arcu class inceptos cras. Sit in vitae aliquam faucibus curabitur accumsan tristique. Vitae mauris', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-11-20', 0, '50:45', 1, 2, 51),
(436, 'Light in the Mage', 'Nulla cubilia condimentum inceptos odio nam fames. Pulvinar cursus litora. Egestas metus tellus felis ultricies arcu sagittis efficitur turpis accumsa', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-06-19', 0, '33:13', 1, 3, 51),
(437, 'Seventh Fire', 'Dolor dictum sed volutpat suspendisse pulvinar tellus ultricies hendrerit augue taciti porta blandit ullamcorper netus. Amet malesuada mauris nunc cur', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-09-30', 0, '40:48', 1, 4, 51),
(438, 'Name of Elves', 'In a purus vulputate. Maecenas volutpat nec nisi fames. Nulla pulvinar urna porttitor magna suscipit morbi.', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-03-07', 0, '40:51', 1, 5, 51),
(439, 'Obsession in the Spark', 'Dictum egestas in erat lobortis quisque quis cursus ante et eget class porta blandit sem. Interdum justo vitae lobortis leo tempor scelerisque quis co', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-03-26', 0, '40:39', 1, 6, 51),
(440, 'The Force of the Silence', 'Ipsum consectetur finibus lacinia ac purus eget gravida commodo class torquent nostra donec vehicula risus, quam imperdiet aliquet. Tincidunt facilisi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-05-26', 0, '39:39', 1, 7, 51),
(441, 'The Shadowy Death', 'Sit vitae lobortis commodo himenaeos cras, ipsum egestas at maecenas tempor scelerisque quis faucibus orci posuere ultricies urna hac bibendum senectu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-10-27', 0, '41:23', 2, 1, 51),
(442, 'The Danger\'s Flight', 'Etiam a fringilla proin porttitor sociosqu fermentum congue. Praesent velit integer eleifend tempor varius eget porttitor condimentum nam imperdiet ri', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-08-02', 0, '48:22', 2, 2, 51),
(443, 'The Dwindling Voyage', 'Consectetur elit finibus leo nunc pulvinar venenatis quis habitasse ad eros aliquet cras aenean, erat tortor ultrices, ipsum volutpat ligula convallis', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-10-04', 0, '35:39', 2, 3, 51),
(444, 'Burning Something', 'Praesent cursus pharetra ad morbi tristique iaculis. Felis pharetra platea lectus imperdiet senectus. Ipsum amet etiam senectus.', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-05-09', 0, '37:50', 2, 4, 51),
(445, 'Sliver in the Weeping', 'Adipiscing volutpat lobortis eleifend massa fringilla varius euismod urna tempus hac laoreet dignissim risus tristique. Quisque cursus primis cubilia ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-05-03', 0, '33:13', 2, 5, 51),
(446, 'Light in the Mage', 'Placerat leo est ultrices proin condimentum maximus pellentesque fermentum magna bibendum senectus. Ultrices purus varius posuere euismod commodo libe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-03-03', 0, '37:45', 2, 6, 51),
(447, 'The Dreamer\'s Flame', 'Finibus ac est curae conubia odio potenti vehicula aliquet. Dictum non sapien lectus sociosqu cras. Praesent egestas suspendisse nunc vivamus inceptos', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-06-23', 0, '22:54', 2, 7, 51),
(448, 'Obsession in the Spark', 'Praesent volutpat scelerisque ultrices et ornare tristique, amet elit etiam cursus pretium quam commodo pellentesque efficitur litora blandit duis imp', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-10-07', 0, '48:22', 3, 1, 51),
(449, 'Name of Elves', 'Finibus mattis lobortis tincidunt eleifend mollis cursus ultricies porttitor condimentum consequat litora magna sem iaculis. Praesent tempor hac diam.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-05-10', 0, '49:53', 3, 2, 51),
(450, 'Flames of Dreams', 'Molestie fringilla posuere pretium tempus pellentesque morbi. Ipsum sed felis ante ornare urna condimentum bibendum imperdiet ullamcorper, a ac tristi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-08-05', 0, '47:39', 3, 3, 51),
(451, 'The Women of the Roses', 'Quisque augue consequat nam. Nec convallis pharetra sollicitudin eros, lorem praesent non egestas nulla finibus quam hac ad laoreet. Lacus maecenas or', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-12-23', 0, '38:42', 3, 4, 51),
(452, 'Flames of Dreams', 'Dolor suspendisse quisque tortor mollis massa fringilla consequat dictumst pellentesque class duis elementum, id velit feugiat pulvinar ante himenaeos', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-02-15', 0, '23:39', 3, 5, 51),
(453, 'The Female of the Twins', 'Sit dictum nulla velit phasellus massa efficitur taciti donec blandit. Lorem consectetur placerat risus. Sapien vitae ut scelerisque phasellus aptent ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-12-15', 0, '38:44', 3, 6, 51),
(454, 'Shard of Dragon', 'Mi non finibus lobortis ut fusce pretium porttitor himenaeos porta curabitur accumsan sem netus aenean. Id metus mauris quis proin potenti imperdiet r', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-01-18', 0, '31:36', 3, 7, 51),
(455, 'Obsession in the Spark', 'Nibh varius et sollicitudin dictumst laoreet ullamcorper. Praesent a suspendisse eleifend ut hendrerit augue class taciti sociosqu sodales duis bibend', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-10-04', 0, '45:50', 4, 1, 51),
(456, 'The Dwindling Voyage', 'Consectetur non purus felis porttitor dui efficitur aptent taciti, sit praesent tincidunt ac ex proin pretium habitasse eu efficitur enim laoreet diam', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-01-07', 0, '42:23', 4, 2, 51),
(457, 'The Licking Flowers', 'Egestas in integer est primis turpis curabitur tristique, ex maximus senectus. Mi ac netus. Viverra tortor massa neque fames. Justo curae condimentum ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-11-04', 0, '30:44', 4, 3, 51),
(458, 'The Licking Flowers', 'Lorem elit interdum malesuada justo tincidunt ac ante eu. Integer cubilia vivamus pellentesque. Amet lacus quis phasellus cubilia eget habitasse sagit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-06-04', 0, '42:29', 4, 4, 51),
(459, 'Seventh Fire', 'Praesent non etiam ligula convallis ante condimentum sagittis lectus pellentesque fermentum bibendum sem senectus. Dictum lacus sapien tortor hendreri', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-11-08', 0, '44:19', 4, 5, 51),
(460, 'Shard of Dragon', 'Finibus pulvinar semper quis augue euismod vulputate dictumst dui libero litora. Dolor id viverra suspendisse nunc tempor pretium litora sodales sem. ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-07-09', 0, '47:50', 4, 6, 51),
(461, 'Seventh Fire', 'Lacus placerat malesuada ante pretium porttitor lectus sociosqu potenti sodales diam aliquet iaculis. Praesent placerat auctor convallis orci vulputat', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-12-18', 0, '46:28', 4, 7, 51),
(462, 'The Tale\'s Door', 'Sit at cursus class taciti sociosqu litora porta imperdiet. Consectetur interdum maecenas lacinia ligula purus posuere curae ultricies hac habitasse. ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-03-25', 0, '38:24', 1, 1, 52),
(463, 'The Female of the Twins', 'Praesent volutpat vitae ligula mollis nisi nostra duis imperdiet senectus. Placerat proin dapibus. Adipiscing elit at vehicula. Luctus nec semper orna', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-05-06', 0, '37:59', 1, 2, 52),
(464, 'The Licking Flowers', 'Mi placerat feugiat purus litora inceptos himenaeos fermentum imperdiet sem habitant. Tempor primis vulputate habitasse nostra aliquet senectus. Non l', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-02-02', 0, '25:22', 1, 3, 52),
(465, 'The Dreamer\'s Flame', 'Tincidunt ut tempus pellentesque imperdiet, quis felis ultricies platea. Dolor praesent mi convallis massa ante ornare eget sociosqu blandit. Adipisci', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-02-02', 0, '28:50', 1, 4, 52),
(466, 'The Licking Flowers', 'Adipiscing egestas id lobortis luctus nec tortor pharetra. Cubilia condimentum senectus, ipsum vitae lobortis nunc ut posuere arcu porttitor sociosqu ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-09-25', 0, '50:28', 1, 5, 52),
(467, 'Obsession in the Spark', 'In malesuada tempor hendrerit eget. Lacus ligula nullam dui vivamus litora iaculis, phasellus aliquam purus augue class litora senectus. Praesent veli', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-11-11', 0, '30:23', 1, 6, 52),
(468, 'Some Sliver', 'Placerat a dui maximus ad per, praesent interdum lobortis est ultrices tellus cursus et gravida libero conubia duis dignissim morbi cras, amet viverra', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-03-24', 0, '23:49', 1, 7, 52),
(469, 'The Licking Flowers', 'Non metus facilisis suspendisse nunc ex quam habitasse sagittis bibendum laoreet aliquet. Placerat venenatis molestie massa litora. Ipsum maecenas lob', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-06-02', 0, '33:41', 1, 8, 52),
(470, 'Light in the Mage', 'Lorem leo facilisis aliquam faucibus et euismod urna eu torquent fermentum duis, nunc semper tristique. At eleifend quisque posuere cubilia ultricies ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-02-23', 0, '28:47', 1, 9, 52),
(471, 'Birch of Trainer', 'Malesuada erat gravida torquent odio nam sem, nulla lacus erat pulvinar sollicitudin hac lectus taciti fermentum tristique senectus, ipsum facilisis t', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-09-19', 0, '50:54', 1, 10, 52),
(472, 'Silver Twilight', 'Fringilla gravida efficitur himenaeos duis suscipit dignissim morbi, interdum a eleifend molestie varius curae sollicitudin sagittis conubia habitant.', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-07-30', 0, '37:40', 1, 11, 52),
(473, 'Voyager in the Lord', 'Pharetra commodo turpis iaculis, placerat semper ex posuere ultricies sagittis. Vitae vestibulum suspendisse mollis vel per himenaeos, lacus a ligula ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-09-08', 0, '42:15', 1, 12, 52),
(474, 'The Licking Flowers', 'Ipsum sapien lobortis tellus convallis proin laoreet. Malesuada a eleifend massa cubilia urna tempus hac per eros sem. Adipiscing in luctus mollis ult', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-09-13', 0, '42:35', 2, 1, 52),
(475, 'The Dreamer\'s Flame', 'Non sapien quisque posuere turpis. Volutpat mauris eleifend ultricies ullamcorper. Amet malesuada vestibulum ut tempor aliquam orci platea, adipiscing', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-11-15', 0, '35:25', 2, 2, 52),
(476, 'The Licking Flowers', 'Mi maecenas mattis lobortis semper tellus purus convallis ultricies nullam dictumst libero aptent ad imperdiet. Nulla in maecenas vitae feugiat tellus', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-07-22', 0, '43:51', 2, 3, 52),
(477, 'The Dreamer\'s Flame', 'Sit vestibulum luctus venenatis aliquam purus eget urna dictumst maximus duis suscipit imperdiet ullamcorper aliquet. Interdum velit ut scelerisque au', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-07-28', 0, '36:11', 2, 4, 52),
(478, 'The Tale\'s Door', 'Nibh facilisis hendrerit condimentum habitasse rhoncus netus nisl. Lacus mauris ac nec aliquam nam imperdiet sem. At vestibulum aliquam pharetra eget ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-11-14', 0, '28:23', 2, 5, 52),
(479, 'Grey Sparks', 'Ultrices inceptos himenaeos, ipsum finibus tincidunt auctor varius porttitor hac vivamus per magna curabitur, sed auctor ex fringilla curae dapibus ta', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-08-13', 0, '45:56', 2, 6, 52),
(480, 'Obsession in the Spark', 'Dictum nulla malesuada lacinia nec urna commodo dui himenaeos sodales, volutpat ex euismod tempus sagittis vivamus curabitur. Placerat suspendisse tac', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-02-07', 0, '39:52', 2, 7, 52),
(481, 'The Danger\'s Flight', 'Feugiat nec venenatis quis euismod porta risus. Est faucibus sollicitudin condimentum eu commodo libero eros sem aliquet morbi senectus, mattis nibh p', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-12-23', 0, '29:19', 2, 8, 52),
(482, 'Silver Twilight', 'Dolor velit suspendisse tellus urna quam maximus nostra habitant. Sit elit vestibulum luctus nibh facilisis mollis proin platea libero maximus eros mo', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-10-23', 0, '24:39', 2, 9, 52),
(483, 'Some Sliver', 'Dolor amet in tempor sociosqu imperdiet aliquet, mi sapien mauris integer lacinia tellus augue sollicitudin sagittis commodo litora conubia laoreet ri', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-08-17', 0, '24:14', 2, 10, 52),
(484, 'Light in the Mage', 'Ipsum lacus sapien vestibulum ut est fusce posuere pellentesque torquent inceptos rhoncus sodales risus. Purus sollicitudin euismod. Amet praesent mi ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-01-19', 0, '34:44', 2, 11, 52),
(485, 'The Dwindling Voyage', 'Curae tempus turpis diam, mi nulla erat leo tincidunt venenatis aliquam fusce vulputate arcu gravida vel per neque senectus, nulla in ligula suspendis', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-12-16', 0, '36:33', 2, 12, 52),
(486, 'The Tale\'s Door', 'Maecenas mauris quam aptent ad per porta odio sodales. Ipsum mi egestas leo hendrerit ornare porttitor condimentum rhoncus suscipit habitant. Viverra ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-07-28', 0, '49:37', 3, 1, 52),
(487, 'Voyager in the Lord', 'Interdum massa consequat. Dictum metus tortor mollis venenatis molestie massa fringilla ultricies pretium urna gravida himenaeos risus netus. Lorem el', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-04-09', 0, '20:23', 3, 2, 52),
(488, 'Light in the Mage', 'Lacus erat mauris integer facilisis primis ultricies ornare arcu eu dui nostra inceptos iaculis, adipiscing elit iaculis cras. Sit sed velit eleifend ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-02-24', 0, '46:18', 3, 3, 52),
(489, 'Light in the Mage', 'Sed id mattis ultrices hendrerit eget dictumst. Consectetur viverra mattis vitae luctus tortor platea efficitur imperdiet aliquet tristique netus. Int', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-12-08', 0, '41:11', 3, 4, 52),
(490, 'Name of Elves', 'Venenatis nisi purus convallis felis ultricies pharetra libero ad himenaeos curabitur congue diam nisl. Consectetur sed velit a faucibus ante dui pell', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-10-25', 0, '29:16', 3, 5, 52),
(491, 'Name of Elves', 'Elit vitae leo pulvinar dictumst sociosqu per nostra inceptos fermentum nam sem. Vitae ligula tellus ex dictumst sagittis dui himenaeos porta rhoncus ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-01-19', 0, '33:40', 3, 6, 52),
(492, 'Name of Elves', 'Adipiscing praesent phasellus curae porttitor class per enim netus. Mauris hendrerit condimentum potenti. Mauris facilisis ut nisi risus. Dolor nulla ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-10-16', 0, '32:37', 3, 7, 52),
(493, 'The Dreamer\'s Flame', 'Finibus himenaeos diam. Vestibulum mauris feugiat nec ex hendrerit tempus gravida maximus pellentesque himenaeos odio rhoncus dignissim fames, mi luct', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-08-31', 0, '44:30', 3, 8, 52),
(494, 'Grey Sparks', 'Ac suspendisse felis ante sagittis libero. Lorem egestas sapien placerat mattis lobortis tellus curae platea taciti inceptos donec curabitur. Integer ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-08-07', 0, '40:19', 3, 9, 52),
(495, 'Obsession in the Spark', 'Adipiscing elit id finibus maecenas mattis suspendisse nunc quis sagittis dui torquent rhoncus aliquet aenean. Sed feugiat semper molestie felis variu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-06-06', 0, '33:17', 3, 10, 52),
(496, 'Light in the Mage', 'Nulla eleifend fringilla porttitor porta. Amet praesent nec fringilla primis porttitor conubia fermentum eros. Dictum velit ut scelerisque venenatis m', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-09-07', 0, '27:38', 3, 11, 52),
(497, 'The Licking Flowers', 'Lorem at lobortis lacinia ligula cubilia proin inceptos magna bibendum elementum senectus, amet at id finibus cursus ultricies per rhoncus blandit acc', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-11-21', 0, '42:11', 3, 12, 52),
(498, 'Seventh Fire', 'Mattis hendrerit arcu turpis rhoncus. Ac cursus eget consequat ullamcorper, purus torquent laoreet. Lorem ipsum dictum non lacus lacinia scelerisque p', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-05-08', 0, '46:38', 4, 1, 52),
(499, 'Birch of Trainer', 'Sed et hendrerit pharetra nullam tempus. Ornare eu libero class turpis odio duis cras. Interdum id mattis volutpat vestibulum quis tellus massa fringi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-01-05', 0, '32:59', 4, 2, 52),
(500, 'The Women of the Roses', 'Adipiscing elit nulla sed nec ante curae pharetra condimentum tempus torquent porta morbi tristique nisl. Suspendisse eleifend ex curae hac vel maximu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-09-03', 0, '41:11', 4, 3, 52),
(501, 'Some Sliver', 'Ultrices faucibus ultricies commodo lectus accumsan fames iaculis aenean, dolor a fringilla. Sapien lacinia ac pharetra ad rhoncus laoreet diam sem, f', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-12-09', 0, '44:52', 4, 4, 52),
(502, 'The Shadowy Death', 'Elit dictum non quisque ex massa fusce orci nullam gravida eu dui maximus fermentum. At mattis et posuere proin ultricies ornare tempus lectus vel cla', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-04-10', 0, '29:52', 4, 5, 52),
(503, 'The Licking Flowers', 'Lorem interdum nulla id facilisis lacinia nisi commodo taciti torquent donec. Nec molestie fringilla porta. Id aliquam fusce hendrerit potenti risus. ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-09-27', 0, '29:45', 4, 6, 52),
(504, 'The Danger\'s Flight', 'Etiam finibus nec fusce sollicitudin vulputate sagittis dui bibendum, adipiscing velit pretium libero. Praesent mi velit a tellus purus fringilla prim', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-12-07', 0, '36:36', 4, 7, 52),
(505, 'Burning Something', 'Id vestibulum tincidunt a auctor primis dictumst eu curabitur sodales nam netus. At phasellus convallis fusce efficitur himenaeos donec congue ullamco', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-09-16', 0, '28:49', 4, 8, 52),
(506, 'The Licking Flowers', 'Ipsum interdum lacus ac ultrices molestie fringilla ante sagittis pellentesque efficitur sociosqu enim. Lobortis facilisis porttitor gravida enim. Fus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-10-14', 0, '43:13', 4, 9, 52),
(507, 'The Female of the Twins', 'Ipsum sit mi malesuada nec auctor nisi faucibus curae sollicitudin vulputate turpis risus aliquet, vitae integer suspendisse quisque mollis fusce fauc', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-01-30', 0, '23:21', 4, 10, 52),
(508, 'Silver Twilight', 'Consectetur volutpat vestibulum facilisis mollis nisi phasellus aliquam ex faucibus ante cubilia dui congue iaculis. Condimentum tempus accumsan netus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-01-29', 0, '21:46', 4, 11, 52),
(509, 'Silver Twilight', 'Egestas etiam mattis luctus varius curae hendrerit. Lorem sit amet sapien luctus leo quis condimentum inceptos odio potenti accumsan vehicula. Justo v', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-08-10', 0, '35:31', 4, 12, 52),
(510, 'Sliver in the Weeping', 'Non aliquam faucibus ante gravida conubia dignissim fames, sed id tellus ante pharetra. Sit elit praesent semper nostra dignissim habitant senectus, e', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-10-05', 0, '50:35', 1, 1, 53),
(511, 'Grey Sparks', 'Velit volutpat integer ac nec nisi primis vivamus vel enim blandit. Ipsum dolor sapien vestibulum ultrices ornare tempus donec elementum eros morbi. M', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-11-17', 0, '24:11', 1, 2, 53),
(512, 'Voyager in the Lord', 'Placerat mattis nullam sociosqu. Non metus luctus venenatis cursus litora torquent conubia risus. Adipiscing praesent vestibulum facilisis lacinia lig', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-11-19', 0, '49:24', 1, 3, 53),
(513, 'The Danger\'s Flight', 'Ultrices et porttitor imperdiet, dictum scelerisque ornare gravida vivamus rhoncus diam. Praesent non lacus sapien massa efficitur curabitur, sed nibh', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-03-10', 0, '42:36', 1, 4, 53),
(514, 'The Danger\'s Flight', 'Consectetur mattis feugiat facilisis aliquam platea accumsan bibendum elementum risus iaculis cras, leo tincidunt integer proin sollicitudin lectus mo', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-04-23', 0, '48:39', 1, 5, 53),
(515, 'The Female of the Twins', 'Mi nulla lacus sed maecenas luctus ultricies nullam pretium vel class sociosqu laoreet, lorem malesuada nec est venenatis et cubilia sagittis torquent', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-07-09', 0, '25:39', 2, 1, 53),
(516, 'The Female of the Twins', 'Consectetur adipiscing praesent mi egestas nibh faucibus ultricies urna consequat fermentum curabitur potenti. Ipsum adipiscing praesent tincidunt a l', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-02-07', 0, '47:55', 2, 2, 53),
(517, 'Burning Something', 'In sapien vestibulum mauris pulvinar convallis sagittis dui enim eros tristique fames. Erat facilisis mollis tellus augue nullam hac platea gravida pe', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-11-14', 0, '21:19', 2, 3, 53),
(518, 'The Women of the Roses', 'Ipsum velit quisque auctor mollis tellus et ornare pharetra porttitor commodo dui ad inceptos aenean. Interdum in placerat nibh facilisis ac semper mo', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-05-02', 0, '23:15', 2, 4, 53),
(519, 'The Female of the Twins', 'Sit sapien mattis luctus ultricies ornare dictumst rhoncus bibendum. Consectetur placerat luctus nisi felis sagittis laoreet. Porttitor tempus efficit', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-01-05', 0, '35:12', 2, 5, 53),
(520, 'The Female of the Twins', 'Non a pulvinar tempor venenatis odio bibendum. Sollicitudin gravida maximus ullamcorper. Vestibulum nec pulvinar fringilla ante ultricies ornare conub', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-09-30', 0, '42:49', 3, 1, 53),
(521, 'The Tale\'s Door', 'Interdum id mauris venenatis hendrerit efficitur risus, lorem consectetur nibh ligula semper ornare curabitur eros imperdiet risus. Egestas mattis jus', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-06-27', 0, '50:40', 3, 2, 53),
(522, 'The Women of the Roses', 'Placerat nibh integer suspendisse tortor fringilla vulputate urna sagittis gravida eu blandit potenti imperdiet senectus. Praesent volutpat nibh torqu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-08-01', 0, '35:26', 3, 3, 53),
(523, 'Voyager in the Lord', 'Sapien lobortis primis pretium laoreet. Lorem dolor nulla metus torquent sodales neque elementum nam, lobortis eget lectus sociosqu ad rhoncus ullamco', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-06-05', 0, '31:15', 3, 4, 53),
(524, 'Sliver in the Weeping', 'Lorem dolor sed justo lacinia nec sollicitudin porttitor consequat commodo porta enim diam vehicula risus. Dictum vulputate urna. Elit dictum mi non v', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-12-13', 0, '45:39', 3, 5, 53),
(525, 'The Tale\'s Door', 'Lacinia semper per rhoncus congue, amet sed malesuada leo feugiat quisque venenatis tellus pharetra urna commodo efficitur congue aliquet aenean. Mi d', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-03-29', 0, '47:51', 4, 1, 53),
(526, 'The Women of the Roses', 'In id velit mattis mauris pulvinar tempor cursus quam lectus himenaeos laoreet. Amet sed vestibulum ultrices nisi molestie purus posuere aptent turpis', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-12-01', 0, '50:49', 4, 2, 53),
(527, 'Shard of Dragon', 'Praesent mattis quisque phasellus varius ante vivamus odio accumsan congue diam, sit mi vitae phasellus massa varius ante posuere vivamus litora torqu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-06-14', 0, '21:26', 4, 3, 53),
(528, 'Light in the Mage', 'Lorem praesent mi suspendisse nunc felis platea ad inceptos accumsan, mi egestas finibus ex faucibus gravida torquent nostra porta elementum eros tris', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-03-21', 0, '20:41', 4, 4, 53),
(529, 'Some Sliver', 'Elit finibus feugiat a auctor mollis tellus nisi euismod class inceptos, ipsum placerat finibus varius. Nibh facilisis aliquam eget. Adipiscing dictum', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-03-31', 0, '48:25', 4, 5, 53),
(530, 'Flames of Dreams', 'Nibh dictumst magna. Placerat lobortis leo nibh semper nisi cursus ante primis dui aptent elementum nam ullamcorper dignissim. Amet etiam nibh suspend', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-12-01', 0, '42:28', 5, 1, 53),
(531, 'Silver Twilight', 'Sit praesent finibus nunc aptent bibendum. Leo convallis felis, massa fusce et torquent senectus fames. Maecenas facilisis est scelerisque tellus puru', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-07-19', 0, '44:39', 5, 2, 53),
(532, 'Obsession in the Spark', 'Suspendisse cubilia dictumst gravida blandit elementum. Consectetur mattis integer nec est pharetra euismod pellentesque efficitur class neque morbi. ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-04-27', 0, '48:41', 5, 3, 53),
(533, 'Burning Something', 'Phasellus arcu turpis eros, ultrices ante primis pellentesque aptent neque. Luctus ac mollis cursus ante sollicitudin efficitur sociosqu inceptos soda', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-12-21', 0, '32:52', 5, 4, 53),
(534, 'Sliver in the Weeping', 'Sit eleifend ultrices molestie purus urna torquent conubia donec, finibus nibh a semper tempor fringilla urna condimentum consequat aptent fermentum p', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-11-15', 0, '21:39', 5, 5, 53),
(535, 'Voyager in the Lord', 'Adipiscing vestibulum lobortis leo mollis faucibus nullam eget maximus accumsan habitant iaculis, lorem sit non phasellus convallis eget consequat lit', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-05-01', 0, '45:38', 6, 1, 53),
(536, 'The Dwindling Voyage', 'Ligula nec semper condimentum tempus aptent conubia imperdiet. Praesent sapien vulputate torquent bibendum aliquet. Non placerat finibus mauris tellus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-02-27', 0, '28:55', 6, 2, 53),
(537, 'The Licking Flowers', 'Elit praesent non justo feugiat facilisis quisque fringilla vel inceptos himenaeos congue laoreet morbi, non viverra et cubilia augue himenaeos odio a', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-10-14', 0, '49:59', 6, 3, 53),
(538, 'The Licking Flowers', 'Pulvinar est tempor pretium commodo pellentesque odio rhoncus ullamcorper, sed viverra leo pulvinar ut ultricies vulputate urna vivamus potenti sodale', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-09-21', 0, '50:39', 6, 4, 53),
(539, 'Seventh Fire', 'Ac aliquam felis class fermentum donec magna nam imperdiet morbi. Ipsum sit consectetur placerat id justo feugiat nunc est magna accumsan bibendum ero', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-09-28', 0, '45:47', 6, 5, 53),
(540, 'The Female of the Twins', 'Dui magna laoreet eros fames. At ligula augue pharetra tempus efficitur torquent magna potenti suscipit, lacus erat feugiat proin efficitur suscipit. ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-01-18', 0, '46:28', 1, 1, 54),
(541, 'The Danger\'s Flight', 'Tortor eu litora. Ipsum elit lobortis a ligula ut massa varius orci dictumst aptent. Non felis ultricies maximus blandit nisl, vestibulum tincidunt la', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-04-03', 0, '31:31', 1, 2, 54),
(542, 'The Licking Flowers', 'Nulla at id justo vitae nibh est fringilla ante orci proin libero torquent enim aenean. Sit mattis taciti, sit nulla nec mollis ex posuere curae eget.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-04-02', 0, '48:44', 1, 3, 54),
(543, 'The Shadowy Death', 'Dictum mauris cursus euismod himenaeos rhoncus elementum vehicula risus. Pharetra vulputate commodo pellentesque. Consectetur praesent feugiat sceleri', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-09-07', 0, '43:15', 1, 4, 54),
(544, 'Sliver in the Weeping', 'Lorem lacus et euismod condimentum platea efficitur ad per odio rhoncus congue habitant fames, dolor amet etiam a cubilia tempus class blandit congue ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-10-15', 0, '49:26', 1, 5, 54),
(545, 'The Dreamer\'s Flame', 'Sit suspendisse fringilla gravida. Mi nulla at feugiat facilisis suspendisse eget dui turpis elementum. Praesent interdum mi aliquam curae urna maximu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-03-01', 0, '42:15', 1, 6, 54),
(546, 'The Female of the Twins', 'Sed tincidunt felis ultricies augue vivamus taciti, aliquam eu class. Dolor sapien ac eleifend scelerisque posuere platea taciti porta curabitur duis ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-08-13', 0, '46:54', 1, 7, 54),
(547, 'Shard of Dragon', 'Mauris ut nisi vulputate quam platea inceptos rhoncus duis laoreet. Eleifend quisque eros, ipsum lacus mauris tincidunt lacinia tempor quis ex pretium', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-09-11', 0, '32:17', 1, 8, 54),
(548, 'The Female of the Twins', 'Cursus cubilia vel donec, elit placerat vitae mollis tempor primis arcu quam dictumst vel bibendum morbi. Lorem elit viverra maecenas vestibulum dapib', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-07-27', 0, '49:12', 1, 9, 54),
(549, 'Some Sliver', 'Dolor nulla erat leo mollis primis posuere augue vulputate sociosqu himenaeos elementum sem iaculis aenean. Massa ultricies ornare libero, cursus feli', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-04-20', 0, '44:16', 2, 1, 54),
(550, 'Name of Elves', 'Amet feugiat facilisis ex ante condimentum fermentum porta, amet consectetur maecenas lobortis ligula ultricies dictumst bibendum. Sed vestibulum feug', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-10-14', 0, '45:19', 2, 2, 54),
(551, 'Seventh Fire', 'Volutpat mauris leo phasellus molestie primis et hac dui litora suscipit diam aenean. Elit mi nulla in lacus sapien eleifend ultrices phasellus quam l', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-12-05', 0, '35:28', 2, 3, 54),
(552, 'The Dwindling Voyage', 'Ipsum viverra metus ac suspendisse aliquam cubilia vulputate tempus libero litora bibendum ullamcorper. Venenatis hac pellentesque efficitur tristique', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-11-15', 0, '50:34', 2, 4, 54),
(553, 'Sliver in the Weeping', 'Sit malesuada velit facilisis nisi ultricies dapibus porttitor condimentum platea dictumst laoreet suscipit. Sit praesent sapien velit vestibulum metu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-07-10', 0, '50:25', 2, 5, 54),
(554, 'Seventh Fire', 'Consectetur cursus massa ultricies hac turpis donec diam netus. Sed viverra vitae mauris suspendisse fringilla tempus efficitur torquent potenti accum', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-11-30', 0, '35:33', 2, 6, 54),
(555, 'The Shadowy Death', 'Luctus ultrices tellus porttitor quam sagittis maximus litora fermentum curabitur suscipit. Praesent sapien lobortis est aliquam fringilla curae tempu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-10-31', 0, '21:30', 2, 7, 54),
(556, 'Light in the Mage', 'Lorem praesent sapien id a nisi fringilla varius primis ornare sollicitudin euismod blandit elementum sem. Scelerisque convallis eget, consectetur id ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-10-19', 0, '25:42', 2, 8, 54),
(557, 'Shard of Dragon', 'Sed mauris nibh nunc molestie porta. Nulla massa orci sollicitudin diam tristique. Volutpat metus feugiat lacinia eleifend auctor est posuere gravida ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-03-14', 0, '49:51', 2, 9, 54),
(558, 'The Shadowy Death', 'Elit dictum lacus a lacinia mollis orci sagittis aptent taciti donec elementum tristique cras aenean. Interdum etiam lobortis nibh a lacinia quisque a', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-09-12', 0, '30:44', 1, 1, 55),
(559, 'Birch of Trainer', 'Mollis massa posuere, dolor ligula netus. Dictum non etiam metus proin pharetra dapibus vulputate vel turpis odio neque. Sed mauris integer facilisis ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-02-08', 0, '50:58', 1, 2, 55),
(560, 'Name of Elves', 'Metus quis aliquam pharetra euismod quam donec diam. Ac ultrices odio accumsan ullamcorper habitant. Mi nulla massa felis suscipit. Mi semper nam impe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-12-12', 0, '24:42', 1, 3, 55),
(561, 'Some Sliver', 'Adipiscing eleifend quisque ut est quis curae urna eu commodo sodales senectus nisl. Adipiscing mattis venenatis purus ornare per bibendum imperdiet. ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-10-09', 0, '32:18', 1, 4, 55),
(562, 'Sliver in the Weeping', 'Nulla in erat lobortis tellus nisi fusce varius libero porta curabitur duis eros dignissim. A dapibus quam sagittis commodo. Sit placerat erat id feug', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-01-04', 0, '26:37', 1, 5, 55),
(563, 'Birch of Trainer', 'Placerat at eleifend faucibus curae donec risus. Amet viverra eleifend purus et diam. Amet dictum in volutpat facilisis tortor ex orci litora fermentu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-11-17', 0, '28:28', 1, 6, 55),
(564, 'Birch of Trainer', 'Interdum mattis aptent. Luctus venenatis phasellus molestie massa fusce faucibus varius ante. Ac arcu platea dictumst elementum eros sem netus cras. E', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-01-28', 0, '40:30', 1, 7, 55),
(565, 'Birch of Trainer', 'A augue enim elementum. Praesent sapien justo nisi fusce commodo class litora blandit. Placerat nibh ligula suspendisse nullam platea imperdiet. Non s', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-06-24', 0, '20:50', 1, 8, 55),
(566, 'Birch of Trainer', 'Praesent mi placerat at pulvinar cursus hendrerit nullam condimentum dictumst litora per nam. Curae sollicitudin platea vel conubia nostra laoreet. Fe', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2019-02-24', 0, '50:13', 1, 9, 55),
(567, 'Name of Elves', 'Eleifend quisque vivamus litora conubia enim congue. Non justo luctus felis pharetra vulputate hac platea pellentesque conubia odio rhoncus eros ullam', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-07-27', 0, '29:23', 2, 1, 55),
(568, 'The Tale\'s Door', 'Consectetur egestas malesuada lacinia eleifend quisque posuere ultricies tempus eu vel conubia enim cras. Feugiat tempor ultrices molestie cubilia tem', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-01-21', 0, '32:25', 2, 2, 55),
(569, 'Birch of Trainer', 'A ligula est ultrices nullam, pharetra torquent aenean, auctor proin cras. Lorem sit nulla finibus vitae lacinia massa fusce dictumst porta neque duis', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-11-25', 0, '38:32', 2, 3, 55),
(570, 'Burning Something', 'Est cursus vivamus litora turpis donec imperdiet morbi cras, sed et sagittis, mi feugiat maximus. Ligula aptent porta, adipiscing volutpat semper tort', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-10-03', 0, '45:15', 2, 4, 55),
(571, 'The Dreamer\'s Flame', 'Amet in vitae varius curae litora rhoncus blandit accumsan. Amet non mauris cursus felis augue dui habitant. Justo massa felis arcu. Ac ut tellus mole', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-05-06', 0, '33:56', 2, 5, 55),
(572, 'Sliver in the Weeping', 'Malesuada etiam nec auctor ante vel ad donec diam ullamcorper fames. Orci donec duis, elit praesent dictum dapibus eget platea maximus taciti himenaeo', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-08-28', 0, '43:37', 2, 6, 55),
(573, 'The Female of the Twins', 'Viverra proin pretium urna lectus dignissim nisl iaculis. Suspendisse ornare porttitor vel torquent turpis risus. Lorem interdum in sed mattis vestibu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-01-20', 0, '31:37', 2, 7, 55),
(574, 'Shard of Dragon', 'Consectetur adipiscing elit praesent velit cursus fringilla eget eu donec blandit morbi aenean. Vitae eleifend ex orci magna odio potenti congue netus', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-05-12', 0, '33:30', 2, 8, 55),
(575, 'The Dwindling Voyage', 'Integer enim odio aenean. Dolor sit egestas vestibulum tincidunt ac nec quisque ut mollis varius pharetra urna bibendum. Ipsum sit mi in erat viverra ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-02-28', 0, '45:23', 2, 9, 55),
(576, 'Grey Sparks', 'Nulla pulvinar posuere pretium conubia. Aliquam gravida sodales, non in ac mollis ex orci ultricies pharetra arcu vel pellentesque morbi, egestas volu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-06-25', 0, '24:34', 3, 1, 55),
(577, 'Burning Something', 'Elit tincidunt ut faucibus ornare augue eu class per aliquet. Mattis facilisis nisi fusce libero inceptos odio, egestas maecenas nibh dictumst sodales', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-04-20', 0, '36:12', 3, 2, 55),
(578, 'Silver Twilight', 'Viverra nunc proin nullam lectus blandit, interdum in metus luctus nec ultricies dui sociosqu nam aliquet. Mi in luctus mollis pharetra maximus effici', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-01-23', 0, '24:14', 3, 3, 55),
(579, 'Obsession in the Spark', 'Mi sed a venenatis faucibus torquent fermentum duis habitant. Amet mi justo nibh nec phasellus fusce ornare dapibus efficitur conubia nostra. Sapien v', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-08-08', 0, '35:54', 3, 4, 55),
(580, 'The Dwindling Voyage', 'Cursus nullam fermentum habitant. Interdum nulla velit leo suspendisse nec ultrices tellus phasellus gravida libero sociosqu odio imperdiet senectus. ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-07-02', 0, '40:28', 3, 5, 55),
(581, 'The Female of the Twins', 'Leo integer tempor quis curae ultricies torquent odio accumsan imperdiet morbi. Consectetur vitae ac augue vulputate pellentesque cras, egestas sapien', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-11-08', 0, '28:28', 3, 6, 55),
(582, 'Sliver in the Weeping', 'Sed vitae facilisis nunc semper urna eu donec magna accumsan. Suspendisse condimentum eros. Amet vitae venenatis purus cursus ex eget vulputate arcu c', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-12-11', 0, '29:13', 3, 7, 55),
(583, 'The Shadowy Death', 'Egestas finibus maecenas quisque purus curae hendrerit eget consequat dictumst dui libero fermentum vehicula. Dolor ultrices primis et proin nostra in', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-06-18', 0, '46:25', 3, 8, 55),
(584, 'Sliver in the Weeping', 'Adipiscing praesent egestas pulvinar quisque auctor est nisi molestie et nullam consequat libero congue duis. Proin sagittis netus. Erat tincidunt arc', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-04-01', 0, '37:13', 3, 9, 55),
(585, 'The Dreamer\'s Flame', 'Erat velit mattis facilisis quisque ante curae sociosqu ad litora sodales laoreet morbi senectus. Adipiscing viverra varius orci enim accumsan nisl. M', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-01-31', 0, '50:42', 1, 1, 56),
(586, 'Flames of Dreams', 'Consectetur justo purus turpis congue nam, consectetur id quisque mollis scelerisque sollicitudin euismod habitasse vivamus inceptos magna laoreet. El', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-04-22', 0, '24:15', 1, 2, 56),
(587, 'Burning Something', 'Dolor sapien metus curae condimentum. Maecenas integer quis efficitur elementum. Metus ac suspendisse quis nisi phasellus molestie inceptos, praesent ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-08-25', 0, '31:43', 1, 3, 56),
(588, 'Some Sliver', 'Tempor hac sodales, etiam quisque ornare curabitur congue bibendum. Vitae massa vulputate class fermentum odio rhoncus sodales laoreet diam, interdum ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-08-25', 0, '45:12', 1, 4, 56),
(589, 'Shard of Dragon', 'Justo ut eros, ipsum venenatis ante arcu hac dictumst vel pellentesque taciti laoreet vehicula. Consectetur facilisis auctor fusce primis gravida pell', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-07-22', 0, '50:48', 1, 5, 56),
(590, 'Grey Sparks', 'Suspendisse aliquam dignissim, placerat id integer tempus eu neque elementum morbi, adipiscing integer quisque est venenatis ex curae efficitur porta ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-02-15', 0, '32:28', 1, 6, 56),
(591, 'Grey Sparks', 'Sapien maecenas arcu bibendum aliquet. Mauris molestie proin ornare consequat aptent curabitur odio congue. Mi eleifend molestie libero accumsan, scel', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-02-14', 0, '46:16', 1, 7, 56),
(592, 'The Tale\'s Door', 'A ultrices fusce curabitur. Dictum non mauris eget dictumst commodo nostra curabitur senectus iaculis. Luctus tellus pharetra magna. Elit nibh ac nisi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-07-16', 0, '43:47', 1, 8, 56),
(593, 'Burning Something', 'Aliquam hac fermentum ullamcorper aenean. Sit ligula tortor fusce varius platea sociosqu ad per laoreet eros aenean. Feugiat ex euismod quam litora tr', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-03-01', 0, '45:30', 2, 1, 56),
(594, 'The Women of the Roses', 'Sed at facilisis nunc quisque semper molestie cursus faucibus vulputate arcu commodo inceptos fermentum magna. Pretium taciti conubia diam aliquet. Ip', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-01-28', 0, '36:43', 2, 2, 56),
(595, 'Voyager in the Lord', 'Amet malesuada velit augue laoreet iaculis. Adipiscing non finibus mattis metus tincidunt nullam eget libero fermentum neque. Amet sed sapien tellus p', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-09-04', 0, '44:25', 2, 3, 56),
(596, 'The Force of the Silence', 'Nec auctor vel eros. Ipsum in pulvinar aliquam et tempus inceptos blandit congue morbi, nulla lacus velit mattis leo tincidunt mollis cubilia proin au', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-08-05', 0, '40:22', 2, 4, 56),
(597, 'Silver Twilight', 'Ipsum interdum lacus odio. Dictum mattis nunc semper venenatis fusce primis augue euismod urna hac habitasse curabitur potenti. Sed malesuada maecenas', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-07-02', 0, '22:57', 2, 5, 56),
(598, 'The Dreamer\'s Flame', 'Dictum integer aliquam dui curabitur accumsan, sit suspendisse cursus orci arcu hac lectus libero torquent. Class blandit nisl. Amet dictum semper fau', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-11-25', 0, '48:59', 2, 6, 56),
(599, 'Silver Twilight', 'Leo facilisis phasellus cursus ante urna turpis vehicula sem dignissim. Lacus felis orci hendrerit, consectetur nulla placerat lobortis lacinia venena', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-11-06', 0, '22:21', 2, 7, 56),
(600, 'The Force of the Silence', 'Etiam lobortis nec phasellus arcu quam efficitur odio morbi tristique. Non phasellus varius ante ultricies arcu efficitur sociosqu litora congue eleme', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-09-28', 0, '23:58', 2, 8, 56),
(601, 'Obsession in the Spark', 'Dolor sit non malesuada finibus metus ac ultrices aliquam quam commodo lectus vel inceptos vehicula. Lorem ipsum sit mi egestas integer auctor nullam ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-05-21', 0, '34:56', 3, 1, 56),
(602, 'Sliver in the Weeping', 'Sed at vitae tempor curae augue urna gravida torquent blandit eros risus senectus. Primis vulputate per. Scelerisque urna lectus. Nulla leo auctor tor', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-11-08', 0, '30:26', 3, 2, 56),
(603, 'The Force of the Silence', 'Dictum non malesuada metus suspendisse nunc tellus platea accumsan, erat facilisis tellus sagittis aenean. Finibus volutpat justo metus mauris faucibu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-05-02', 0, '26:24', 3, 3, 56),
(604, 'Sliver in the Weeping', 'Vestibulum metus auctor ultrices vivamus taciti elementum imperdiet ullamcorper. Egestas placerat leo lacinia scelerisque tellus nisi convallis ante p', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-07-06', 0, '27:55', 3, 4, 56),
(605, 'Sliver in the Weeping', 'Praesent dictumst neque elementum, adipiscing non porta laoreet suscipit cras. Elit non vitae nibh integer fusce primis augue sollicitudin bibendum tr', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-10-14', 0, '39:39', 3, 5, 56),
(606, 'Name of Elves', 'Etiam metus luctus ac auctor orci lectus libero efficitur odio duis senectus. Sit justo porttitor eu inceptos congue sem, leo integer lacinia phasellu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-02-14', 0, '30:11', 3, 6, 56),
(607, 'Seventh Fire', 'Amet consequat lectus. Dolor adipiscing metus tincidunt phasellus sagittis dui taciti sociosqu risus aenean, nulla viverra mattis a mollis cursus orci', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-10-23', 0, '32:37', 3, 7, 56),
(608, 'Silver Twilight', 'Amet adipiscing etiam volutpat metus pulvinar curae sollicitudin maximus taciti donec. Lacus mattis nibh integer nec commodo nostra elementum aliquet,', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-11-26', 0, '48:11', 3, 8, 56),
(609, 'Shard of Dragon', 'Ipsum auctor posuere porttitor tempus class ad inceptos turpis accumsan vehicula ullamcorper habitant morbi. Etiam feugiat tincidunt quam lectus pelle', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-02-19', 0, '40:35', 4, 1, 56);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(610, 'The Tale\'s Door', 'In metus tincidunt posuere habitant, adipiscing ante hendrerit vulputate efficitur himenaeos tristique nisl. Sit sed justo luctus ac posuere rhoncus e', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-05-29', 0, '26:23', 4, 2, 56),
(611, 'Some Sliver', 'Consectetur leo semper phasellus fusce hendrerit eget tempus dui conubia eros habitant. Integer pulvinar faucibus orci cubilia ad. Lacus viverra justo', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-05-02', 0, '25:42', 4, 3, 56),
(612, 'Light in the Mage', 'Malesuada erat ex faucibus proin quam litora vehicula ullamcorper netus, sed ac nisi posuere porttitor taciti nostra. Ligula ultricies eget nam. A tem', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-03-01', 0, '22:17', 4, 4, 56),
(613, 'Voyager in the Lord', 'Adipiscing dictum lacus placerat velit leo nunc quis ultrices gravida per porta aliquet netus. Ligula primis vivamus accumsan. Elit condimentum conseq', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-08-04', 0, '50:25', 4, 5, 56),
(614, 'Light in the Mage', 'Ante gravida tristique. Mauris nibh quisque tortor aliquam massa et cubilia lectus torquent magna suscipit diam. Elit in tincidunt facilisis pulvinar ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-10-02', 0, '22:32', 4, 6, 56),
(615, 'Flames of Dreams', 'Nunc ultricies sodales. Fringilla ornare commodo vel efficitur congue. Nulla a eleifend quisque scelerisque purus convallis vulputate consequat aenean', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-12-28', 0, '31:22', 4, 7, 56),
(616, 'The Tale\'s Door', 'Sit maecenas lacinia molestie consequat maximus ad bibendum. Sapien placerat tincidunt semper venenatis class vehicula iaculis. Dictum egestas vitae t', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-02-25', 0, '48:13', 4, 8, 56),
(617, 'The Women of the Roses', 'Sit dictum in placerat malesuada erat id integer est aptent sociosqu odio, velit metus mauris facilisis tempor molestie faucibus et vulputate sagittis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-01-29', 0, '32:40', 5, 1, 56),
(618, 'The Force of the Silence', 'Suspendisse phasellus purus gravida odio bibendum tristique aenean. Viverra a facilisis quisque auctor ex felis fringilla varius pharetra pretium vel ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-06-29', 0, '45:57', 5, 2, 56),
(619, 'The Tale\'s Door', 'Lacus nibh integer scelerisque convallis orci pretium tempus turpis. Ipsum erat velit tempor aliquam arcu consequat aptent taciti nostra vehicula, a s', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-07-28', 0, '33:24', 5, 3, 56),
(620, 'Obsession in the Spark', 'Maecenas tortor primis dictumst gravida taciti diam. Maecenas tincidunt nec massa varius posuere platea pellentesque taciti litora odio, interdum dict', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-02-18', 0, '32:43', 5, 4, 56),
(621, 'Voyager in the Lord', 'Vitae nibh pulvinar semper auctor ex ornare pellentesque conubia inceptos rhoncus accumsan nam tristique. Lorem praesent sapien velit mauris nec proin', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-02-20', 0, '41:30', 5, 5, 56),
(622, 'Silver Twilight', 'Amet orci taciti magna, consectetur praesent egestas facilisis lacinia eleifend tortor fusce ornare consequat ad conubia bibendum elementum aenean. Si', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2019-03-18', 0, '46:57', 5, 6, 56),
(623, 'Burning Something', 'Mi finibus justo feugiat curae sollicitudin inceptos himenaeos ullamcorper morbi. Velit leo a nec ut euismod habitasse lectus aptent ullamcorper iacul', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-03-29', 0, '31:48', 5, 7, 56),
(624, 'Sliver in the Weeping', 'Vestibulum et ornare sem. Dolor praesent non egestas lobortis auctor ultricies consequat tempus eu donec curabitur vehicula risus aenean. Lorem praese', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2000-06-06', 0, '49:24', 5, 8, 56),
(625, 'Grey Sparks', 'Dictum mattis metus tincidunt ligula suspendisse semper fringilla hac per enim rhoncus duis, a purus orci vivamus vehicula. Metus lobortis luctus nunc', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-02-11', 0, '36:29', 6, 1, 56),
(626, 'The Dwindling Voyage', 'Interdum malesuada maecenas mattis leo tortor phasellus ornare class odio accumsan sem. Consectetur lacus convallis fringilla sociosqu nam nisl. Integ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-08-11', 0, '44:44', 6, 2, 56),
(627, 'Burning Something', 'Id velit est habitasse maximus nostra duis aenean. Tincidunt nec scelerisque molestie fringilla dapibus litora porta, non leo ac nec mollis cursus ant', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-12-14', 0, '24:22', 6, 3, 56),
(628, 'Seventh Fire', 'Egestas in feugiat nec semper tellus ornare porttitor fermentum enim curabitur blandit congue eros dignissim. Elit placerat finibus volutpat vestibulu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-12-03', 0, '38:54', 6, 4, 56),
(629, 'Name of Elves', 'Vitae metus convallis cubilia curae sagittis gravida lectus maximus aptent blandit potenti accumsan, lorem non sed quisque est cursus cubilia taciti. ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-07-06', 0, '38:28', 6, 5, 56),
(630, 'The Female of the Twins', 'In vestibulum mauris feugiat lacinia scelerisque primis habitasse inceptos risus habitant, dolor mi sapien malesuada nibh nunc tortor orci vulputate p', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-12-16', 0, '45:50', 6, 6, 56),
(631, 'Silver Twilight', 'Adipiscing dictum mi in eleifend est aliquam purus cursus pharetra urna maximus rhoncus bibendum. Dolor at vestibulum lobortis luctus augue elementum ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-09-19', 0, '32:44', 6, 7, 56),
(632, 'The Danger\'s Flight', 'Mauris est euismod arcu porta neque cras, cubilia tempus platea sociosqu laoreet, consectetur etiam luctus semper molestie. Metus suspendisse maximus ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-05-26', 0, '24:13', 6, 8, 56),
(633, 'Voyager in the Lord', 'Interdum cursus hendrerit euismod tristique. Viverra eleifend fringilla libero neque, pharetra eget habitant. Amet maecenas nec semper tellus euismod ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-02-21', 0, '43:15', 7, 1, 56),
(634, 'Birch of Trainer', 'Finibus mattis a nisi torquent suscipit diam nisl. Mi sapien metus lectus diam. Est tempor purus posuere. Lorem sapien justo tellus fermentum. Luctus ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-06-13', 0, '20:14', 7, 2, 56),
(635, 'Voyager in the Lord', 'Lorem justo ac venenatis vulputate suscipit aliquet nisl. Dolor metus integer quisque mollis purus fusce aptent rhoncus blandit vehicula morbi senectu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-09-26', 0, '41:29', 7, 3, 56),
(636, 'The Female of the Twins', 'Felis arcu condimentum hac. Viverra nunc mollis convallis pretium dui class laoreet fames. Ipsum egestas sapien erat etiam vitae mauris auctor dapibus', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-07-14', 0, '42:11', 7, 4, 56),
(637, 'The Tale\'s Door', 'Sapien erat tempor tellus urna vivamus fames. Lacus tempor faucibus augue porttitor per aenean. Lorem ipsum sit maecenas nibh tortor quam aptent per i', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-01-03', 0, '21:57', 7, 5, 56),
(638, 'The Dwindling Voyage', 'Interdum eleifend nec et curae proin odio, praesent feugiat est venenatis hendrerit ornare arcu dui vel himenaeos turpis magna enim odio. Sed semper m', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-04-06', 0, '24:29', 7, 6, 56),
(639, 'Voyager in the Lord', 'Ipsum finibus facilisis lacinia ex hendrerit sociosqu litora nostra inceptos fermentum, finibus viverra volutpat integer facilisis quisque ut tellus p', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-08-10', 0, '40:44', 7, 7, 56),
(640, 'The Female of the Twins', 'Lorem ipsum maecenas volutpat ligula vulputate consequat platea rhoncus risus cras. Finibus lobortis nibh condimentum vivamus ad per. Praesent etiam i', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-12-23', 0, '34:28', 7, 8, 56),
(641, 'Shard of Dragon', 'Placerat finibus volutpat vitae molestie massa libero diam senectus. Dictum egestas erat velit maecenas vestibulum ligula ac taciti morbi cras. Suspen', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-10-14', 0, '33:53', 8, 1, 56),
(642, 'The Female of the Twins', 'Velit viverra phasellus himenaeos odio congue diam fames, mi maecenas elementum morbi cras, elit sapien a integer eleifend auctor tempor varius posuer', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-06-19', 0, '30:50', 8, 2, 56),
(643, 'The Tale\'s Door', 'Feugiat ante vivamus sociosqu odio sem dignissim senectus. Sed velit luctus integer ac nec massa cubilia hendrerit augue lectus vivamus duis dignissim', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-06-28', 0, '47:52', 8, 3, 56),
(644, 'The Dreamer\'s Flame', 'Egestas ultrices euismod. Felis platea elementum. Nulla malesuada lobortis luctus suspendisse semper ultrices aptent nostra rhoncus, praesent placerat', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-10-24', 0, '31:11', 8, 4, 56),
(645, 'The Licking Flowers', 'Elit praesent nec ultrices aliquam ex fusce orci sociosqu nam. Non lacus phasellus consequat sem morbi. Velit vestibulum metus luctus nec pulvinar cub', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-10-28', 0, '33:42', 8, 5, 56),
(646, 'Seventh Fire', 'Nulla ac ex dictumst nam aliquet. Tincidunt phasellus convallis augue urna gravida lectus taciti. Malesuada luctus ac venenatis hendrerit lectus donec', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-04-14', 0, '34:49', 8, 6, 56),
(647, 'The Dwindling Voyage', 'Placerat ac tortor est et eget hac himenaeos blandit duis ullamcorper. Volutpat a nec phasellus pretium odio. Maecenas facilisis auctor mollis nullam ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-11-08', 0, '46:14', 8, 7, 56),
(648, 'Birch of Trainer', 'Lorem erat feugiat eleifend phasellus dapibus vel nostra accumsan imperdiet tristique senectus. Lobortis sollicitudin porttitor vel nostra blandit pot', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-01-29', 0, '30:59', 8, 8, 56),
(649, 'The Dwindling Voyage', 'At tincidunt ac felis eget consequat hac per tristique. Viverra vestibulum porta. At finibus nec tortor per conubia donec bibendum suscipit. Dolor pra', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-08-23', 0, '24:59', 1, 1, 57),
(650, 'Silver Twilight', 'Non sapien tellus eget porttitor eu dui sodales laoreet. Velit vestibulum integer quisque faucibus pharetra sollicitudin, praesent dictum erat a est q', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-01-03', 0, '22:29', 1, 2, 57),
(651, 'Birch of Trainer', 'Adipiscing pharetra dapibus consequat platea elementum, egestas sed placerat volutpat pulvinar mollis pretium gravida sociosqu odio rhoncus nam tristi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-12-21', 0, '31:32', 1, 3, 57),
(652, 'The Female of the Twins', 'Ex primis sagittis lectus enim. In lacus malesuada a est massa sollicitudin porttitor turpis accumsan congue suscipit fames. Interdum lobortis euismod', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-11-14', 0, '41:56', 1, 4, 57),
(653, 'Burning Something', 'Placerat justo semper est ex curae eget hac dui aenean, ipsum dolor adipiscing lacus vitae luctus ligula ex accumsan neque nisl, fusce curae ornare ph', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-11-01', 0, '32:51', 1, 5, 57),
(654, 'The Licking Flowers', 'Nunc nisi massa gravida. Velit mattis pulvinar cursus et. Ac quisque tempor quis ex proin hendrerit ornare hac eu vel efficitur potenti, cubilia ad ac', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-05-27', 0, '29:37', 1, 6, 57),
(655, 'Flames of Dreams', 'Mauris auctor scelerisque ornare euismod eget nostra turpis bibendum. Dolor sit egestas nulla molestie odio potenti suscipit imperdiet, tincidunt tort', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-04-30', 0, '36:59', 1, 7, 57),
(656, 'Some Sliver', 'In maecenas volutpat ac mollis ornare euismod tempus efficitur duis fames nisl cras. Ipsum amet placerat ut fringilla pharetra nullam himenaeos odio r', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-04-18', 0, '33:25', 1, 8, 57),
(657, 'The Dreamer\'s Flame', 'Eleifend ante aptent fermentum potenti. Ultrices fusce sociosqu. Elit egestas maecenas ligula suspendisse pulvinar ut molestie purus massa quam habita', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-06-09', 0, '40:57', 1, 9, 57),
(658, 'Flames of Dreams', 'Dolor lobortis suspendisse tortor nisi et pharetra enim potenti sodales eros nam ullamcorper fames nisl. Maecenas vestibulum metus auctor orci posuere', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-05-04', 0, '28:44', 1, 10, 57),
(659, 'Birch of Trainer', 'Nibh curae proin aptent potenti iaculis aenean, nulla massa porttitor himenaeos. Egestas viverra vestibulum mauris nunc ex faucibus curabitur, erat ma', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-05-10', 0, '43:27', 1, 11, 57),
(660, 'The Licking Flowers', 'Interdum lobortis scelerisque orci ornare neque risus aliquet. Sapien nec augue pharetra. Adipiscing facilisis ultricies, metus curae vivamus vehicula', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-08-19', 0, '25:28', 2, 1, 57),
(661, 'The Dwindling Voyage', 'Tincidunt lacinia urna libero ullamcorper. Elit etiam mattis ligula orci proin ornare platea lectus efficitur congue duis imperdiet, lorem in velit qu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-09-17', 0, '49:35', 2, 2, 57),
(662, 'Flames of Dreams', 'Metus pulvinar mollis massa eget arcu nostra odio bibendum vehicula iaculis. Sit amet malesuada etiam lacinia sollicitudin euismod urna sagittis eu li', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-05-06', 0, '47:16', 2, 3, 57),
(663, 'The Dwindling Voyage', 'Integer gravida libero potenti sodales risus fames, interdum nulla at viverra ultrices proin aptent. Elit sapien placerat eleifend scelerisque, lacini', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-08-15', 0, '45:52', 2, 4, 57),
(664, 'Voyager in the Lord', 'Non integer libero odio, elit integer eleifend pulvinar lectus libero inceptos eros. Sit amet non vitae auctor quis orci sollicitudin hac eu maximus t', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-03-28', 0, '43:14', 2, 5, 57),
(665, 'The Licking Flowers', 'Mi lobortis lacinia auctor ex ante maximus blandit potenti suscipit, egestas nulla etiam viverra metus ut tempus vel curabitur odio blandit potenti co', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-12-30', 0, '22:55', 2, 6, 57),
(666, 'Birch of Trainer', 'Elit egestas etiam ac suspendisse nec purus primis et sagittis aptent elementum diam senectus, praesent velit luctus pulvinar massa faucibus curae pre', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-12-12', 0, '41:10', 2, 7, 57),
(667, 'The Dreamer\'s Flame', 'Lobortis tincidunt eleifend tortor aliquam molestie ex eget litora torquent vehicula dignissim. Maecenas justo semper ornare litora torquent turpis di', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-06-15', 0, '26:57', 2, 8, 57),
(668, 'The Shadowy Death', 'Placerat nec ut posuere cubilia gravida efficitur aptent blandit suscipit imperdiet sem tristique. Eleifend tortor fringilla ornare tempus accumsan er', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-05-16', 0, '43:41', 2, 9, 57),
(669, 'Sliver in the Weeping', 'Non volutpat integer massa fringilla pharetra quam hac enim rhoncus congue. Finibus mauris lacinia convallis fusce tempus fermentum magna enim. Sed a ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-10-07', 0, '21:12', 2, 10, 57),
(670, 'Shard of Dragon', 'Sed placerat volutpat leo aliquam primis nullam vulputate pellentesque taciti neque nam. Adipiscing malesuada torquent. Lorem placerat quis orci torqu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-10-16', 0, '48:21', 2, 11, 57),
(671, 'Grease', 'Dolor id luctus quisque semper dapibus vulputate porttitor sagittis class fermentum curabitur sodales habitant. Non sed at ex massa hac habitasse ferm', 'entities/videos/3.mp4', 1, '2019-10-12 22:07:53', '2012-08-17', 1, '47:53', 0, 0, 58),
(675, 'Paddington Bear', 'Sapien eleifend efficitur, vestibulum luctus lacinia sollicitudin class imperdiet tristique. Interdum placerat erat viverra justo ultricies pharetra e', 'entities/videos/3.mp4', 1, '2019-10-12 22:07:53', '2000-11-07', 0, '48:18', 0, 0, 59),
(685, 'Sliver in the Weeping', 'Velit dapibus suscipit. Ipsum nunc quis nisi ornare consequat pellentesque efficitur rhoncus suscipit eros senectus, velit finibus mattis feugiat inte', 'entities/videos/1.mp4', 1, '2019-10-12 22:07:53', '2017-10-02', 0, '50:54', 1, 1, 60),
(693, 'Silver Twilight', 'In lacus id lacinia venenatis convallis varius cubilia eu vivamus inceptos, lorem amet consectetur suspendisse phasellus proin porttitor class netus. ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-10-07', 1, '34:38', 1, 1, 61),
(694, 'Silver Twilight', 'Interdum in id ut pharetra consequat platea porta curabitur ullamcorper. Praesent non sed at feugiat a mollis scelerisque quis ex primis posuere dapib', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-03-11', 0, '30:14', 1, 2, 61),
(695, 'The Licking Flowers', 'Velit cursus augue. Ipsum elit etiam vitae eleifend scelerisque quam pellentesque aenean. Adipiscing malesuada etiam vestibulum nibh tempor tellus var', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-03-25', 0, '29:35', 1, 3, 61),
(696, 'Seventh Fire', 'Amet at feugiat venenatis cubilia gravida eu vel fermentum rhoncus congue. Auctor phasellus vulputate arcu sociosqu neque. Mattis augue pretium sagitt', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-07-30', 0, '45:28', 1, 4, 61),
(697, 'The Tale\'s Door', 'Elit mauris a eleifend semper cursus fusce augue vulputate sagittis himenaeos odio eros tristique, at ut convallis cursus dictumst odio congue sem nis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-10-18', 0, '27:57', 1, 5, 61),
(698, 'The Danger\'s Flight', 'Sapien malesuada nec curae inceptos. Mattis metus nec venenatis hendrerit eget maximus litora conubia himenaeos potenti duis nam aenean, ipsum elit fi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-03-24', 0, '46:51', 1, 6, 61),
(699, 'The Women of the Roses', 'Etiam mauris ligula nunc ut primis dapibus imperdiet, mi etiam tincidunt suspendisse quis ultrices primis condimentum pellentesque inceptos himenaeos ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-05-02', 0, '25:57', 1, 7, 61),
(700, 'Sliver in the Weeping', 'Sed maecenas tellus fringilla libero. Sapien placerat at maecenas justo facilisis felis varius curae pharetra tempus class suscipit dignissim fames, e', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-11-09', 0, '34:55', 1, 8, 61),
(701, 'Sliver in the Weeping', 'Interdum erat justo tortor mollis tellus molestie fermentum vehicula, sed erat velit molestie ornare sagittis aptent odio rhoncus diam. Adipiscing lac', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2019-04-05', 0, '29:33', 1, 9, 61),
(702, 'Grey Sparks', 'Praesent lacus sed at pulvinar eget pretium per fermentum. Nulla mattis mauris et nullam hac sagittis vel litora duis dignissim risus. Lorem leo eleif', 'entities/videos/4.mp4', 1, '2019-10-12 22:07:53', '2002-04-10', 0, '38:21', 1, 1, 62),
(714, 'Voyager in the Lord', 'Faucibus et proin ultricies lectus, ac orci enim. Erat mattis vestibulum suspendisse euismod tempus ad fames aenean. Ipsum amet erat ac faucibus ferme', 'entities/videos/6.mp4', 1, '2019-10-12 22:07:53', '2016-09-10', 0, '42:56', 1, 1, 63),
(794, 'Grey Sparks', 'Mauris semper tortor mollis scelerisque dignissim morbi. Ipsum finibus fringilla sociosqu per fermentum rhoncus suscipit morbi, semper curabitur laore', 'entities/videos/4.mp4', 1, '2019-10-12 22:07:53', '2004-10-22', 0, '28:13', 1, 1, 64),
(902, 'The Tale\'s Door', 'Mi at vestibulum quisque et pretium quam tempus hac himenaeos diam fames. Interdum feugiat lectus risus, nulla suspendisse nunc varius ante sagittis e', 'entities/videos/1.mp4', 1, '2019-10-12 22:07:53', '2007-02-18', 0, '32:11', 1, 1, 66),
(909, 'Flames of Dreams', 'Interdum justo ligula posuere gravida commodo laoreet nam. Sed quis orci porttitor enim sem. Tincidunt eleifend sem. Consectetur vestibulum lacinia ul', 'entities/videos/5.mp4', 1, '2019-10-12 22:07:53', '2009-03-07', 0, '30:11', 1, 1, 67),
(954, 'Voyager in the Lord', 'Mi volutpat feugiat nibh ultrices phasellus purus et proin per neque. Adipiscing metus pretium turpis accumsan neque. Id volutpat nibh a eleifend aliq', 'entities/videos/4.mp4', 1, '2019-10-12 22:07:53', '2015-01-15', 0, '47:13', 1, 1, 68),
(1020, 'Birch of Trainer', 'Nulla vestibulum aliquam vulputate arcu dui enim suscipit senectus. Finibus massa tempus vivamus, consectetur mi id finibus quisque convallis felis va', 'entities/videos/3.mp4', 1, '2019-10-12 22:07:53', '2009-08-02', 0, '26:33', 1, 1, 69),
(1092, 'Voyager in the Lord', 'Consectetur praesent malesuada erat luctus lacinia ligula cursus arcu hac gravida neque imperdiet. Maecenas luctus mollis curae sagittis eu torquent d', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-01-29', 0, '34:18', 1, 1, 70),
(1093, 'Obsession in the Spark', 'Interdum leo facilisis mollis venenatis ultrices purus euismod tempus himenaeos sodales neque risus morbi. In finibus luctus integer aliquam fusce urn', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-11-30', 0, '32:24', 1, 2, 70),
(1094, 'The Danger\'s Flight', 'Venenatis faucibus arcu imperdiet. Consectetur tortor aliquam convallis orci ultricies ornare eget urna habitasse commodo lectus porta ullamcorper dig', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-11-25', 0, '39:16', 1, 3, 70),
(1095, 'The Dwindling Voyage', 'Nibh ultrices lectus neque, mattis justo integer facilisis lacinia ultrices phasellus massa primis commodo dui donec. Dolor finibus metus pulvinar auc', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-06-15', 0, '35:37', 1, 4, 70),
(1096, 'Silver Twilight', 'Elit finibus massa nullam. Tortor ad diam, maecenas vestibulum metus venenatis ultrices nisi purus cubilia nullam euismod habitasse sagittis enim sene', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-09-02', 0, '37:46', 1, 5, 70),
(1097, 'The Force of the Silence', 'Eleifend ante proin litora magna congue ullamcorper fames. Erat tincidunt tempor venenatis convallis fringilla urna condimentum tempus vivamus himenae', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-10-31', 0, '30:54', 1, 6, 70),
(1098, 'Birch of Trainer', 'Conubia neque laoreet. Interdum dictum velit lobortis mollis ultrices phasellus pellentesque himenaeos blandit suscipit risus. Amet mi egestas at metu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-04-08', 0, '32:31', 1, 7, 70),
(1099, 'The Dreamer\'s Flame', 'Nibh ut tellus ex ante orci ornare urna platea sagittis conubia himenaeos. Praesent leo integer auctor nisi molestie felis fringilla curae taciti. Ves', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-11-12', 0, '40:30', 1, 8, 70),
(1100, 'Shard of Dragon', 'Ipsum mi non leo ligula felis hac taciti torquent odio neque bibendum, lacus suspendisse orci vulputate himenaeos donec diam aliquet. Ipsum in aliquam', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-05-04', 0, '41:25', 2, 1, 70),
(1101, 'Flames of Dreams', 'Lorem elit etiam maecenas feugiat quis proin dapibus torquent conubia rhoncus imperdiet. Dolor malesuada maecenas mattis vitae augue dapibus pretium p', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-03-20', 0, '49:45', 2, 2, 70),
(1102, 'The Licking Flowers', 'At varius platea tristique. Elit egestas lacus cubilia quam tempus hac eu pellentesque torquent inceptos laoreet aliquet senectus cras. Viverra vestib', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-09-17', 0, '49:50', 2, 3, 70),
(1103, 'The Women of the Roses', 'Adipiscing finibus ultrices primis tempus vivamus ad netus. Placerat sagittis maximus, ipsum finibus tincidunt suspendisse tellus libero taciti fermen', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-05-28', 0, '45:50', 2, 4, 70),
(1104, 'The Dwindling Voyage', 'Id nunc pharetra. Facilisis vulputate habitasse ad torquent turpis ullamcorper. Vitae massa nullam sagittis conubia enim. Nulla viverra integer facili', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-03-02', 0, '24:14', 2, 5, 70),
(1105, 'Voyager in the Lord', 'Lacus mauris eleifend tortor quis felis proin arcu tempus lectus habitant aenean. Posuere arcu conubia neque. Venenatis vulputate gravida class imperd', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-11-24', 0, '32:43', 2, 6, 70),
(1106, 'The Female of the Twins', 'Egestas convallis class blandit congue neque. Mi eu vivamus aliquet. Amet interdum lobortis leo pulvinar orci pharetra urna pellentesque sociosqu port', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-10-15', 0, '40:55', 2, 7, 70),
(1107, 'Name of Elves', 'Consectetur velit justo phasellus fringilla ante dictumst efficitur nostra fermentum donec enim, scelerisque et eget duis fames, mattis lacinia pulvin', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-10-10', 0, '50:57', 2, 8, 70),
(1108, 'Voyager in the Lord', 'Egestas etiam lobortis molestie purus et dapibus habitasse sagittis eu per habitant, sit egestas nulla viverra vitae feugiat ligula varius orci himena', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-08-28', 0, '21:16', 1, 1, 81),
(1109, 'Voyager in the Lord', 'Consectetur dictum id velit vitae mauris lacinia fusce orci lectus blandit sodales neque, consectetur phasellus aliquam torquent. Erat facilisis ante.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-07-11', 0, '45:52', 1, 2, 81),
(1110, 'The Women of the Roses', 'Sapien nec class nisl. At quisque semper tempor quis molestie orci et commodo pellentesque sem aliquet, sapien viverra pretium sagittis pellentesque l', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-03-11', 0, '50:30', 1, 3, 81),
(1111, 'The Dreamer\'s Flame', 'Dictum sapien quisque phasellus cursus ante ultricies augue consequat diam, interdum metus a nunc tellus fringilla ornare pharetra eget vulputate quam', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-06-03', 0, '29:51', 1, 4, 81),
(1112, 'Shard of Dragon', 'Ipsum placerat quisque scelerisque quis ex hendrerit eget libero donec habitant fames, adipiscing praesent varius tempus rhoncus blandit laoreet eleme', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-02-03', 0, '50:32', 1, 5, 81),
(1113, 'The Dwindling Voyage', 'Interdum nulla ac convallis ante primis orci pharetra consequat lectus maximus ad curabitur morbi. Lobortis phasellus primis pharetra. Interdum finibu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-02-25', 0, '38:10', 1, 6, 81),
(1114, 'Voyager in the Lord', 'Dolor dictum ut scelerisque faucibus orci conubia porta. Malesuada nec semper tortor ultricies euismod tempus dui enim morbi. Malesuada leo et pharetr', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-01-25', 0, '34:46', 1, 7, 81),
(1115, 'The Female of the Twins', 'Lacinia pulvinar cursus orci sagittis aptent. Amet nunc nec quisque mollis molestie fringilla proin sollicitudin eu libero torquent. Dolor maecenas a ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-01-12', 0, '39:53', 1, 8, 81),
(1116, 'The Licking Flowers', 'Dolor egestas nec magna accumsan. Consectetur in viverra eget dignissim aliquet. Sit ex primis per. Lacus placerat nunc ut auctor scelerisque euismod ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-03-02', 0, '47:49', 1, 9, 81),
(1117, 'The Female of the Twins', 'Consectetur elit in at mauris nibh semper urna libero porta rhoncus imperdiet tristique. Lacinia risus netus, massa curabitur potenti, consectetur nul', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-01-31', 0, '49:15', 2, 1, 81),
(1118, 'The Force of the Silence', 'Sit sed feugiat ac primis cubilia eu dui efficitur taciti morbi iaculis. Interdum dictum finibus metus leo felis orci ultricies eget pretium tempus ef', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-05-18', 0, '47:59', 2, 2, 81),
(1119, 'The Female of the Twins', 'Sapien malesuada leo tempor hac lectus pellentesque per congue duis laoreet senectus. Erat justo luctus tincidunt ac nisi varius ultricies urna litora', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-11-05', 0, '33:14', 2, 3, 81),
(1120, 'Burning Something', 'Ligula vulputate eu fermentum aenean, sapien et lectus class. Metus tempor quam platea accumsan bibendum dignissim. Interdum justo ac eleifend nec con', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-08-24', 0, '33:18', 2, 4, 81),
(1121, 'Obsession in the Spark', 'Mauris tortor varius primis hendrerit gravida eu himenaeos. Dolor lacus sed erat etiam finibus luctus facilisis quisque faucibus ante per odio netus. ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-01-03', 0, '28:47', 2, 5, 81),
(1122, 'The Tale\'s Door', 'Interdum metus pharetra litora himenaeos accumsan sem tristique iaculis, dolor sit mattis ultrices orci ornare eu commodo vivamus magna bibendum eleme', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-07-09', 0, '34:52', 2, 6, 81),
(1123, 'Voyager in the Lord', 'Praesent malesuada feugiat eleifend venenatis quis faucibus augue eget urna aptent inceptos accumsan, feugiat lacinia tortor est dui per fermentum. Am', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-08-24', 0, '26:59', 2, 7, 81),
(1124, 'The Shadowy Death', 'Dolor nec cursus ante pretium sagittis commodo aptent torquent imperdiet cras. Egestas varius rhoncus laoreet senectus. Mi mattis lobortis est pretium', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-02-19', 0, '25:33', 2, 8, 81),
(1125, 'Some Sliver', 'Ipsum sed mauris tortor tempor aliquam dictumst class potenti congue morbi iaculis. Consectetur sed etiam viverra justo quisque venenatis quis pharetr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-10-08', 0, '40:58', 2, 9, 81),
(1126, 'Burning Something', 'Ligula tempus elementum nam. Lorem amet id pulvinar est venenatis magna iaculis, auctor nisi neque laoreet. Lacinia quam sociosqu enim accumsan habita', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-12-08', 0, '20:51', 3, 1, 81),
(1127, 'Seventh Fire', 'Ac quis nisi orci euismod pretium vivamus porta senectus fames nisl. Ipsum vulputate aptent ad turpis imperdiet. Dolor lacus erat etiam vitae blandit ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-12-09', 0, '32:39', 3, 2, 81),
(1128, 'Obsession in the Spark', 'Aliquam convallis massa gravida suscipit diam sem, mauris leo est nisi enim bibendum senectus nisl. Volutpat tincidunt scelerisque convallis augue vul', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-07-17', 0, '31:55', 3, 3, 81),
(1129, 'The Force of the Silence', 'Sed facilisis scelerisque maximus enim duis dignissim. Pulvinar eu efficitur bibendum suscipit nisl. Sed placerat id feugiat molestie orci curae tempu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-05-20', 0, '20:40', 3, 4, 81),
(1130, 'The Licking Flowers', 'Malesuada integer ac mollis tellus nisi ornare eu class porta sem morbi senectus. Amet interdum ut auctor venenatis condimentum dictumst aptent socios', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-06-07', 0, '27:36', 3, 5, 81),
(1131, 'Silver Twilight', 'Amet sapien mattis torquent neque nisl. Praesent massa ornare vulputate hac. Dolor malesuada eleifend varius pretium platea. Sit amet elit malesuada i', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-11-20', 0, '48:52', 3, 6, 81),
(1132, 'The Dwindling Voyage', 'Sed justo pulvinar primis orci euismod porttitor tempus dictumst efficitur accumsan ullamcorper. Lacus facilisis auctor quis aptent turpis odio accums', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-11-05', 0, '42:40', 3, 7, 81),
(1133, 'The Licking Flowers', 'Placerat mattis justo lobortis tortor fusce dapibus pretium condimentum gravida sem, lorem lacus at feugiat ligula eleifend quis primis vulputate arcu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-02-24', 0, '21:23', 3, 8, 81),
(1134, 'Flames of Dreams', 'Malesuada volutpat justo quam, consectetur viverra justo feugiat aliquam massa nullam euismod maximus himenaeos neque risus. Praesent lacus nec sceler', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-06-01', 0, '47:49', 3, 9, 81),
(1135, 'Birch of Trainer', 'Sed metus tincidunt quisque felis habitasse platea lectus inceptos fermentum duis vehicula imperdiet tristique fames. Praesent non finibus justo nibh ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-11-26', 0, '23:53', 4, 1, 81),
(1136, 'Light in the Mage', 'Ipsum egestas mattis augue arcu vivamus sociosqu senectus, nulla maecenas lobortis a est cursus pharetra consequat sagittis aptent congue imperdiet se', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-02-04', 0, '46:35', 4, 2, 81),
(1137, 'Seventh Fire', 'Interdum nec phasellus primis conubia, non vestibulum ut quis sollicitudin dui blandit suscipit. Dolor interdum lacus tincidunt nec phasellus nullam e', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-06-29', 0, '31:17', 4, 3, 81),
(1138, 'The Licking Flowers', 'Lobortis est hac pellentesque curabitur, scelerisque urna maximus. Lacinia quisque ultrices dictumst congue aliquet. Elit id integer fusce orci et urn', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-10-01', 0, '50:41', 4, 4, 81),
(1139, 'The Dreamer\'s Flame', 'Consectetur lacus facilisis auctor tortor cursus ex augue nullam lectus conubia suscipit aliquet. Volutpat ut mollis phasellus ultricies dui nisl, mal', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-12-08', 0, '32:55', 4, 5, 81),
(1140, 'Name of Elves', 'Posuere arcu platea maximus nam, lobortis hendrerit neque. Nibh quisque semper aliquam molestie curae urna maximus donec blandit suscipit nam imperdie', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-09-04', 0, '24:36', 4, 6, 81),
(1141, 'The Licking Flowers', 'Egestas auctor ultrices felis torquent per nostra fermentum neque nam senectus. Vitae eleifend ornare euismod platea habitant. Consectetur metus integ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-02-09', 0, '21:50', 4, 7, 81),
(1142, 'Light in the Mage', 'Ipsum sit maecenas tortor molestie sollicitudin platea sagittis libero conubia donec. Consectetur at senectus nisl cras, vitae mauris tellus massa urn', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-01-25', 0, '29:45', 4, 8, 81),
(1143, 'Birch of Trainer', 'Egestas vivamus nostra iaculis, nulla velit ultrices orci ultricies sagittis class conubia donec neque suscipit. Consectetur erat viverra nunc cursus ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-01-22', 0, '20:48', 4, 9, 81),
(1144, 'Burning Something', 'Nibh tincidunt eleifend vel. Praesent feugiat felis pellentesque class fermentum rhoncus vehicula eros. Praesent sed pulvinar accumsan duis vehicula e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2000-12-30', 0, '49:20', 1, 1, 82),
(1145, 'The Dwindling Voyage', 'Dolor amet in lacus id volutpat metus nibh venenatis orci habitasse vel pellentesque himenaeos potenti. Dolor amet nulla sapien auctor massa faucibus ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-01-29', 0, '25:22', 1, 2, 82),
(1146, 'Flames of Dreams', 'Auctor aliquam nullam urna ad inceptos fermentum enim potenti senectus. Suspendisse fusce turpis. Etiam nibh et cubilia augue porta. Praesent at id fi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-05-11', 0, '28:32', 1, 3, 82),
(1147, 'Some Sliver', 'Mattis urna aliquet, a nec scelerisque augue urna commodo nostra laoreet fames. Id volutpat feugiat ligula nunc venenatis aliquam orci ornare habitass', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-09-20', 0, '41:43', 1, 4, 82),
(1148, 'Grey Sparks', 'Justo sodales accumsan fames. Lorem mi tincidunt tempus porta dignissim tristique, amet praesent venenatis ultrices euismod vulputate consequat socios', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-01-07', 0, '39:13', 1, 5, 82),
(1149, 'The Dwindling Voyage', 'Lorem at integer mollis proin maximus aptent inceptos himenaeos suscipit habitant senectus fames. Id leo facilisis mollis ex posuere sollicitudin cons', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-11-14', 0, '41:52', 1, 6, 82),
(1150, 'Burning Something', 'Finibus a nec hendrerit aptent inceptos curabitur potenti imperdiet fames. Nibh hendrerit dapibus vulputate platea litora fermentum elementum suscipit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-05-04', 0, '46:15', 1, 7, 82),
(1151, 'Shard of Dragon', 'Non id viverra ac tempor faucibus commodo torquent per nostra duis bibendum imperdiet netus. Ipsum consectetur praesent malesuada lobortis ligula moll', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-06-26', 0, '48:50', 1, 8, 82),
(1152, 'Grey Sparks', 'Nibh ut phasellus varius primis curabitur risus. Lorem placerat mauris feugiat venenatis massa vulputate dictumst eu per neque suscipit senectus, dict', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-05-14', 0, '30:53', 1, 9, 82),
(1153, 'The Licking Flowers', 'Etiam lobortis mauris eleifend purus pretium arcu eu conubia curabitur odio rhoncus risus. Velit finibus orci et sollicitudin maximus diam sem morbi, ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-01-28', 0, '42:40', 1, 10, 82),
(1154, 'Flames of Dreams', 'Nisi porttitor dictumst eu neque habitant, egestas lobortis leo feugiat scelerisque tellus aliquam vulputate inceptos himenaeos potenti aenean. Nulla ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-12-21', 0, '35:59', 1, 11, 82),
(1155, 'The Tale\'s Door', 'Consectetur eu dui. Velit mattis lobortis ac tellus felis fringilla hendrerit pharetra condimentum habitasse gravida torquent neque duis. Ipsum erat m', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-07-13', 0, '27:20', 2, 1, 82),
(1156, 'The Tale\'s Door', 'Nulla lacus auctor convallis felis sagittis eu efficitur inceptos bibendum elementum tristique, nibh proin habitasse enim. Amet praesent ante proin du', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-10-08', 0, '20:52', 2, 2, 82),
(1157, 'Obsession in the Spark', 'Ipsum consectetur erat viverra lobortis luctus lacinia massa posuere litora himenaeos vehicula aliquet tristique. Tempus sociosqu vehicula ullamcorper', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-02-11', 0, '29:52', 2, 3, 82),
(1158, 'The Licking Flowers', 'At id leo nec cursus augue tempus hac sagittis lectus maximus aptent curabitur neque habitant. Praesent egestas malesuada ligula ac pharetra congue ne', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-02-03', 0, '22:57', 2, 4, 82),
(1159, 'Shard of Dragon', 'Adipiscing interdum non sed luctus quisque semper est cursus ultricies urna maximus conubia odio, erat ornare magna odio, praesent ad litora. Lorem ph', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-02-07', 0, '26:48', 2, 5, 82),
(1160, 'The Women of the Roses', 'Orci hac conubia dignissim. Elit finibus mattis metus integer nunc semper est phasellus aliquam molestie faucibus platea vel. Dolor praesent est purus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-05-10', 0, '28:24', 2, 6, 82),
(1161, 'Voyager in the Lord', 'Adipiscing posuere ornare taciti, luctus urna class litora tristique senectus nisl, justo eleifend nunc gravida maximus torquent vehicula habitant tri', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-10-30', 0, '33:22', 2, 7, 82),
(1162, 'The Dwindling Voyage', 'Consectetur id scelerisque ante ornare arcu consequat vel nostra himenaeos. Dolor amet in id ligula ut et porttitor aptent inceptos donec eros nam cra', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-06-08', 0, '30:53', 2, 8, 82),
(1163, 'Voyager in the Lord', 'Adipiscing non sed mattis lobortis eleifend est eu commodo sociosqu accumsan congue morbi aenean, mauris porta accumsan iaculis. Feugiat phasellus pre', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-04-13', 0, '34:12', 2, 9, 82),
(1164, 'The Danger\'s Flight', 'Consectetur mi taciti litora, adipiscing sed nullam eget nostra odio. Mi in lacus velit vitae lacinia scelerisque faucibus ultricies pharetra libero n', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-08-31', 0, '36:29', 2, 10, 82),
(1165, 'Shard of Dragon', 'Placerat nibh venenatis phasellus molestie purus cubilia arcu platea maximus accumsan imperdiet senectus. Etiam eleifend est primis gravida himenaeos.', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-11-06', 0, '41:10', 2, 11, 82),
(1166, 'Flames of Dreams', 'Velit tincidunt eleifend tortor tellus hendrerit hac per donec diam. Maecenas a hendrerit vulputate hac ad fermentum accumsan suscipit risus. Consecte', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-03-15', 0, '44:23', 3, 1, 82),
(1167, 'Silver Twilight', 'Justo ligula ultrices convallis fringilla euismod eget hac gravida neque nisl, interdum mi eleifend aliquam fringilla varius et proin dictumst duis. M', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-09-15', 0, '42:42', 3, 2, 82),
(1168, 'Flames of Dreams', 'Amet velit est molestie primis sollicitudin pellentesque sociosqu litora torquent per inceptos laoreet iaculis aenean. Amet feugiat nec nisi orci habi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-10-09', 0, '43:34', 3, 3, 82),
(1169, 'Birch of Trainer', 'Malesuada etiam nisi orci condimentum maximus ad nam tristique. Dictum erat tincidunt tempor vulputate urna lectus vivamus fermentum magna, in erat a ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-08-30', 0, '50:26', 3, 4, 82),
(1170, 'Burning Something', 'Ligula faucibus varius condimentum tempus vel efficitur vehicula dignissim, phasellus torquent suscipit. Ipsum etiam maecenas mauris pulvinar tempor p', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-03-05', 0, '27:33', 3, 5, 82),
(1171, 'Light in the Mage', 'Non etiam ultricies inceptos sem, elit dictum leo ultrices phasellus ex posuere vulputate quam hac efficitur torquent duis vehicula iaculis, nulla sed', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-10-03', 0, '29:45', 3, 6, 82),
(1172, 'Light in the Mage', 'Sapien at id volutpat suspendisse tortor hendrerit condimentum taciti magna enim eros. Fringilla efficitur suscipit. Volutpat ligula ultricies pharetr', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-02-09', 0, '45:53', 3, 7, 82),
(1173, 'The Licking Flowers', 'Erat volutpat ante hac dui taciti. Volutpat ultrices posuere dignissim. Consectetur luctus tempor aliquam ex massa pretium vulputate porttitor habitas', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-09-09', 0, '28:21', 3, 8, 82),
(1174, 'Obsession in the Spark', 'Mi at nibh mollis ex fringilla et quam consequat efficitur aptent nostra duis, lorem pulvinar tortor ornare gravida suscipit nisl. Pellentesque sodale', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-12-18', 0, '21:45', 3, 9, 82),
(1175, 'The Force of the Silence', 'Lorem adipiscing sapien viverra mollis euismod vehicula, sit maecenas ligula nunc arcu sociosqu habitant fames iaculis. Sit maecenas lobortis tincidun', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-07-01', 0, '24:37', 3, 10, 82),
(1176, 'Shard of Dragon', 'Lorem sit adipiscing interdum nulla vestibulum ac fringilla nostra blandit dignissim. Non egestas at etiam finibus quis fringilla porttitor habitasse ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-10-15', 0, '41:59', 3, 11, 82),
(1177, 'Birch of Trainer', 'Lacus augue libero. Nunc pulvinar tortor nullam consequat dui lectus bibendum. Praesent facilisis inceptos accumsan congue cras, consectetur adipiscin', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-05-31', 0, '42:13', 4, 1, 82),
(1178, 'The Women of the Roses', 'Ipsum elit malesuada primis pharetra platea dictumst vel pellentesque ad conubia inceptos potenti sodales eros. Vestibulum ac venenatis convallis ex c', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-04-20', 0, '42:32', 4, 2, 82),
(1179, 'Name of Elves', 'Consectetur viverra mollis est venenatis ex massa vulputate urna dui turpis congue risus cras. Non metus luctus eleifend mollis ullamcorper. Sapien li', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-01-03', 0, '38:40', 4, 3, 82),
(1180, 'The Dreamer\'s Flame', 'In lacus maecenas a facilisis scelerisque orci pharetra sagittis efficitur magna suscipit dignissim senectus. Interdum etiam leo feugiat hendrerit com', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-03-31', 0, '28:26', 4, 4, 82),
(1181, 'Birch of Trainer', 'Dolor elit egestas placerat maecenas tincidunt fusce orci lectus vivamus ad per nostra congue aenean, erat viverra ac euismod eu maximus ad diam digni', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-09-18', 0, '30:46', 4, 5, 82),
(1182, 'Birch of Trainer', 'Ipsum at vestibulum tincidunt felis varius gravida per tristique. Lorem mattis est tempor phasellus convallis eget himenaeos imperdiet aenean, mattis ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-12-19', 0, '44:17', 4, 6, 82),
(1183, 'Grey Sparks', 'Ipsum dictum egestas ut quis ultrices per congue suscipit eros nam. Eleifend primis maximus torquent magna aliquet morbi. Lorem mi sapien venenatis fr', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-08-20', 0, '30:34', 4, 7, 82),
(1184, 'Shard of Dragon', 'Sed mauris nunc eget hac odio potenti sodales risus fames, sed leo ac suspendisse tempor sollicitudin vulputate taciti per enim morbi netus fames. Sap', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-01-10', 0, '21:42', 4, 8, 82),
(1185, 'The Shadowy Death', 'Non mauris nullam odio potenti bibendum elementum. Egestas sed placerat malesuada luctus ultricies eget. Placerat erat vitae mauris nibh pulvinar auct', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-04-14', 0, '32:34', 4, 9, 82),
(1186, 'Sliver in the Weeping', 'Sit felis tristique, sed velit tincidunt facilisis faucibus dapibus sociosqu torquent duis vehicula. Sit praesent interdum metus tincidunt scelerisque', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-09-17', 0, '40:14', 4, 10, 82),
(1187, 'The Licking Flowers', 'Interdum id finibus feugiat nunc phasellus habitasse commodo pellentesque class donec sodales. Dictum varius consequat dictumst congue tristique. Non ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-11-27', 0, '39:53', 4, 11, 82),
(1188, 'Grey Sparks', 'Sit egestas placerat metus pulvinar quisque tellus aliquam molestie faucibus sollicitudin tempus dictumst ullamcorper habitant, elit in luctus nec sce', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-05-13', 0, '31:18', 5, 1, 82),
(1189, 'Birch of Trainer', 'Tincidunt molestie potenti laoreet. Erat lacinia quis condimentum nostra enim aliquet. Praesent erat felis faucibus hendrerit vel. Elit dictum at maur', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-07-30', 0, '46:59', 5, 2, 82),
(1190, 'The Dreamer\'s Flame', 'Nulla erat venenatis orci proin hendrerit pharetra consequat hac habitasse eu vivamus torquent per accumsan. In metus ligula quisque quis condimentum ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-04-30', 0, '48:17', 5, 3, 82),
(1191, 'The Tale\'s Door', 'Dictum nunc quisque fusce efficitur netus fames, id habitasse platea sagittis class ad. Dictum id lobortis tincidunt ac nec et pretium commodo litora ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-06-26', 0, '35:42', 5, 4, 82),
(1192, 'The Female of the Twins', 'Integer nec aliquam netus. Amet elit mollis est dui fermentum turpis rhoncus morbi nisl, finibus vestibulum pulvinar urna gravida class per magna accu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-10-27', 0, '49:40', 5, 5, 82),
(1193, 'Burning Something', 'Est nisi varius et sodales aenean. Dolor egestas nulla malesuada eleifend auctor tellus porttitor dictumst aenean. At vestibulum suspendisse est moles', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-05-25', 0, '21:42', 5, 6, 82),
(1194, 'Obsession in the Spark', 'At facilisis venenatis fusce pharetra urna enim sodales. Leo nisi faucibus varius ante hendrerit habitasse gravida pellentesque aptent magna sodales i', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-09-03', 0, '46:41', 5, 7, 82),
(1195, 'Silver Twilight', 'Lobortis suspendisse eleifend nec ut tempor quis tellus eu conubia neque ullamcorper aliquet habitant senectus, erat eleifend proin vulputate dignissi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-11-14', 0, '25:25', 5, 8, 82),
(1196, 'Seventh Fire', 'Amet a auctor posuere suscipit. Ac ultrices curabitur. Praesent nulla in lobortis integer pulvinar ante orci urna platea inceptos sem tristique nisl. ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-05-10', 0, '26:36', 5, 9, 82);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1197, 'Shard of Dragon', 'Etiam integer ligula pulvinar posuere dapibus habitasse sociosqu ad cras. Sit in nibh pulvinar ultrices molestie consequat gravida maximus pellentesqu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-09-12', 0, '41:36', 5, 10, 82),
(1198, 'The Danger\'s Flight', 'Id maecenas phasellus porttitor tempus hac lectus maximus pellentesque. Nulla ligula mollis tempor aliquam convallis ex felis potenti imperdiet sem ha', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-06-24', 0, '37:26', 5, 11, 82),
(1199, 'The Tale\'s Door', 'Adipiscing curae euismod lectus nostra turpis potenti, non vestibulum tempor primis augue donec laoreet. Amet nulla pulvinar aliquam faucibus hendreri', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-01-12', 0, '39:16', 6, 1, 82),
(1200, 'Sliver in the Weeping', 'Metus luctus nullam taciti neque. Sit urna habitasse sodales congue suscipit. Lacinia ac auctor purus fringilla dapibus condimentum lectus aptent odio', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-02-07', 0, '39:59', 6, 2, 82),
(1201, 'The Dwindling Voyage', 'Justo leo nunc tellus cursus euismod condimentum eu commodo libero maximus aptent turpis odio eros. Justo fringilla faucibus posuere pretium commodo e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-09-05', 0, '31:30', 6, 3, 82),
(1202, 'Name of Elves', 'Sit at tincidunt suspendisse nunc fusce et urna libero litora duis laoreet elementum, in a massa. Dictum sed semper purus felis conubia blandit, adipi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-04-19', 0, '24:22', 6, 4, 82),
(1203, 'Grey Sparks', 'Non volutpat magna. Placerat porttitor conubia inceptos. Adipiscing dictum lacus at suspendisse nunc fusce nostra eros ullamcorper. Ut aliquam ultrici', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-06-02', 0, '31:50', 6, 5, 82),
(1204, 'Some Sliver', 'Sapien maecenas vitae vestibulum ut convallis primis pharetra nullam vulputate tempus gravida vivamus sodales aenean, in at feugiat tincidunt felis et', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-07-21', 0, '46:48', 6, 6, 82),
(1205, 'Silver Twilight', 'Lorem ipsum elit justo fringilla et eget eu libero aptent sociosqu inceptos curabitur suscipit, sed viverra lobortis facilisis nec quisque molestie fu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-09-17', 0, '42:24', 6, 7, 82),
(1206, 'Light in the Mage', 'Praesent vestibulum tortor pretium efficitur conubia turpis risus. Dictum id a ultricies per donec diam aenean. In vulputate aptent enim, adipiscing u', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-08-07', 0, '49:46', 6, 8, 82),
(1207, 'Name of Elves', 'Vestibulum tincidunt a mollis purus primis cubilia ultricies potenti duis bibendum laoreet diam, ligula tempor pharetra sollicitudin tempus sagittis d', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-01-06', 0, '27:41', 6, 9, 82),
(1208, 'The Danger\'s Flight', 'Adipiscing platea class. Sit adipiscing ac suspendisse primis blandit suscipit, lorem sapien massa fringilla eget libero vel nam aliquet. Sapien mauri', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-12-27', 0, '37:55', 6, 10, 82),
(1209, 'Flames of Dreams', 'Ipsum pulvinar est felis libero neque diam, tincidunt convallis conubia sem. Dolor sit feugiat ac auctor tortor mollis massa felis pretium platea comm', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2002-11-03', 0, '34:13', 6, 11, 82),
(1210, 'Some Sliver', 'Amet sapien leo ac ut mollis fusce fringilla faucibus varius porttitor ad conubia imperdiet. Sit cursus primis nullam himenaeos imperdiet, ac consequa', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-12-16', 0, '20:23', 7, 1, 82),
(1211, 'Sliver in the Weeping', 'Id maecenas justo vitae ac suspendisse nunc scelerisque massa proin euismod vulputate odio, ipsum sed sapien eleifend fringilla nostra odio duis. Dolo', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-06-23', 0, '22:44', 7, 2, 82),
(1212, 'Grey Sparks', 'Velit feugiat eleifend pulvinar fusce posuere vulputate hac maximus risus netus, ipsum finibus maecenas mattis vestibulum mauris nibh phasellus ex lit', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-03-09', 0, '41:16', 7, 3, 82),
(1213, 'The Danger\'s Flight', 'Interdum mi dapibus pellentesque curabitur. Sed vitae tincidunt convallis massa hendrerit dapibus sollicitudin pretium potenti elementum diam tristiqu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-06-09', 0, '31:33', 7, 4, 82),
(1214, 'Silver Twilight', 'At vitae lobortis integer ac pulvinar phasellus dapibus himenaeos habitant senectus nisl cras, nulla erat vitae lacinia eleifend nunc auctor dapibus p', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-04-26', 0, '26:25', 7, 5, 82),
(1215, 'Burning Something', 'Adipiscing elit egestas pulvinar ornare arcu hac per turpis blandit elementum imperdiet dignissim aenean. Amet in sapien viverra volutpat leo ex fring', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-08-20', 0, '32:47', 7, 6, 82),
(1216, 'Burning Something', 'Dictum nulla at vitae phasellus posuere cubilia pellentesque elementum fames cras. Dolor amet mi egestas leo faucibus proin tempus taciti ad per incep', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-05-18', 0, '45:10', 7, 7, 82),
(1217, 'Light in the Mage', 'Velit leo scelerisque felis efficitur turpis duis, leo tempus torquent enim sodales nisl. Id luctus a nunc auctor augue consequat platea eu dui odio d', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-02-19', 0, '32:31', 7, 8, 82),
(1218, 'Light in the Mage', 'Non sed vestibulum mollis nisi augue euismod eget arcu nostra bibendum vehicula. Sed sapien id mauris cursus ultricies sollicitudin turpis diam. Dui l', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-11-23', 0, '25:27', 7, 9, 82),
(1219, 'The Shadowy Death', 'Sit tortor nullam efficitur aptent himenaeos porta rhoncus duis senectus. Etiam commodo dignissim. Velit ut fringilla posuere euismod neque duis diam ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-09-02', 0, '39:30', 7, 10, 82),
(1220, 'Light in the Mage', 'Interdum nibh phasellus convallis imperdiet, velit ornare senectus. Lorem dictum viverra integer tortor nisi ex primis augue dapibus commodo curabitur', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-11-26', 0, '36:53', 7, 11, 82),
(1221, 'Sliver in the Weeping', 'Consectetur interdum placerat facilisis lacinia mollis nisi felis primis dapibus sollicitudin habitasse sagittis sociosqu nostra. Lacus sapien velit v', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-10-03', 0, '34:17', 1, 1, 83),
(1222, 'Flames of Dreams', 'Dictum in malesuada mattis est scelerisque pellentesque diam morbi netus. Viverra ultricies vulputate libero vel curabitur. Velit quisque ultrices max', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-08-19', 0, '27:46', 1, 2, 83),
(1223, 'Sliver in the Weeping', 'Id metus lobortis a orci eget dictumst fermentum porta curabitur bibendum vehicula, dictum sapien velit cursus orci quam sagittis efficitur torquent n', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-08-16', 0, '35:30', 1, 3, 83),
(1224, 'Flames of Dreams', 'Nulla id viverra risus senectus. Praesent non tortor porttitor vel rhoncus. Adipiscing praesent sed lacinia urna curabitur laoreet, elit praesent eges', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-03-26', 0, '27:25', 1, 4, 83),
(1225, 'Grey Sparks', 'Nibh molestie cursus eget maximus nam. Aliquam molestie sem. Lorem consectetur a nullam habitasse accumsan nam. Velit justo est massa posuere proin co', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-04-26', 0, '40:59', 1, 5, 83),
(1226, 'Shard of Dragon', 'Amet placerat viverra vestibulum nisi faucibus ante hac pellentesque magna sodales suscipit. Velit ac eleifend tempor convallis massa hac eu libero so', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-04-14', 0, '42:18', 1, 6, 83),
(1227, 'Seventh Fire', 'Gravida curabitur eros. Lacinia ultrices phasellus arcu quam libero, egestas scelerisque quis arcu accumsan. Dapibus ad ullamcorper, erat nibh ac cons', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-04-11', 0, '33:11', 1, 7, 83),
(1228, 'Burning Something', 'A pulvinar per, tempus vel enim. Lorem consectetur erat nibh suspendisse ut scelerisque proin sollicitudin commodo class sociosqu vehicula aliquet. Nu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-10-31', 0, '36:54', 1, 8, 83),
(1229, 'Silver Twilight', 'Mi nulla sed volutpat ac nec ultrices fusce faucibus eget urna arcu quam habitasse taciti. Sit eleifend nunc nec tortor ultrices ad torquent fermentum', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-04-08', 0, '46:57', 1, 9, 83),
(1230, 'Birch of Trainer', 'Interdum egestas in luctus ante eget donec senectus netus. Lorem sed viverra nibh tellus posuere pharetra libero efficitur conubia neque eros aliquet ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-07-16', 0, '30:58', 1, 10, 83),
(1231, 'Burning Something', 'Id velit volutpat vestibulum nullam hac nisl. Lorem adipiscing egestas maecenas nibh eleifend semper ultrices cursus dictumst ad torquent inceptos bla', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-07-28', 0, '20:12', 2, 1, 83),
(1232, 'The Female of the Twins', 'Semper fusce nostra bibendum sem. Id viverra ac nisi aliquam et posuere proin per suscipit vehicula, lacus eget vel netus. Adipiscing sapien lobortis ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-02-13', 0, '49:29', 2, 2, 83),
(1233, 'Grey Sparks', 'Lorem at lobortis nec ultricies hendrerit condimentum efficitur fermentum enim eros dignissim tristique senectus. Leo lacinia nullam vulputate, nulla ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-09-21', 0, '45:31', 2, 3, 83),
(1234, 'Seventh Fire', 'Sapien mauris a felis maximus per inceptos enim curabitur eros fames. Amet non est consequat, metus leo nisi phasellus euismod eget pretium condimentu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-12-28', 0, '38:47', 2, 4, 83),
(1235, 'Silver Twilight', 'Viverra massa porttitor habitasse dictumst sagittis class blandit aenean. Interdum at luctus leo integer ut sagittis donec imperdiet iaculis. Ante con', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-04-12', 0, '42:39', 2, 5, 83),
(1236, 'The Female of the Twins', 'Lorem in velit volutpat vitae lobortis tempus sociosqu odio, egestas lacus finibus a facilisis pulvinar convallis eu nostra nisl. Mi leo feugiat eleif', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-08-13', 0, '30:50', 2, 6, 83),
(1237, 'Seventh Fire', 'Ligula donec vehicula. Quisque massa fringilla proin lectus. Volutpat cursus porta enim odio laoreet. Lacus id facilisis felis hendrerit senectus.', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-08-02', 0, '41:42', 2, 7, 83),
(1238, 'Burning Something', 'Nulla faucibus orci dui neque, nulla malesuada viverra feugiat eleifend semper tellus per elementum aenean, amet consectetur nulla eleifend nisi variu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-06-12', 0, '32:46', 2, 8, 83),
(1239, 'Sliver in the Weeping', 'Consectetur elit justo metus suspendisse phasellus consequat sagittis efficitur, a ac convallis cursus quam hac gravida odio laoreet tristique. Dictum', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-06-29', 0, '22:39', 2, 9, 83),
(1240, 'Flames of Dreams', 'Amet placerat malesuada ut aliquam cursus habitasse maximus efficitur turpis. Habitasse commodo sociosqu enim. Praesent mi facilisis nec quisque aucto', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-09-16', 0, '37:53', 2, 10, 83),
(1241, 'The Shadowy Death', 'At finibus a tellus ornare quam sagittis rhoncus sem. Amet placerat lobortis quisque mollis venenatis et rhoncus neque dignissim. Mauris ligula eleife', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-11-13', 0, '44:29', 3, 1, 83),
(1242, 'The Force of the Silence', 'Adipiscing maecenas nibh lacinia ligula tortor scelerisque cubilia nullam arcu tempus per nam ullamcorper cras, eleifend primis conubia. Dolor sit sap', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-10-16', 0, '21:16', 3, 2, 83),
(1243, 'Obsession in the Spark', 'Malesuada finibus nibh scelerisque tellus aliquam posuere fermentum magna laoreet diam ullamcorper tristique fames, praesent dictum nulla in id justo ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-10-14', 0, '34:25', 3, 3, 83),
(1244, 'Voyager in the Lord', 'Purus habitasse commodo, est habitasse odio nisl. Feugiat tincidunt nec mollis venenatis ultrices primis porttitor condimentum dictumst odio sem risus', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-07-22', 0, '34:38', 3, 4, 83),
(1245, 'Voyager in the Lord', 'Feugiat purus fusce pharetra libero turpis sem. Interdum mattis mauris nec quisque tempor aliquam cursus quam torquent. Vitae fringilla ornare litora ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-12-17', 0, '41:58', 3, 5, 83),
(1246, 'The Women of the Roses', 'Dolor nulla sed nibh integer lacinia ultrices orci eget dictumst ad donec senectus, convallis nullam turpis. Mauris leo ultricies ornare pharetra urna', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2019-03-02', 0, '29:49', 3, 6, 83),
(1247, 'The Tale\'s Door', 'Amet praesent egestas velit tincidunt semper tellus nisi ornare ad curabitur vehicula nisl. Nulla erat etiam luctus lacinia ac est dapibus enim elemen', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-07-17', 0, '30:35', 3, 7, 83),
(1248, 'The Shadowy Death', 'Ipsum consectetur at etiam feugiat primis hendrerit ornare fermentum risus, augue turpis fames. Nulla integer dui efficitur enim. Sit mi id est venena', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-04-02', 0, '24:12', 3, 8, 83),
(1249, 'Silver Twilight', 'Elit lacus etiam luctus auctor tortor fusce felis sollicitudin eget conubia curabitur bibendum habitant. Ipsum adipiscing egestas a mollis quis nisi v', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-06-13', 0, '44:25', 3, 9, 83),
(1250, 'The Danger\'s Flight', 'Adipiscing sed sapien mattis luctus nisi primis ornare dui efficitur conubia turpis sodales morbi senectus, consectetur mauris varius dapibus aptent, ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-10-02', 0, '46:39', 3, 10, 83),
(1251, 'The Dreamer\'s Flame', 'Ipsum id maecenas lobortis tincidunt lacinia pulvinar felis varius ultricies arcu vivamus pellentesque conubia morbi. Ex porttitor neque morbi cras, n', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-12-03', 0, '50:38', 4, 1, 83),
(1252, 'The Female of the Twins', 'Dictum sapien varius cubilia curae hendrerit vulputate vivamus conubia senectus, erat mattis leo nibh varius condimentum sodales accumsan congue ullam', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-09-03', 0, '41:12', 4, 2, 83),
(1253, 'Seventh Fire', 'Sit interdum id porttitor commodo fermentum donec neque sem. Convallis consequat ad nostra morbi. Amet id justo ac ultrices ultricies pharetra pretium', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-09-17', 0, '23:26', 4, 3, 83),
(1254, 'The Dwindling Voyage', 'Vitae eleifend tempor venenatis cursus fringilla orci pharetra sollicitudin porttitor libero vel porta diam nisl. Habitasse vel enim. Non at vestibulu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-09-24', 0, '35:59', 4, 4, 83),
(1255, 'Burning Something', 'Adipiscing nibh tellus cursus platea litora morbi. Non at a nunc fusce ultricies habitasse vel curabitur sodales. Consectetur adipiscing praesent in p', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-12-07', 0, '25:52', 4, 5, 83),
(1256, 'Name of Elves', 'Non maecenas integer auctor quis convallis cursus fusce arcu dictumst vel ad fermentum aenean. Sapien velit volutpat integer nisi ex dui magna habitan', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-06-08', 0, '34:21', 4, 6, 83),
(1257, 'The Dwindling Voyage', 'Orci lectus fames, tincidunt cursus primis et ornare eget dignissim fames nisl. Ipsum praesent mauris lacinia ac eleifend nisi urna arcu dictumst per ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-08-16', 0, '40:36', 4, 7, 83),
(1258, 'Name of Elves', 'In malesuada maecenas suspendisse tempor primis consequat dui cras. Lorem egestas justo nibh phasellus et dapibus arcu per blandit bibendum. Feugiat e', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-08-01', 0, '44:59', 4, 8, 83),
(1259, 'Light in the Mage', 'Viverra quisque auctor ultrices eget morbi, amet viverra a felis varius curae sagittis libero laoreet, interdum egestas luctus venenatis pellentesque ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-07-15', 0, '48:24', 4, 9, 83),
(1260, 'The Tale\'s Door', 'Arcu consequat eu donec elementum diam. Lorem mi mauris a integer ligula cubilia sagittis pellentesque aptent taciti congue, tortor enim risus. Malesu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-08-22', 0, '22:49', 4, 10, 83),
(1261, 'The Dwindling Voyage', 'Malesuada lobortis pulvinar varius proin augue nullam taciti conubia, dolor ante augue turpis magna elementum aenean. Egestas sed nunc nec pellentesqu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-12-13', 1, '33:33', 1, 1, 84),
(1262, 'Voyager in the Lord', 'Elit at justo mauris nunc tellus ultricies ornare inceptos potenti. Mi nunc quisque turpis curabitur, tortor scelerisque sociosqu congue. Id tincidunt', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-02-07', 0, '50:54', 1, 2, 84),
(1263, 'Sliver in the Weeping', 'Nibh molestie class himenaeos. Lorem etiam faucibus nullam enim cras. Maecenas volutpat metus auctor ultrices primis consequat platea vel dignissim, j', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-03-19', 0, '37:40', 1, 3, 84),
(1264, 'The Women of the Roses', 'Metus faucibus arcu platea dictumst enim nam morbi. Mi suspendisse ultrices ornare sodales accumsan sem senectus, justo vestibulum nibh cubilia augue ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-02-07', 0, '40:51', 1, 4, 84),
(1265, 'Seventh Fire', 'Lacus malesuada at tincidunt lacinia purus ex condimentum enim. Habitasse nostra blandit accumsan. Lorem non nulla massa primis hendrerit urna rhoncus', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-08-05', 0, '25:13', 1, 5, 84),
(1266, 'Name of Elves', 'Dictum mi malesuada luctus nibh eleifend molestie suscipit sem aliquet. Nulla id purus curae eget litora morbi iaculis cras. Nulla viverra facilisis o', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-12-21', 0, '21:14', 1, 6, 84),
(1267, 'Voyager in the Lord', 'Volutpat ut purus felis ornare consequat eu lectus turpis duis nam fames. Nulla sed erat pulvinar ex hac taciti porta enim congue duis tristique senec', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-04-04', 0, '22:21', 1, 1, 85),
(1268, 'The Women of the Roses', 'Dolor lacinia auctor pretium, velit lobortis leo ornare pretium, dolor praesent nulla viverra convallis tempus hac sociosqu aliquet iaculis, consectet', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-08-10', 0, '40:14', 1, 2, 85),
(1269, 'Voyager in the Lord', 'Justo leo feugiat ultrices augue condimentum class potenti elementum iaculis, sapien placerat lobortis ligula massa et ultricies euismod condimentum d', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-08-10', 0, '43:13', 1, 3, 85),
(1270, 'Flames of Dreams', 'Nulla nibh purus ornare. Justo ut auctor scelerisque hendrerit arcu tempus duis. Non cursus vulputate ullamcorper. Consectetur nunc nec pulvinar variu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-02-09', 0, '43:11', 1, 4, 85),
(1271, 'The Tale\'s Door', 'Finibus viverra lacinia nunc ut urna arcu tempus risus. Ipsum sit semper scelerisque ultrices aliquam purus ante ultricies augue habitasse sociosqu pe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-09-29', 0, '26:40', 1, 5, 85),
(1272, 'The Female of the Twins', 'Praesent sed maecenas mattis volutpat feugiat facilisis est et gravida maximus turpis laoreet nam, dictum auctor ex ornare nullam ullamcorper, leo feu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-11-15', 0, '43:33', 1, 6, 85),
(1273, 'Burning Something', 'Mattis tellus platea nostra fermentum odio rhoncus risus morbi. Lacus sed malesuada ligula mollis aliquam hac vivamus vel risus aliquet. Dictum mi mal', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-10-14', 0, '34:12', 1, 7, 85),
(1274, 'The Dreamer\'s Flame', 'Sit est massa euismod. Amet consectetur velit posuere sollicitudin suscipit netus. Amet adipiscing sapien velit lobortis facilisis tortor scelerisque ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-03-27', 0, '27:54', 1, 8, 85),
(1275, 'The Dwindling Voyage', 'In erat integer ex cubilia habitasse dictumst dignissim. Vestibulum est magna. Dolor in leo tempor pharetra himenaeos. Nulla metus eleifend gravida se', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-06-09', 0, '47:54', 1, 9, 85),
(1276, 'Silver Twilight', 'Justo pulvinar fringilla faucibus dictumst taciti odio sem. Lorem velit volutpat vestibulum facilisis quisque fringilla et arcu quam consequat eu dui ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-04-12', 0, '39:24', 2, 1, 85),
(1277, 'The Danger\'s Flight', 'Mi leo ut eget sociosqu duis ullamcorper fames. Etiam ante donec. In tincidunt venenatis vulputate arcu blandit imperdiet aliquet. Amet egestas velit ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-12-18', 0, '45:17', 2, 2, 85),
(1278, 'The Licking Flowers', 'Placerat aliquam ante posuere taciti. Lacinia mollis scelerisque rhoncus vehicula eros, feugiat quisque ut fusce sollicitudin fermentum donec curabitu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-12-02', 0, '45:19', 2, 3, 85),
(1279, 'Grey Sparks', 'Praesent vitae phasellus faucibus fermentum. Nulla tempor molestie nullam vulputate commodo suscipit. Erat viverra luctus venenatis orci ultricies sol', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-10-03', 0, '43:15', 2, 4, 85),
(1280, 'Voyager in the Lord', 'Placerat ex arcu porttitor platea. Mattis volutpat ultrices molestie convallis tempus per imperdiet fames. Erat viverra luctus a ut primis dictumst ac', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-11-27', 0, '20:11', 2, 5, 85),
(1281, 'The Dreamer\'s Flame', 'Metus eleifend ut purus nullam pretium quam vivamus nostra inceptos nam aenean. Sit dictum erat velit lacinia orci euismod condimentum vivamus per por', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-09-29', 0, '20:11', 2, 6, 85),
(1282, 'The Shadowy Death', 'Egestas pulvinar nullam condimentum dignissim. Sapien id mauris leo vel sociosqu conubia nostra himenaeos. Nunc posuere maximus inceptos himenaeos don', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-04-23', 0, '39:31', 2, 7, 85),
(1283, 'Silver Twilight', 'Adipiscing dictum mattis tincidunt a mollis felis. Dolor finibus volutpat justo leo per rhoncus blandit senectus netus fames iaculis. Dolor fusce ultr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-12-08', 0, '25:38', 2, 8, 85),
(1284, 'The Women of the Roses', 'Suspendisse quisque fusce dapibus nullam sollicitudin per, tincidunt ligula suspendisse semper molestie massa primis habitasse platea vivamus libero t', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-01-17', 0, '50:58', 2, 9, 85),
(1285, 'Birch of Trainer', 'Curae pharetra donec duis netus. Nulla maecenas mollis quis fringilla orci proin vulputate porttitor neque fames, lorem adipiscing in lacus nibh suspe', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-11-10', 0, '32:36', 3, 1, 85),
(1286, 'Grey Sparks', 'Amet fringilla taciti sem aliquet tristique, dolor sed placerat mattis venenatis cursus himenaeos turpis odio risus. Adipiscing sed malesuada at mauri', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-07-12', 0, '46:50', 3, 2, 85),
(1287, 'The Dreamer\'s Flame', 'Sapien placerat maecenas mauris tempor cursus arcu condimentum magna neque morbi iaculis. Praesent quisque nisi cubilia hendrerit eu taciti neque ulla', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-01-20', 0, '42:52', 3, 3, 85),
(1288, 'Obsession in the Spark', 'Mi vestibulum facilisis est tellus cursus vel sociosqu donec neque nam iaculis. Lorem in a lacinia est phasellus ex cubilia habitasse libero nostra fe', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2011-08-07', 0, '29:50', 3, 4, 85),
(1289, 'The Dreamer\'s Flame', 'Non sed placerat luctus tempor purus primis posuere porttitor sagittis gravida himenaeos morbi. Tempor venenatis ornare class enim odio congue. Ut ven', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-03-16', 0, '29:53', 3, 5, 85),
(1290, 'Birch of Trainer', 'Sollicitudin eget habitasse litora. Malesuada nec quisque venenatis faucibus ornare dapibus consequat lectus blandit neque habitant. Eleifend semper t', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-05-26', 0, '25:57', 3, 6, 85),
(1291, 'Sliver in the Weeping', 'Lorem egestas in finibus lobortis felis arcu quam litora porta. Amet nulla metus luctus nibh tincidunt phasellus felis maximus congue, metus feugiat t', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-05-09', 0, '41:42', 3, 7, 85),
(1292, 'Obsession in the Spark', 'Leo eleifend augue euismod urna hac vel pellentesque class dignissim cras. Consectetur interdum sed tincidunt ligula dapibus dui odio rhoncus potenti ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-04-18', 0, '20:27', 3, 8, 85),
(1293, 'Name of Elves', 'Placerat lobortis nibh suspendisse quis tellus fringilla et proin platea taciti litora inceptos accumsan morbi. Ipsum feugiat tellus phasellus arcu po', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-03-20', 0, '38:44', 3, 9, 85),
(1294, 'Obsession in the Spark', 'Egestas viverra tincidunt ac ut semper purus massa proin arcu habitasse commodo dui risus netus. Sit lacus velit lacinia nec tortor mollis nisi felis ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-05-17', 0, '43:44', 4, 1, 85),
(1295, 'The Licking Flowers', 'Malesuada luctus tincidunt lacinia proin litora per sodales suscipit sem aliquet morbi, nec mollis fusce platea class inceptos dignissim aenean. Amet ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-07-25', 0, '26:58', 4, 2, 85),
(1296, 'Flames of Dreams', 'Adipiscing etiam maecenas nec mollis quis dapibus sollicitudin taciti ad enim rhoncus tristique. Molestie et augue nullam hac dictumst magna. Dolor nu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-04-17', 0, '37:49', 4, 3, 85),
(1297, 'Grey Sparks', 'Erat maecenas justo mauris ornare per potenti. Lorem auctor varius curae dictumst torquent rhoncus bibendum. Sapien at id mauris leo ac aliquam conval', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-08-02', 0, '40:38', 4, 4, 85),
(1298, 'The Danger\'s Flight', 'Feugiat purus fusce fringilla faucibus primis sollicitudin urna libero pellentesque rhoncus bibendum morbi senectus, non at viverra volutpat vestibulu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-03-14', 0, '40:30', 4, 5, 85),
(1299, 'The Dreamer\'s Flame', 'Volutpat eget quam. Id vitae suspendisse purus fusce euismod efficitur ad donec curabitur vehicula, tincidunt varius euismod. Quis aliquam fermentum p', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-07-26', 0, '47:45', 4, 6, 85),
(1300, 'The Women of the Roses', 'In malesuada tortor class litora odio accumsan senectus. Lorem praesent velit suspendisse quisque aliquam massa ante sollicitudin eget turpis enim imp', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-05-16', 0, '30:58', 4, 7, 85),
(1301, 'Light in the Mage', 'Consectetur praesent mattis nibh ultricies vel torquent vehicula, nibh nullam pretium. Non lacus commodo odio habitant. Ultricies pharetra dapibus don', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-08-19', 0, '22:32', 4, 8, 85),
(1302, 'The Shadowy Death', 'Amet vestibulum lobortis lacinia nec mollis felis et sollicitudin pellentesque magna, praesent interdum nulla in viverra justo nec ut auctor ex ante t', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-07-12', 0, '31:52', 4, 9, 85),
(1303, 'The Dwindling Voyage', 'Adipiscing in tincidunt auctor orci curabitur. Egestas in lobortis facilisis faucibus curae ornare quam condimentum commodo fermentum magna enim digni', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-08-10', 0, '43:15', 1, 1, 86),
(1304, 'Seventh Fire', 'At etiam justo hendrerit ad tristique. Maecenas justo mollis tempor ex consequat dui conubia accumsan. Sed facilisis ligula scelerisque nisi aliquam e', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-04-09', 0, '34:38', 1, 2, 86),
(1305, 'Light in the Mage', 'Non sed mattis ut ultricies sollicitudin hac enim aenean. Amet at volutpat purus primis curae nullam sollicitudin donec suscipit. Dolor lacinia nunc s', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-11-20', 0, '45:13', 1, 3, 86),
(1306, 'The Tale\'s Door', 'Non nulla quisque fringilla consequat tempus dui inceptos enim rhoncus. Lorem maecenas tincidunt tempus platea torquent risus, dolor nulla in malesuad', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-03-25', 0, '27:55', 1, 4, 86),
(1307, 'The Licking Flowers', 'Interdum lacus erat nunc fringilla orci hendrerit arcu conubia fermentum blandit. Interdum at maecenas eget diam. Sapien id ac primis orci gravida odi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-09-13', 0, '50:36', 1, 1, 87),
(1308, 'Some Sliver', 'Mauris lacinia suspendisse posuere consequat tempus habitasse class elementum risus. Id vestibulum nibh nec auctor cursus fringilla primis orci curae ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-09-28', 0, '37:42', 1, 2, 87),
(1309, 'The Licking Flowers', 'Convallis porttitor quam. Dictum vestibulum facilisis ligula. A lacinia ligula nec cubilia quam efficitur diam. Consectetur velit luctus nibh venenati', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-06-19', 0, '28:32', 1, 3, 87),
(1310, 'Seventh Fire', 'Praesent in placerat nec tempor tellus himenaeos. Placerat at volutpat ut ultrices augue pretium commodo aptent fermentum suscipit diam vehicula nam a', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-05-11', 0, '22:44', 1, 4, 87),
(1311, 'Birch of Trainer', 'Sed euismod consequat eu turpis blandit laoreet tristique, ipsum suspendisse scelerisque aliquam orci, luctus tincidunt nunc pulvinar ultricies sollic', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-09-22', 0, '35:46', 1, 5, 87),
(1312, 'The Female of the Twins', 'Id viverra lacinia eleifend semper quis molestie fusce per enim imperdiet habitant. Interdum pellentesque sodales. Dictum id suspendisse pulvinar conv', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-08-21', 0, '48:52', 1, 6, 87),
(1313, 'The Force of the Silence', 'Egestas erat vestibulum ac tortor quis sollicitudin eu taciti litora eros netus. Praesent mi sapien placerat felis curae sollicitudin eget urna tempus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-08-02', 0, '32:12', 1, 7, 87),
(1314, 'The Tale\'s Door', 'Luctus integer auctor mollis ante primis curae sociosqu nostra congue neque duis elementum habitant morbi, amet scelerisque molestie vivamus taciti so', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-02-08', 0, '43:39', 2, 1, 87),
(1315, 'The Dreamer\'s Flame', 'Praesent mi lacus eleifend auctor cursus primis tempus gravida torquent magna odio, lacus est fusce posuere eget pellentesque. Dictum maecenas leo a p', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-12-26', 0, '46:22', 2, 2, 87),
(1316, 'The Force of the Silence', 'Amet suspendisse sollicitudin tempus aptent congue duis. Dictum mauris sem risus habitant, integer pulvinar est molestie purus ex proin dictumst commo', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-06-10', 0, '26:59', 2, 3, 87),
(1317, 'The Dreamer\'s Flame', 'Tempus class diam netus, dictum est eros habitant fames. Lobortis mauris cursus per conubia magna elementum diam tristique nisl. Adipiscing interdum s', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-10-24', 3, '36:43', 2, 4, 87),
(1318, 'Sliver in the Weeping', 'Mi erat aptent turpis donec ullamcorper. Lorem lacus placerat mattis eleifend purus felis litora himenaeos duis aenean. Maecenas mattis luctus feugiat', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2013-11-19', 0, '22:13', 2, 5, 87),
(1319, 'Name of Elves', 'Non a nullam pretium condimentum maximus aptent torquent magna vehicula risus tristique. Elit in etiam ac suspendisse augue eu elementum aenean. Etiam', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-01-09', 0, '42:24', 2, 6, 87),
(1320, 'The Female of the Twins', 'Vestibulum a tempor scelerisque aliquam hendrerit aptent donec imperdiet morbi, dolor nulla etiam semper et ultricies pretium vulputate condimentum ad', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-07-29', 0, '26:13', 2, 7, 87),
(1321, 'The Dreamer\'s Flame', 'Nulla id vestibulum integer tellus ultricies rhoncus imperdiet netus, lorem at maecenas volutpat lobortis feugiat semper tempor urna sagittis accumsan', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-04-15', 0, '25:30', 3, 1, 87),
(1322, 'Name of Elves', 'Dolor dictum erat viverra auctor mollis venenatis porttitor dictumst congue neque risus morbi iaculis, sapien at velit semper nisi aliquam molestie fe', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-07-07', 0, '45:46', 3, 2, 87),
(1323, 'Voyager in the Lord', 'Nunc faucibus orci augue arcu suscipit, elit in malesuada molestie nullam sagittis vehicula. Sed ac tempor cubilia proin quam consequat hac vivamus cu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-04-10', 0, '25:21', 3, 3, 87),
(1324, 'Silver Twilight', 'Nec quisque venenatis aliquam orci posuere cubilia habitasse dictumst himenaeos donec, adipiscing est venenatis cubilia maximus himenaeos. Quisque ant', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-08-30', 0, '26:36', 3, 4, 87),
(1325, 'The Dwindling Voyage', 'Egestas malesuada vestibulum ligula ex pretium porta, metus tincidunt cursus pellentesque donec accumsan bibendum. Egestas volutpat primis euismod tur', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-07-07', 0, '45:56', 3, 5, 87),
(1326, 'Sliver in the Weeping', 'Sit sed maecenas ac auctor aliquam faucibus curae ultricies inceptos donec accumsan senectus netus. Egestas at vitae feugiat semper cursus pharetra le', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-11-20', 0, '46:34', 3, 6, 87),
(1327, 'Voyager in the Lord', 'Interdum ac dictumst lectus. Consectetur sed felis cubilia himenaeos suscipit eros. Elit in erat ut convallis cursus faucibus turpis odio bibendum dia', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-07-11', 0, '21:41', 3, 7, 87),
(1328, 'The Tale\'s Door', 'Sed tincidunt eu diam. In pellentesque magna fames nisl. Curae dictumst taciti turpis rhoncus. Amet nulla sapien placerat malesuada maecenas leo nunc ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-02-23', 0, '22:46', 4, 1, 87),
(1329, 'The Danger\'s Flight', 'Sapien ligula urna duis. Id lacinia semper enim cras, interdum id pretium nam, auctor mollis molestie orci augue dapibus quam class potenti accumsan f', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-07-23', 0, '50:43', 4, 2, 87),
(1330, 'Some Sliver', 'Elit cursus per sem, consectetur adipiscing leo ultricies conubia inceptos enim. Mi id mattis leo tincidunt eleifend porttitor dui aptent rhoncus susc', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-12-26', 0, '50:31', 4, 3, 87),
(1331, 'The Danger\'s Flight', 'Adipiscing a facilisis lacinia ultricies augue porttitor libero elementum risus, vestibulum fringilla urna commodo eros fames. Lorem ligula tortor pos', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-04-04', 0, '49:56', 4, 4, 87),
(1332, 'The Tale\'s Door', 'Metus augue ad nostra. Sit volutpat vestibulum fusce varius ad odio eros netus. Amet ac semper aliquam ultricies arcu consequat class sociosqu fames, ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-02-04', 0, '29:44', 4, 5, 87),
(1333, 'Grey Sparks', 'Mattis rhoncus accumsan risus fames aenean, etiam metus ac cubilia proin pharetra gravida curabitur rhoncus sodales bibendum habitant, amet praesent l', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-06-26', 0, '22:43', 4, 6, 87),
(1334, 'The Danger\'s Flight', 'Amet tincidunt pulvinar pharetra laoreet morbi fames. Placerat nullam arcu torquent eros cras, elit at mauris tortor tellus fusce et eget arcu hac viv', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-03-03', 0, '41:44', 4, 7, 87),
(1335, 'Grey Sparks', 'Sapien malesuada etiam nunc phasellus felis augue tempus dui per iaculis. Vestibulum felis curae enim vehicula ullamcorper habitant iaculis, metus nun', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-04-20', 0, '39:22', 1, 1, 88),
(1336, 'The Women of the Roses', 'Finibus mauris a ac tortor dapibus taciti habitant senectus, non nulla metus feugiat facilisis quisque semper mollis pretium platea vivamus libero dui', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-07-12', 0, '44:46', 1, 2, 88),
(1337, 'Burning Something', 'Sapien malesuada tincidunt ante curae arcu class litora. Elit nulla vitae suspendisse nunc ultrices proin torquent magna bibendum imperdiet ullamcorpe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-02-02', 0, '25:25', 1, 3, 88),
(1338, 'Light in the Mage', 'Dictum justo lobortis ultrices purus hac dui iaculis. Viverra posuere libero. Sit erat ac eleifend mollis convallis et curae taciti accumsan duis susc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-03-20', 0, '37:35', 1, 4, 88),
(1339, 'The Dreamer\'s Flame', 'Ipsum consectetur mi etiam nibh ac primis curae hendrerit pharetra accumsan sem, erat vitae massa curae urna conubia sodales bibendum. Dolor consectet', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-11-27', 0, '33:34', 1, 5, 88),
(1340, 'Some Sliver', 'Sit metus nibh cursus dictumst blandit risus. Amet interdum dictum nulla sed at mattis lacinia pulvinar tempor quam efficitur donec diam. Lorem nulla ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-08-07', 0, '33:18', 1, 6, 88),
(1341, 'Seventh Fire', 'Sed justo nunc phasellus cursus massa platea dictumst sagittis aptent imperdiet dignissim, ipsum praesent dictum erat volutpat lobortis tempus platea ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-08-04', 0, '42:11', 1, 7, 88),
(1342, 'The Danger\'s Flight', 'Lacinia conubia nostra dignissim netus. Amet adipiscing id viverra leo nec ut auctor pharetra dapibus vulputate. Adipiscing quam gravida blandit. Nunc', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-09-22', 0, '23:11', 1, 8, 88),
(1343, 'The Licking Flowers', 'At mattis quis convallis fusce ornare fames cras. Placerat tincidunt nec purus felis varius augue inceptos odio morbi fames. Maecenas tincidunt conubi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-04-13', 0, '29:56', 1, 9, 88),
(1344, 'Grey Sparks', 'Dictum luctus nunc est massa primis posuere hac class taciti laoreet netus. Dictum etiam consequat cras. Felis varius dapibus arcu lectus class rhoncu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-03-31', 0, '47:39', 1, 10, 88),
(1345, 'The Dwindling Voyage', 'Suspendisse magna odio, erat convallis gravida. Dictum feugiat quisque curae vivamus libero odio vehicula, ipsum feugiat quis tellus felis. Sapien id ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-04-06', 0, '42:32', 1, 11, 88),
(1346, 'Flames of Dreams', 'Praesent nisi arcu efficitur litora congue duis. Amet quis ex fringilla urna arcu habitasse vivamus taciti sociosqu elementum suscipit morbi netus. Di', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-09-27', 0, '49:53', 1, 12, 88),
(1347, 'The Dreamer\'s Flame', 'Praesent lacinia congue, dolor mi mattis vitae aliquam molestie purus massa habitant. In lacus finibus justo feugiat ac est faucibus ornare class conu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-05-02', 0, '33:51', 2, 1, 88),
(1348, 'Flames of Dreams', 'In tincidunt suspendisse quis ex varius vulputate urna litora potenti imperdiet risus netus nisl. At pellentesque habitant. Mi vitae leo tortor est ni', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-04-15', 0, '34:30', 2, 2, 88),
(1349, 'The Licking Flowers', 'Sit nulla in leo facilisis vivamus class per blandit tristique. Mi metus scelerisque nisi fusce proin dictumst commodo himenaeos odio vehicula, elit n', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-06-15', 0, '26:39', 2, 3, 88),
(1350, 'The Tale\'s Door', 'Scelerisque fusce arcu sodales. Consectetur nibh integer ex posuere eget iaculis aenean, lorem ex orci sagittis laoreet. Velit ac quisque semper molli', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-12-20', 0, '42:59', 2, 4, 88),
(1351, 'The Licking Flowers', 'Mi placerat erat lobortis mollis est faucibus tempus eu litora porta. Mi suspendisse tortor tellus sollicitudin dictumst libero maximus inceptos sodal', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-11-30', 0, '46:14', 2, 5, 88),
(1352, 'Sliver in the Weeping', 'Venenatis duis morbi, sapien id scelerisque ultrices molestie massa primis dapibus neque. Sit egestas volutpat eleifend ut et tempus dictumst vel conu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-04-25', 0, '39:30', 2, 6, 88),
(1353, 'The Force of the Silence', 'Metus est aliquam varius maximus conubia himenaeos fermentum sodales diam aliquet tristique netus, amet aliquam himenaeos turpis bibendum. Lorem velit', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-09-23', 0, '36:37', 2, 7, 88),
(1354, 'Voyager in the Lord', 'Nulla malesuada mattis purus varius orci urna eu dui imperdiet netus cras, sed at lobortis convallis euismod aenean. Sapien auctor ultrices vehicula h', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-06-15', 0, '20:45', 2, 8, 88),
(1355, 'The Female of the Twins', 'Interdum at faucibus sagittis dui rhoncus sem. Consectetur at luctus cursus ante sagittis sodales, malesuada nec tempor. Adipiscing mi vitae tortor co', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-01-25', 0, '30:19', 2, 9, 88),
(1356, 'Flames of Dreams', 'Metus eget eros. Consectetur non sed nisi aliquam purus fringilla primis nostra habitant. Ipsum non nibh tortor convallis massa condimentum turpis acc', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-07-28', 0, '20:42', 2, 10, 88),
(1357, 'Name of Elves', 'At cubilia hendrerit condimentum. Lacus viverra justo metus ligula pulvinar ut felis curae condimentum enim curabitur imperdiet netus. Magna enim soda', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-02-04', 0, '41:42', 2, 11, 88),
(1358, 'The Female of the Twins', 'Ipsum dictum malesuada vitae facilisis quisque nisi phasellus ornare arcu turpis eros, ipsum erat volutpat facilisis convallis nullam porttitor condim', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-12-16', 0, '46:53', 2, 12, 88),
(1359, 'Some Sliver', 'Etiam vitae quis ante nullam arcu condimentum libero curabitur suscipit diam. Elit in vitae luctus a nec semper fringilla posuere proin taciti sociosq', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-09-12', 0, '46:50', 3, 1, 88),
(1360, 'Birch of Trainer', 'Interdum mi lacus quisque venenatis cursus habitasse class litora odio. Non egestas nulla nisi condimentum neque laoreet dignissim habitant cras, elit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-11-01', 0, '41:41', 3, 2, 88),
(1361, 'The Female of the Twins', 'Interdum leo hendrerit sollicitudin eget donec blandit bibendum. Malesuada orci hac ad aliquet. Adipiscing elit finibus mauris integer nec ut auctor m', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-04-19', 0, '48:43', 3, 3, 88),
(1362, 'Burning Something', 'Sapien maecenas vestibulum mollis tellus nisi tempus taciti sociosqu nostra bibendum diam tristique, lacus at id maecenas suspendisse purus cursus pos', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-01-16', 0, '45:51', 3, 4, 88),
(1363, 'The Women of the Roses', 'Facilisis venenatis quam tempus torquent accumsan diam. Tellus aliquam fringilla urna gravida lectus duis. Etiam pulvinar bibendum aliquet fames. Nibh', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-05-16', 0, '49:31', 3, 5, 88),
(1364, 'The Danger\'s Flight', 'Sapien malesuada erat mauris eleifend est convallis massa pretium magna duis ullamcorper. Dictum nulla cursus et cubilia tempus himenaeos sodales dign', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-12-09', 0, '41:43', 3, 6, 88),
(1365, 'The Licking Flowers', 'Justo eleifend nunc quisque tempor nullam urna habitasse class torquent himenaeos iaculis. Semper cursus conubia rhoncus accumsan. Lacus id velit ac n', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-01-15', 0, '33:53', 3, 7, 88),
(1366, 'Silver Twilight', 'Adipiscing volutpat proin platea conubia tristique. Interdum luctus facilisis ac phasellus et quam inceptos. Vitae habitasse platea dui vel morbi.', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-11-25', 0, '24:24', 3, 8, 88),
(1367, 'Burning Something', 'Lacus sapien malesuada vitae eleifend ornare dapibus vulputate platea litora blandit cras. Lacus phasellus varius ad conubia. Lacus erat ligula molest', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2019-02-20', 0, '43:25', 3, 9, 88),
(1368, 'The Force of the Silence', 'Nulla ac ultrices nisi aptent curabitur. Quis nullam sollicitudin eu torquent magna vehicula. In malesuada vitae litora aenean, nulla sapien viverra v', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-05-08', 0, '33:48', 3, 10, 88),
(1369, 'The Dreamer\'s Flame', 'Sed lobortis feugiat nibh est hac platea. Ultrices cubilia quam condimentum dictumst class donec nam. Et dictumst commodo fermentum sem habitant. Lacu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-08-16', 0, '28:53', 3, 11, 88),
(1370, 'Birch of Trainer', 'Suspendisse tortor ullamcorper nisl. Placerat feugiat orci quam hac vivamus conubia duis bibendum nam iaculis, velit dapibus maximus torquent inceptos', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-05-07', 0, '26:11', 3, 12, 88),
(1371, 'The Danger\'s Flight', 'Erat metus a integer primis pellentesque ad litora torquent curabitur accumsan habitant. Velit semper ante primis nullam senectus. Malesuada metus sus', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-12-06', 0, '42:36', 4, 1, 88),
(1372, 'Name of Elves', 'Nulla lacus luctus fusce varius sagittis tristique, adipiscing interdum hac platea lectus ad odio. Feugiat pulvinar auctor torquent ullamcorper. Dictu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-12-25', 0, '21:22', 4, 2, 88),
(1373, 'The Dwindling Voyage', 'Sapien velit feugiat lacinia ligula primis augue gravida libero maximus tristique. Malesuada at id finibus vitae lacinia orci et hendrerit porttitor c', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-09-08', 0, '45:55', 4, 3, 88),
(1374, 'The Danger\'s Flight', 'Amet fusce cubilia lectus enim. Tellus faucibus hac, faucibus ornare libero diam nisl. Ipsum mi facilisis ac pulvinar auctor ad duis elementum risus f', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-02-10', 0, '44:28', 4, 4, 88),
(1375, 'Burning Something', 'Elit vestibulum eleifend pulvinar quisque vehicula, dolor egestas etiam vestibulum suspendisse pulvinar curae ornare consequat platea torquent sodales', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-11-27', 0, '39:26', 4, 5, 88),
(1376, 'Burning Something', 'Finibus suspendisse arcu. Justo leo feugiat integer ligula molestie per ullamcorper. Sapien etiam mattis luctus nec molestie fusce ante arcu condiment', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-07-28', 0, '24:31', 4, 6, 88),
(1377, 'Silver Twilight', 'Lorem at ligula cursus eget quam consequat libero conubia. Elit auctor scelerisque purus curae ultricies hac sagittis vivamus, sit consectetur elit ni', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-10-19', 0, '40:29', 4, 7, 88),
(1378, 'The Tale\'s Door', 'Proin torquent fermentum, lorem egestas lacus maecenas mattis lacinia massa fusce ultricies habitant nisl. Ipsum interdum vestibulum leo facilisis ut ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-04-21', 0, '43:22', 4, 8, 88),
(1379, 'Sliver in the Weeping', 'Dolor lacus vestibulum lacinia felis faucibus curae eu sociosqu conubia porta habitant. Dolor adipiscing viverra, semper lectus morbi. Finibus metus t', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-04-14', 0, '22:54', 4, 9, 88),
(1380, 'Obsession in the Spark', 'Et commodo dignissim. Adipiscing ante proin eget litora congue, dictum justo phasellus suscipit. Interdum etiam maecenas mauris tincidunt lacinia ultr', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-05-15', 0, '47:13', 4, 10, 88),
(1381, 'Burning Something', 'Adipiscing mi sapien malesuada lobortis leo phasellus molestie ante orci turpis duis. Est nisi porttitor neque, at metus facilisis hac inceptos rhoncu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-05-13', 0, '38:56', 4, 11, 88);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1382, 'The Force of the Silence', 'Malesuada id volutpat vitae tellus molestie pharetra sollicitudin eget pretium gravida maximus magna curabitur eros. Nec ex dapibus euismod platea gra', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-08-04', 0, '32:44', 4, 12, 88),
(1383, 'Shard of Dragon', 'Sapien metus luctus feugiat lacinia ligula quis nisi convallis cubilia ultricies tempus netus fames, adipiscing malesuada velit tempus aliquet senectu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-06-16', 0, '35:14', 5, 1, 88),
(1384, 'Flames of Dreams', 'Sed pulvinar dapibus tempus. Ultrices fringilla cubilia ornare nullam eget consequat habitasse dictumst vivamus ad himenaeos blandit sem habitant, sit', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-06-17', 0, '25:18', 5, 2, 88),
(1385, 'The Female of the Twins', 'Justo feugiat quis tellus libero litora inceptos accumsan iaculis. Id viverra justo lacinia suspendisse nunc nec ex fusce primis dapibus vel himenaeos', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-03-09', 0, '25:47', 5, 3, 88),
(1386, 'The Female of the Twins', 'Non finibus est ante lectus blandit sodales, ipsum malesuada luctus nunc augue sollicitudin commodo vel sociosqu himenaeos. Ipsum mi non mattis volutp', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-05-09', 0, '50:32', 5, 4, 88),
(1387, 'The Women of the Roses', 'Sed metus urna taciti nisl. Etiam commodo dignissim, luctus nunc nec quisque fusce varius orci ornare tempus libero bibendum. Dictum nulla lacus sapie', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-11-08', 0, '35:31', 5, 5, 88),
(1388, 'Seventh Fire', 'Praesent sapien velit platea, praesent ut vulputate. Feugiat ligula mollis ultricies hac ullamcorper. Mi etiam maecenas justo leo tincidunt fusce frin', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-03-26', 0, '30:36', 5, 6, 88),
(1389, 'The Force of the Silence', 'Sit mattis luctus nunc aliquam eget tempus magna risus. Ipsum mi in velit finibus mattis ut mollis venenatis convallis efficitur conubia elementum, do', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2019-03-18', 0, '21:52', 5, 7, 88),
(1390, 'The Tale\'s Door', 'Ipsum integer venenatis convallis orci dapibus habitasse class himenaeos magna diam dignissim, elit ac scelerisque molestie fusce orci et pharetra con', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-08-20', 0, '50:19', 5, 8, 88),
(1391, 'The Tale\'s Door', 'Dictum mattis ac nec est cubilia hendrerit commodo inceptos fermentum porta rhoncus. Mattis convallis fusce ante vulputate habitasse gravida commodo p', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-01-15', 0, '35:32', 5, 9, 88),
(1392, 'The Shadowy Death', 'Vitae vestibulum lobortis luctus tincidunt lacinia hendrerit arcu himenaeos suscipit. Dolor egestas velit finibus lacinia ut fringilla vulputate quam ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-03-03', 0, '26:40', 5, 10, 88),
(1393, 'Voyager in the Lord', 'Mi finibus a lacinia ut aliquam felis posuere vulputate vivamus sodales tristique cras, sapien mauris tellus torquent sodales duis morbi. Interdum ege', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-05-27', 0, '38:29', 5, 11, 88),
(1394, 'Name of Elves', 'Dictum lacus sed erat eleifend venenatis platea dictumst vel litora odio laoreet eros. Consectetur viverra vestibulum nisi felis ultricies vel pellent', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-03-11', 0, '35:14', 5, 12, 88),
(1395, 'The Dwindling Voyage', 'Mollis scelerisque per, sit arcu hac. Dolor interdum velit nisi efficitur curabitur. Amet sapien vestibulum primis porttitor maximus conubia turpis al', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-05-07', 0, '43:55', 1, 1, 89),
(1396, 'The Shadowy Death', 'Sit adipiscing nulla a urna quam dictumst sagittis fermentum porta odio bibendum cras. Mattis scelerisque quis convallis posuere hendrerit ornare, sol', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-09-08', 0, '33:37', 1, 2, 89),
(1397, 'Seventh Fire', 'Dolor ultrices eros, tortor venenatis tellus ultricies porttitor duis habitant. Integer phasellus primis vulputate quam condimentum ad nostra aliquet ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-03-29', 0, '35:52', 1, 3, 89),
(1398, 'Flames of Dreams', 'Nulla erat aliquam condimentum sagittis inceptos fermentum enim risus, velit leo quisque est varius pharetra eu nam, lorem at luctus ligula ac ante pr', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-07-27', 0, '37:57', 1, 4, 89),
(1399, 'The Shadowy Death', 'Nulla faucibus orci libero curabitur congue, ipsum placerat viverra mauris felis primis sollicitudin sagittis libero aptent curabitur blandit elementu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-04-04', 0, '42:36', 1, 5, 89),
(1400, 'Sliver in the Weeping', 'Id pulvinar tempor nisi purus ultricies vulputate bibendum, lorem praesent placerat mattis lobortis integer auctor mollis nisi aliquam vulputate dictu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-02-10', 0, '37:17', 1, 6, 89),
(1401, 'Shard of Dragon', 'Mauris porttitor condimentum consequat dui vivamus senectus fames. Elit mollis posuere proin inceptos vehicula. Lorem consectetur adipiscing tortor te', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-03-26', 0, '36:12', 1, 7, 89),
(1402, 'The Danger\'s Flight', 'Sit dictum viverra augue pharetra eu tristique. At finibus convallis morbi. Facilisis hendrerit hac himenaeos netus.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2016-08-21', 0, '44:57', 1, 8, 89),
(1403, 'Obsession in the Spark', 'Lorem sit interdum id convallis massa urna habitasse porta curabitur sodales laoreet iaculis cras aenean. Sed integer suspendisse auctor ultricies hen', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-05-30', 0, '33:30', 1, 9, 89),
(1404, 'Silver Twilight', 'Feugiat nibh tristique, ut et diam. Ac ornare tempus donec, lorem malesuada mattis volutpat vitae mollis tempus class aptent taciti turpis magna odio ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-09-25', 0, '46:41', 1, 10, 89),
(1405, 'Burning Something', 'Praesent dictum lacus nec pulvinar mollis gravida taciti accumsan neque laoreet eros imperdiet sem netus, lorem non at justo nisi aliquam curae pharet', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-11-06', 0, '44:21', 1, 11, 89),
(1406, 'The Force of the Silence', 'Interdum justo vitae facilisis nunc mollis pellentesque blandit eros. Ut tellus cursus et vivamus accumsan senectus. Adipiscing maecenas volutpat just', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-11-04', 0, '34:35', 2, 1, 89),
(1407, 'Flames of Dreams', 'Non egestas nulla nunc tellus condimentum turpis enim potenti vehicula. Mi quis varius curae pharetra commodo dui libero pellentesque inceptos himenae', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-07-25', 0, '50:23', 2, 2, 89),
(1408, 'Grey Sparks', 'Sollicitudin commodo sodales nam. Dolor praesent quisque ut ultrices felis ante dapibus nullam sollicitudin vel turpis. Sit adipiscing lacus sed id ac', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-04-10', 0, '22:17', 2, 3, 89),
(1409, 'The Force of the Silence', 'Lacus id finibus nunc ultrices dapibus, mattis est ante habitasse platea porta rhoncus potenti eros risus habitant tristique senectus. Sed ligula tort', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-10-26', 0, '28:27', 2, 4, 89),
(1410, 'Birch of Trainer', 'Semper est tempor molestie convallis orci posuere habitasse gravida. Consectetur lacinia ac est orci vel odio fames. Lorem consectetur finibus tincidu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-11-03', 0, '22:59', 2, 5, 89),
(1411, 'The Licking Flowers', 'Lorem nulla lacinia suspendisse nec tempor condimentum turpis. Ipsum mi vitae est tempor massa pharetra aptent blandit bibendum vehicula, nibh nisi po', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-04-13', 0, '20:34', 2, 6, 89),
(1412, 'The Female of the Twins', 'Consectetur lacus erat integer auctor tempor molestie purus ultricies efficitur per diam eros dignissim nisl. Consectetur nec taciti fermentum vehicul', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-04-11', 0, '25:57', 2, 7, 89),
(1413, 'The Shadowy Death', 'Egestas viverra vulputate. Adipiscing integer nunc eget condimentum eu dui sociosqu. Amet lobortis semper molestie varius ultricies efficitur rhoncus ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-01-26', 0, '30:46', 2, 8, 89),
(1414, 'Sliver in the Weeping', 'Egestas placerat at id metus quis pharetra efficitur torquent. Lorem amet erat id nisi massa dui lectus neque bibendum. Dolor amet adipiscing nulla me', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-08-14', 0, '27:10', 2, 9, 89),
(1415, 'The Danger\'s Flight', 'Non egestas justo phasellus fusce commodo taciti magna diam habitant iaculis. Amet vitae quisque varius primis commodo turpis neque bibendum habitant,', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-04-21', 0, '31:34', 2, 10, 89),
(1416, 'The Women of the Roses', 'Sit id mauris est varius vulputate urna dictumst fermentum rhoncus blandit neque duis. Dolor in viverra est tellus cursus pellentesque aptent porta co', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-11-14', 0, '47:24', 2, 11, 89),
(1417, 'Light in the Mage', 'Lacinia nunc tempor venenatis pharetra condimentum aptent turpis enim dignissim. Id semper cursus vulputate maximus elementum. Dictum lacus nisi urna ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-07-28', 0, '38:10', 3, 1, 89),
(1418, 'Birch of Trainer', 'Id velit mauris lacinia mollis phasellus vel nostra, praesent nec aliquam condimentum libero efficitur per fames. Mollis porta enim. Elit feugiat susp', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-12-13', 0, '33:17', 3, 2, 89),
(1419, 'Obsession in the Spark', 'Quisque posuere platea odio. Non id lobortis aliquam convallis faucibus ante eget pretium quam tempus dui vel eros cras. Mattis tincidunt lacinia frin', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-04-27', 0, '27:42', 3, 3, 89),
(1420, 'Flames of Dreams', 'Nulla integer pulvinar nisi aliquam fusce felis urna hac gravida dui taciti torquent porta cras, viverra ut ultricies tempus aptent enim accumsan elem', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-11-04', 0, '28:17', 3, 4, 89),
(1421, 'Shard of Dragon', 'Interdum sed erat felis varius nullam tempus dui class nostra sodales congue eros imperdiet ullamcorper, nulla id ut himenaeos sem dignissim habitant.', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-03-10', 0, '44:38', 3, 5, 89),
(1422, 'Shard of Dragon', 'Maecenas mattis justo convallis fusce ante tempus accumsan nam. Lacus viverra quis purus aliquet. Scelerisque ultrices molestie felis orci eu vivamus ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-05-02', 0, '32:31', 3, 6, 89),
(1423, 'The Dwindling Voyage', 'Interdum nulla a ac fusce eget pretium tempus habitasse aptent sociosqu litora magna rhoncus. Amet malesuada eleifend ut varius proin pharetra urna co', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-01-24', 0, '30:23', 3, 7, 89),
(1424, 'The Danger\'s Flight', 'Dolor in aptent accumsan. Ipsum dolor sit lacus viverra nibh tortor purus sagittis fermentum congue. Felis hendrerit eget nostra blandit, ipsum taciti', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-07-15', 0, '43:52', 3, 8, 89),
(1425, 'Silver Twilight', 'Maecenas metus nec est ex ultricies efficitur conubia porta duis ullamcorper habitant, sapien metus lacinia nullam arcu consequat eu tristique. Elit i', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-03-20', 0, '20:13', 3, 9, 89),
(1426, 'The Dwindling Voyage', 'At integer nec mollis porttitor himenaeos bibendum risus aliquet morbi. Praesent etiam velit purus hendrerit conubia accumsan elementum diam fames aen', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-06-08', 0, '46:13', 3, 10, 89),
(1427, 'The Shadowy Death', 'Etiam lobortis urna. Dictum dapibus ad inceptos sodales accumsan vehicula. Velit metus condimentum dictumst libero nam fames, praesent mi placerat int', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-08-10', 0, '46:10', 3, 11, 89),
(1428, 'Obsession in the Spark', 'Dolor viverra nunc eget. Etiam integer mollis ante efficitur aptent nostra blandit congue vehicula fames. Elit curae sollicitudin morbi netus. Ipsum s', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-07-14', 0, '33:59', 4, 1, 89),
(1429, 'The Danger\'s Flight', 'Ipsum sapien malesuada mattis mauris ligula eleifend pharetra dapibus sollicitudin efficitur conubia eros senectus. Lorem feugiat cursus nullam taciti', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-12-13', 0, '32:38', 4, 2, 89),
(1430, 'The Shadowy Death', 'Dolor consectetur vitae condimentum gravida torquent. Mi malesuada velit venenatis ante pretium arcu habitasse libero vel congue dignissim iaculis cra', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-04-13', 0, '36:25', 4, 3, 89),
(1431, 'Obsession in the Spark', 'In erat nibh ac nisi ante sollicitudin porttitor habitasse ad odio. Dolor nulla facilisis pulvinar mollis tempor fermentum magna rhoncus accumsan dign', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2011-12-01', 0, '27:28', 4, 4, 89),
(1432, 'Sliver in the Weeping', 'Dolor viverra vitae nec semper et eget vivamus enim blandit neque iaculis. Sapien tellus torquent, eleifend per inceptos. Id per potenti fames nisl. L', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-01-15', 0, '44:54', 4, 5, 89),
(1433, 'The Dreamer\'s Flame', 'Sit non finibus tortor cursus taciti blandit duis vehicula. Velit mattis mauris lacinia ac ante lectus. Lorem consectetur mi justo vitae lobortis quis', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-12-05', 0, '28:38', 4, 6, 89),
(1434, 'Flames of Dreams', 'Lobortis molestie pellentesque himenaeos, ipsum elit non in sapien nec semper et eget sagittis eu vel maximus tristique. Egestas at lobortis feugiat n', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-03-17', 0, '22:58', 4, 7, 89),
(1435, 'The Dreamer\'s Flame', 'Tincidunt pulvinar fringilla commodo libero. Elit ac dapibus platea lectus blandit congue neque, etiam id fusce varius tempus eu accumsan. Vitae nunc ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-06-16', 0, '20:46', 4, 8, 89),
(1436, 'Birch of Trainer', 'At nibh eget arcu turpis odio potenti suscipit. Ipsum amet elit dictum vitae suspendisse nec ut quam tempus sociosqu per accumsan cras. Sit mattis gra', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-09-17', 0, '29:43', 4, 9, 89),
(1437, 'Flames of Dreams', 'Lorem maecenas mattis nunc ultricies augue urna gravida aptent taciti sodales accumsan, sed vestibulum ligula molestie felis libero. Lacus ac cursus c', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-08-26', 0, '32:59', 4, 10, 89),
(1438, 'The Danger\'s Flight', 'Lacus tincidunt nunc ut tortor ultrices ante hendrerit hac dictumst nostra potenti netus. Quis vulputate condimentum consequat suscipit ullamcorper ri', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-06-24', 0, '39:27', 4, 11, 89),
(1439, 'Burning Something', 'Adipiscing est dapibus habitasse sem. Ipsum a lacinia tempor scelerisque purus hac vivamus libero pellentesque curabitur laoreet elementum ullamcorper', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2010-11-30', 0, '24:26', 5, 1, 89),
(1440, 'The Danger\'s Flight', 'Egestas id ex ornare. Luctus a molestie fusce gravida maximus vehicula imperdiet. Interdum maecenas semper primis, nulla malesuada mattis luctus nibh ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-07-08', 0, '23:38', 5, 2, 89),
(1441, 'Voyager in the Lord', 'Placerat etiam id nibh convallis proin hendrerit quam libero maximus taciti porta duis vehicula aenean. Sit id duis laoreet elementum dignissim alique', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-09-12', 0, '40:10', 5, 3, 89),
(1442, 'Flames of Dreams', 'Dolor auctor phasellus purus cursus primis platea libero. Elit malesuada velit justo tortor orci posuere ornare eget condimentum fermentum laoreet dia', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-06-04', 0, '22:28', 5, 4, 89),
(1443, 'Voyager in the Lord', 'In scelerisque ultrices eget vulputate arcu sagittis taciti laoreet netus. In erat velit semper quis purus convallis fringilla habitant netus. Leo nis', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2019-02-07', 0, '32:28', 5, 5, 89),
(1444, 'Light in the Mage', 'Consectetur malesuada lobortis integer augue pharetra vel taciti, est augue porttitor turpis senectus nisl. Ipsum etiam dapibus potenti, placerat maec', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-12-06', 0, '34:16', 5, 6, 89),
(1445, 'The Female of the Twins', 'Id vestibulum metus potenti, in lacinia eleifend nec phasellus dictumst dui maximus conubia potenti eros nam. Justo feugiat suspendisse cursus fusce c', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-06-11', 0, '44:24', 5, 7, 89),
(1446, 'The Women of the Roses', 'Sapien ut massa, lorem sed at id lobortis feugiat ut phasellus cursus sagittis commodo class odio. Lorem purus massa fusce lectus litora accumsan. Ege', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-09-28', 0, '42:27', 5, 8, 89),
(1447, 'Voyager in the Lord', 'Ipsum consectetur mi lacus erat suspendisse nullam tempus sagittis lectus diam aenean. Consectetur at sagittis ullamcorper. Erat facilisis et nullam.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-02-07', 0, '23:29', 5, 9, 89),
(1448, 'Obsession in the Spark', 'Elit metus fusce dictumst. Vitae auctor hendrerit libero. Justo ultrices quam iaculis. In maecenas eleifend ex et hac eu vel taciti nostra diam vehicu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-07-21', 0, '23:10', 5, 10, 89),
(1449, 'The Force of the Silence', 'Finibus maecenas integer nec condimentum conubia risus netus. Amet maecenas quis pharetra sollicitudin eget pretium condimentum gravida commodo odio n', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-12-19', 0, '44:50', 5, 11, 89),
(1450, 'Sliver in the Weeping', 'Mollis curae urna eu donec enim laoreet sem fames, in maecenas volutpat mauris integer tortor ornare condimentum class torquent himenaeos accumsan. Id', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-01-04', 0, '40:28', 6, 1, 89),
(1451, 'The Women of the Roses', 'Lacus at etiam vitae fringilla proin ornare pharetra dapibus dictumst fermentum potenti nam, sit interdum sapien ut ad. Curae sollicitudin quam torque', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-01-27', 0, '23:26', 6, 2, 89),
(1452, 'The Licking Flowers', 'Malesuada ligula ut purus convallis primis euismod hac aliquet. Quisque cursus ultricies habitasse lectus. Maecenas quisque tellus posuere cubilia pla', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-08-01', 0, '33:31', 6, 3, 89),
(1453, 'Sliver in the Weeping', 'Adipiscing egestas vestibulum est venenatis cursus fringilla eu aptent conubia fermentum odio potenti. Nibh facilisis ex quam enim odio blandit congue', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-03-28', 0, '48:17', 6, 4, 89),
(1454, 'Shard of Dragon', 'Lobortis mauris nec hendrerit eget arcu quam senectus netus. Justo tempus sagittis taciti magna eros risus. Amet nibh a nunc auctor pretium conubia fe', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-06-23', 0, '40:35', 6, 5, 89),
(1455, 'Birch of Trainer', 'Lobortis tempor convallis habitasse accumsan, nec aliquam faucibus hendrerit nullam vulputate hac himenaeos fermentum donec congue ullamcorper senectu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-06-11', 0, '33:17', 6, 6, 89),
(1456, 'The Female of the Twins', 'Viverra tortor massa augue laoreet suscipit diam. Mauris luctus lacinia tempor nisi felis primis urna condimentum taciti nostra dignissim. Non finibus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-08-26', 0, '47:50', 6, 7, 89),
(1457, 'The Dreamer\'s Flame', 'Sed tincidunt cursus et dapibus condimentum himenaeos neque bibendum tristique. Dolor mattis facilisis aliquam molestie et proin augue sollicitudin fe', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-10-28', 0, '26:44', 6, 8, 89),
(1458, 'Birch of Trainer', 'Consectetur non finibus metus aliquam pellentesque ad torquent donec magna enim odio duis morbi. Dolor nulla vitae nullam sagittis turpis bibendum. Vo', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-02-08', 0, '42:31', 6, 9, 89),
(1459, 'Light in the Mage', 'Velit est proin ultricies. Lorem volutpat luctus a cubilia tempus hac gravida vivamus maximus taciti nostra diam aliquet. Dictum metus mauris nec temp', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-11-05', 0, '45:49', 6, 10, 89),
(1460, 'The Force of the Silence', 'Erat suspendisse mollis quis varius porta enim odio potenti nisl iaculis. Metus eleifend et ornare. Interdum justo eleifend. Finibus fermentum blandit', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-11-22', 0, '29:46', 6, 11, 89),
(1461, 'The Shadowy Death', 'Malesuada suspendisse hendrerit. At suspendisse cubilia arcu efficitur inceptos enim, lacus sapien finibus mattis vestibulum lobortis ante orci hendre', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-10-18', 0, '36:13', 1, 1, 90),
(1462, 'The Tale\'s Door', 'Integer proin porttitor commodo. Dictum maecenas nibh fusce ante per, sit elit leo facilisis mollis fusce primis proin tempus magna potenti sodales er', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-02-24', 0, '48:44', 1, 2, 90),
(1463, 'Light in the Mage', 'Lorem ipsum amet vestibulum nibh facilisis fringilla sagittis rhoncus tristique. Egestas viverra vestibulum auctor molestie purus ex ad blandit sodale', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-11-04', 0, '34:57', 1, 3, 90),
(1464, 'The Licking Flowers', 'Non lobortis nec venenatis fringilla lectus sociosqu iaculis, sit lobortis leo eleifend nunc nisi proin dapibus eget litora diam habitant. Justo conva', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-08-18', 0, '21:23', 1, 4, 90),
(1465, 'The Female of the Twins', 'Mi in id nisi fermentum, interdum integer arcu neque imperdiet dignissim. Id viverra nibh ac aliquam primis habitasse commodo dui imperdiet netus iacu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-06-01', 0, '30:46', 1, 5, 90),
(1466, 'The Shadowy Death', 'Interdum erat finibus lobortis mauris auctor quis tellus cursus dictumst odio iaculis, interdum etiam viverra vestibulum luctus ut mollis tempus dui u', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-06-17', 0, '50:46', 1, 6, 90),
(1467, 'Some Sliver', 'Adipiscing scelerisque sagittis vel efficitur sodales bibendum elementum, consectetur sed maecenas feugiat a ac tempor fringilla condimentum tempus to', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-11-05', 0, '47:46', 1, 7, 90),
(1468, 'Shard of Dragon', 'Mi ligula tortor ultrices ornare euismod donec curabitur vehicula iaculis, volutpat est tellus posuere ornare class aptent blandit laoreet. Dictum lig', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-09-02', 0, '29:32', 1, 8, 90),
(1469, 'Silver Twilight', 'Malesuada viverra maecenas fringilla pharetra. Mi a mollis molestie posuere proin tempus efficitur torquent per curabitur eros nam sem netus. Amet fin', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-04-22', 0, '34:26', 1, 9, 90),
(1470, 'The Female of the Twins', 'Placerat maecenas ligula quisque felis proin ultricies ornare potenti nam. Elit dictum netus, sapien integer ligula fusce proin nullam dictumst commod', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-05-23', 0, '48:16', 1, 10, 90),
(1471, 'The Licking Flowers', 'Consectetur justo feugiat facilisis curae arcu habitasse suscipit risus habitant. Mattis pharetra dui enim nam, ut tempus taciti congue. Sit malesuada', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-02-02', 0, '42:40', 1, 11, 90),
(1472, 'Grey Sparks', 'Lorem vestibulum luctus pretium platea litora, in eleifend dui nostra himenaeos neque. Mollis nisi hac habitant. Sit sapien felis vel pellentesque tur', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-03-24', 0, '49:14', 2, 1, 90),
(1473, 'The Dreamer\'s Flame', 'Lacus maecenas scelerisque dignissim aliquet, mi nostra accumsan nam ullamcorper. Sit vitae leo nibh integer tellus ante orci inceptos suscipit, ipsum', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-04-30', 0, '47:17', 2, 2, 90),
(1474, 'Obsession in the Spark', 'Ipsum amet ac primis augue vulputate habitasse platea aenean. Maecenas aptent curabitur neque bibendum. Adipiscing nulla volutpat ultricies ornare tor', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-10-31', 0, '21:44', 2, 3, 90),
(1475, 'Grey Sparks', 'Dolor lacus torquent, praesent suspendisse quis primis urna arcu porttitor gravida torquent aliquet fames, consectetur in integer quisque ultricies ha', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-06-21', 0, '46:24', 2, 4, 90),
(1476, 'Light in the Mage', 'Sit maecenas mattis quisque cubilia ultricies consequat habitasse vivamus conubia enim congue suscipit aliquet habitant, praesent viverra lacinia ut a', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-11-24', 0, '27:42', 2, 5, 90),
(1477, 'Birch of Trainer', 'Elit sapien velit justo quisque fusce habitasse vivamus per suscipit dignissim risus habitant. Nibh pulvinar est euismod commodo inceptos habitant mor', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-04-05', 0, '22:55', 2, 6, 90),
(1478, 'The Dreamer\'s Flame', 'Amet dictum lacus mauris feugiat a ac eleifend tempor molestie ornare condimentum dictumst ullamcorper aenean, egestas mattis feugiat fusce diam trist', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-03-30', 0, '40:27', 2, 7, 90),
(1479, 'Burning Something', 'Adipiscing etiam metus leo ac ut venenatis netus. Ex felis magna curabitur sodales. Metus lobortis feugiat auctor ante posuere augue pretium urna dui ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-03-15', 0, '28:44', 2, 8, 90),
(1480, 'Name of Elves', 'Praesent lacus volutpat ac semper condimentum himenaeos fermentum senectus. Amet id metus nec nisi convallis massa orci consequat hac duis suscipit er', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-01-04', 0, '38:18', 2, 9, 90),
(1481, 'Light in the Mage', 'Velit finibus leo feugiat. Velit ligula pulvinar quisque molestie sollicitudin eget urna porttitor hac maximus ullamcorper. Egestas justo ultrices mas', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-08-26', 0, '35:28', 2, 10, 90),
(1482, 'Shard of Dragon', 'Quis ex felis hac sagittis efficitur aptent magna congue ullamcorper cras. Amet consectetur finibus mattis nibh nec semper est ex varius efficitur con', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-08-16', 0, '41:52', 2, 11, 90),
(1483, 'Burning Something', 'In id et eget consequat hac maximus neque aliquet tristique. Praesent malesuada feugiat tincidunt integer venenatis phasellus fringilla commodo conubi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-03-19', 0, '35:59', 3, 1, 90),
(1484, 'Burning Something', 'Lacus vitae metus ligula est purus quam sagittis per risus. Ipsum adipiscing placerat facilisis ornare sollicitudin pretium platea dictumst per curabi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-05-15', 0, '45:25', 3, 2, 90),
(1485, 'The Shadowy Death', 'Dolor laoreet netus. Ipsum interdum leo molestie urna conubia donec potenti laoreet imperdiet nisl, ipsum dolor id mauris massa nullam vulputate nostr', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-05-07', 0, '38:31', 3, 3, 90),
(1486, 'The Licking Flowers', 'Feugiat ex vulputate consequat hac gravida eros netus. Placerat justo magna, semper auctor primis quam himenaeos risus. Sapien inceptos ullamcorper. L', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-03-25', 0, '49:39', 3, 4, 90),
(1487, 'Grey Sparks', 'Vitae facilisis eleifend euismod pellentesque taciti per vehicula. Praesent maecenas mattis metus facilisis ac aliquam dapibus commodo ad enim suscipi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-02-12', 0, '31:20', 3, 5, 90),
(1488, 'Voyager in the Lord', 'Non in facilisis nunc quisque tellus faucibus quam eu blandit duis elementum suscipit aenean. Erat quam hac sodales. Mi in placerat justo vitae nunc m', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-08-28', 0, '44:47', 3, 6, 90),
(1489, 'The Dreamer\'s Flame', 'Sit lacus at mattis leo feugiat nunc quis ex curae augue vulputate risus cras. In fermentum enim sodales duis ullamcorper nisl. Lorem nibh curae vivam', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-10-29', 0, '37:25', 3, 7, 90),
(1490, 'Sliver in the Weeping', 'Sollicitudin porta rhoncus, interdum egestas facilisis lacinia varius curae ornare commodo efficitur litora inceptos magna enim curabitur fames, lorem', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-07-13', 0, '47:31', 3, 8, 90),
(1491, 'Silver Twilight', 'Amet mattis orci, nulla mattis lobortis nec auctor ultrices hendrerit dapibus taciti diam dignissim tristique senectus. Sit mi finibus semper felis or', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-09-11', 0, '47:41', 3, 9, 90),
(1492, 'The Shadowy Death', 'At mattis lacinia lectus, vestibulum tempor ante. Adipiscing ligula pulvinar tempor quis ultrices nisi habitasse sagittis class inceptos fermentum bla', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-11-19', 0, '22:47', 3, 10, 90),
(1493, 'The Women of the Roses', 'Dolor ornare fermentum. Non vestibulum phasellus. Lorem adipiscing a ac suspendisse tortor purus et cubilia curae urna pellentesque bibendum cras.', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-12-24', 0, '32:11', 3, 11, 90),
(1494, 'The Licking Flowers', 'Erat mauris integer proin sociosqu fermentum magna. Lorem curabitur laoreet. Dolor mi maecenas justo feugiat venenatis molestie ex massa eu enim odio ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-03-21', 0, '20:40', 1, 1, 91),
(1495, 'Voyager in the Lord', 'Purus primis dapibus nullam gravida fermentum. Adipiscing sapien quis tellus felis proin euismod libero conubia sodales nam iaculis. Tincidunt sodales', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-05-14', 0, '28:11', 1, 2, 91),
(1496, 'The Shadowy Death', 'Viverra eleifend et dignissim. Tellus fringilla primis libero aliquet. Posuere ornare hac.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-02-12', 0, '27:55', 1, 3, 91),
(1497, 'Silver Twilight', 'Hac vel aptent. Consectetur in sapien nec curae augue fermentum rhoncus neque bibendum, dictum a scelerisque phasellus faucibus varius euismod tempus ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-08-02', 0, '35:32', 1, 4, 91),
(1498, 'Light in the Mage', 'Non sapien finibus maecenas volutpat ultrices posuere euismod consequat dui lectus netus fames, praesent a nec tellus molestie cubilia ornare eget vul', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-11-07', 0, '37:34', 1, 5, 91),
(1499, 'Seventh Fire', 'Lacus ut felis curae pretium bibendum ullamcorper, ipsum velit maecenas vestibulum nunc molestie nam tristique cras. Interdum at a facilisis felis var', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-10-16', 0, '29:21', 1, 6, 91),
(1500, 'The Dwindling Voyage', 'Elit mi ante curae inceptos. Amet consectetur adipiscing finibus mattis justo molestie augue porta vehicula morbi, interdum mattis semper tellus posue', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-03-04', 0, '40:24', 1, 7, 91),
(1501, 'The Licking Flowers', 'Leo cursus hendrerit habitasse aenean, adipiscing non molestie convallis condimentum gravida commodo donec rhoncus netus. Lorem adipiscing vitae luctu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-05-31', 0, '36:21', 1, 8, 91),
(1502, 'The Dwindling Voyage', 'Sit egestas lacus erat volutpat vestibulum metus commodo inceptos himenaeos sodales diam imperdiet nisl aenean. Pellentesque odio eros senectus. Sed s', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-01-25', 0, '30:44', 1, 9, 91),
(1503, 'The Force of the Silence', 'Dolor amet elit nisi phasellus ultricies dapibus dui vehicula morbi. Lorem etiam velit viverra feugiat a curae commodo nisl, in ligula massa varius cu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-01-15', 0, '25:26', 2, 1, 91),
(1504, 'The Dreamer\'s Flame', 'Tincidunt ut urna platea bibendum, tellus orci donec aliquet. Elit egestas tincidunt facilisis mollis nisi felis pretium taciti sociosqu turpis senect', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2019-02-11', 0, '32:23', 2, 2, 91),
(1505, 'The Dreamer\'s Flame', 'Ut primis conubia donec. Consectetur velit vestibulum a integer quisque scelerisque tellus purus sollicitudin aptent odio neque laoreet. Lobortis pulv', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2001-01-19', 0, '35:29', 2, 3, 91),
(1506, 'The Women of the Roses', 'Lacus finibus mauris ac molestie fusce felis libero, adipiscing elit mi justo suspendisse pulvinar mollis venenatis fusce proin eget suscipit. Dolor e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-02-20', 0, '29:46', 2, 4, 91),
(1507, 'Name of Elves', 'Scelerisque ultricies ornare euismod taciti nostra tristique cras. Dolor tempor convallis ultricies suscipit. Elit mattis vestibulum leo massa fusce o', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-01-21', 0, '33:16', 2, 5, 91),
(1508, 'The Shadowy Death', 'Adipiscing non a mollis cursus augue condimentum dui ad donec potenti ullamcorper senectus nisl iaculis. Pulvinar tortor phasellus aliquam felis primi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-07-29', 0, '38:26', 2, 6, 91),
(1509, 'Name of Elves', 'Elit justo lobortis nibh facilisis tellus primis ultricies ornare commodo maximus rhoncus potenti fames. Nulla volutpat feugiat ac ultrices iaculis. L', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-07-05', 0, '29:43', 2, 7, 91),
(1510, 'Birch of Trainer', 'Dictum sapien malesuada id phasellus ultricies augue ullamcorper habitant senectus. Felis eget magna, ipsum volutpat luctus scelerisque nisi ante ultr', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-02-19', 0, '37:32', 2, 8, 91),
(1511, 'The Tale\'s Door', 'Lorem in lacus suspendisse eleifend quisque euismod gravida vivamus libero ad turpis senectus, mauris nec quis ultrices tellus phasellus molestie ante', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-10-05', 0, '37:49', 2, 9, 91),
(1512, 'Grey Sparks', 'In volutpat consequat lectus libero potenti accumsan sem ullamcorper. Placerat erat justo est tempor fusce urna inceptos donec enim, condimentum hac d', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-12-13', 0, '44:57', 3, 1, 91),
(1513, 'Burning Something', 'Sed placerat mattis tincidunt inceptos turpis habitant. Ipsum lacus vitae nibh augue nullam pretium hac bibendum morbi. Erat tincidunt lacinia ferment', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-02-24', 0, '33:12', 3, 2, 91),
(1514, 'The Licking Flowers', 'At lobortis ac ante dapibus sollicitudin habitasse conubia vehicula fames. Adipiscing at tincidunt est tempor augue commodo fermentum potenti, malesua', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2000-09-02', 0, '31:54', 3, 3, 91),
(1515, 'Seventh Fire', 'Viverra suspendisse tortor scelerisque fringilla varius dapibus quam condimentum consequat eu pellentesque conubia. Non nulla leo facilisis fringilla ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-08-16', 0, '39:19', 3, 4, 91),
(1516, 'Flames of Dreams', 'Egestas feugiat auctor est augue dui congue. Malesuada metus suspendisse ut fusce fringilla ultricies dictumst nostra elementum tristique, placerat lu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-03-17', 0, '50:57', 3, 5, 91),
(1517, 'Sliver in the Weeping', 'Egestas mauris ornare eu torquent per inceptos curabitur sodales bibendum. Consectetur velit viverra integer tellus phasellus cubilia condimentum ad p', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-04-14', 0, '23:25', 3, 6, 91),
(1518, 'Sliver in the Weeping', 'Malesuada erat velit ligula ut condimentum vivamus pellentesque accumsan eros, lorem dolor non nulla malesuada id volutpat pharetra platea torquent ma', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-03-12', 0, '45:16', 3, 7, 91),
(1519, 'The Dreamer\'s Flame', 'Non id viverra ut phasellus primis hendrerit augue sollicitudin porta nisl iaculis cras. Ipsum egestas at leo nibh a nec tortor commodo aptent litora ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-01-11', 0, '39:18', 3, 8, 91),
(1520, 'The Female of the Twins', 'Praesent interdum auctor tempor cubilia nullam porttitor commodo dui vivamus pellentesque sociosqu curabitur tristique. Elit nulla sed justo euismod c', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-07-31', 0, '42:54', 3, 9, 91),
(1521, 'Voyager in the Lord', 'Adipiscing interdum viverra tortor tellus aliquam felis varius pharetra porttitor pellentesque taciti netus nisl. Sed fringilla litora, sed sapien mau', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-10-14', 0, '28:20', 4, 1, 91),
(1522, 'Shard of Dragon', 'In malesuada mauris purus massa eget vel nisl. Viverra nibh quisque tortor convallis ultricies potenti imperdiet. Amet feugiat ac suspendisse venenati', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-11-14', 0, '31:28', 4, 2, 91),
(1523, 'Shard of Dragon', 'Ligula pharetra eget habitasse duis suscipit imperdiet cras, auctor pharetra porttitor sodales morbi. Egestas sapien mattis purus commodo aptent per n', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-10-10', 0, '43:27', 4, 3, 91),
(1524, 'The Licking Flowers', 'Orci euismod hac. Interdum malesuada velit vitae tincidunt torquent magna dignissim morbi. Dolor at id vestibulum nibh nunc semper fusce dui ullamcorp', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-07-04', 0, '39:23', 4, 4, 91),
(1525, 'Grey Sparks', 'Amet tincidunt nec varius, non id purus ante platea dictumst maximus fermentum enim blandit risus aliquet iaculis. Erat vitae integer posuere proin ph', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-10-18', 0, '35:19', 4, 5, 91),
(1526, 'Grey Sparks', 'Vestibulum luctus quis et dapibus habitasse maximus efficitur porta aliquet. Amet non maecenas auctor purus massa vel class netus. Egestas lacinia ult', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-05-24', 0, '25:38', 4, 6, 91),
(1527, 'Light in the Mage', 'Lobortis tellus urna lectus, praesent taciti eros. Consectetur mauris est. Mattis vestibulum metus nibh ligula ac eleifend mollis tempor dictumst apte', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-11-19', 0, '39:40', 4, 7, 91),
(1528, 'Grey Sparks', 'Nulla lacus metus fringilla vel porta risus. Amet consectetur ut scelerisque purus massa fusce curae porttitor eu litora duis suscipit netus, amet era', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-08-07', 0, '32:59', 4, 8, 91),
(1529, 'The Dreamer\'s Flame', 'Dictum lacus netus. Tincidunt fusce arcu vel laoreet ullamcorper. Placerat facilisis scelerisque et curae nostra magna rhoncus neque suscipit. Elit se', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-08-24', 0, '44:10', 4, 9, 91),
(1530, 'The Dreamer\'s Flame', 'Interdum id integer ut scelerisque fusce varius posuere ultricies pretium pellentesque. Mi viverra venenatis aliquam et ultricies pretium vulputate ur', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-11-10', 0, '29:54', 5, 1, 91),
(1531, 'Seventh Fire', 'Lorem mi lacus viverra luctus mollis nisi habitasse nostra donec senectus. Malesuada finibus justo lobortis tincidunt cursus morbi. Mauris tortor soll', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-10-25', 0, '44:20', 5, 2, 91),
(1532, 'Shard of Dragon', 'Lorem elit vestibulum pulvinar venenatis ultrices lectus litora risus. Posuere sagittis conubia, maecenas a quisque quis platea fames. Lorem nibh susp', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-07-29', 0, '25:48', 5, 3, 91),
(1533, 'Some Sliver', 'Ut faucibus tempus platea sagittis porta curabitur laoreet nam. Lorem non erat finibus tincidunt conubia nisl. Interdum non sed luctus a scelerisque f', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-02-20', 0, '34:15', 5, 4, 91),
(1534, 'The Women of the Roses', 'Lacus augue nisl cras. Dictum at velit a ornare pretium consequat tempus dictumst gravida lectus odio laoreet tristique nisl, consectetur fusce cubili', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-04-19', 0, '23:22', 5, 5, 91),
(1535, 'Grey Sparks', 'Viverra vestibulum mollis aliquam ornare pretium libero torquent risus aenean. Ipsum amet elit facilisis scelerisque molestie primis cubilia ultricies', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-02-26', 0, '29:37', 5, 6, 91),
(1536, 'Voyager in the Lord', 'Non et nullam donec potenti bibendum. Adipiscing mi non etiam suspendisse eleifend pulvinar cubilia habitasse dictumst tristique. Dolor mi malesuada s', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-10-30', 0, '33:45', 5, 7, 91),
(1537, 'Birch of Trainer', 'Consectetur facilisis aliquet, nibh purus primis. Egestas volutpat scelerisque quis tellus ex faucibus curae himenaeos donec curabitur blandit digniss', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-11-28', 0, '47:50', 5, 8, 91),
(1538, 'Birch of Trainer', 'Nibh primis curae pharetra eu accumsan congue morbi. Interdum integer quam condimentum sagittis congue, sit praesent nulla volutpat posuere hendrerit ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-09-03', 0, '44:33', 5, 9, 91),
(1539, 'The Female of the Twins', 'Viverra maecenas quisque scelerisque aliquam cubilia curae urna gravida turpis eros. Lorem ipsum egestas nibh integer est varius pretium commodo tacit', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-08-12', 0, '20:24', 1, 1, 92),
(1540, 'The Danger\'s Flight', 'Egestas placerat lacinia fusce et proin aptent fames. Luctus tincidunt quisque venenatis cursus varius porttitor tempus gravida dui pellentesque accum', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-08-18', 0, '28:39', 1, 2, 92),
(1541, 'Silver Twilight', 'Consectetur ut aliquam faucibus condimentum vel litora fermentum rhoncus dignissim, dolor nulla erat donec magna enim accumsan suscipit. Placerat metu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-12-14', 0, '22:54', 1, 3, 92),
(1542, 'The Women of the Roses', 'Lacus id justo nibh a quisque tortor dapibus porttitor condimentum tempus dui maximus ad himenaeos, mauris feugiat quisque venenatis vulputate lectus ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2019-03-25', 0, '24:13', 1, 4, 92),
(1543, 'Grey Sparks', 'Velit accumsan risus. Amet justo nibh tortor ex felis faucibus. Ipsum felis tempus, interdum sapien integer semper. Amet mi erat volutpat feugiat prim', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-11-01', 0, '35:34', 1, 5, 92),
(1544, 'The Dwindling Voyage', 'Interdum placerat velit finibus est venenatis phasellus molestie orci condimentum efficitur magna nam dignissim habitant. Nunc nec phasellus convallis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2007-08-26', 0, '45:36', 1, 6, 92),
(1545, 'The Licking Flowers', 'Auctor euismod pellentesque eros cras. Arcu class curabitur. Ut auctor purus ante cubilia augue maximus per conubia odio iaculis aenean. Elit praesent', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-06-22', 0, '32:51', 1, 7, 92),
(1546, 'Grey Sparks', 'Mi erat integer lacinia nec mollis fusce fringilla curae arcu, adipiscing in metus pulvinar auctor tortor ultrices proin arcu sagittis class suscipit.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-02-19', 0, '26:53', 2, 1, 92),
(1547, 'Voyager in the Lord', 'Mi erat justo quis ultrices felis proin hac vivamus libero conubia curabitur morbi. Dolor non nibh pretium porttitor eu netus. Volutpat torquent ferme', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-06-15', 0, '41:19', 2, 2, 92),
(1548, 'The Dreamer\'s Flame', 'Dolor amet non placerat leo suspendisse semper proin arcu libero aptent per netus. Elit sapien ligula. Egestas viverra vitae lobortis varius proin orn', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-05-31', 0, '21:35', 2, 3, 92),
(1549, 'The Dreamer\'s Flame', 'Metus facilisis suspendisse phasellus convallis ultricies euismod eget himenaeos neque laoreet netus nisl, sit elit erat fusce primis orci eget pretiu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-12-18', 0, '28:56', 2, 4, 92),
(1550, 'Grey Sparks', 'Velit integer lacinia suspendisse eleifend faucibus augue sollicitudin pretium arcu class. In mollis est purus massa gravida. Erat integer nec proin t', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-02-20', 0, '20:46', 2, 5, 92),
(1551, 'The Tale\'s Door', 'Eleifend pulvinar molestie imperdiet morbi. Lorem sit elit dictum nulla pulvinar tortor ultrices varius ante hac ullamcorper senectus. Dolor at maecen', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-05-11', 0, '20:24', 2, 6, 92),
(1552, 'Voyager in the Lord', 'Consectetur dictum at maecenas leo ex tempus lectus aptent turpis sodales ullamcorper fames. Egestas justo leo suspendisse ex felis hendrerit augue pe', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-03-17', 0, '29:49', 2, 7, 92),
(1553, 'Seventh Fire', 'Lorem elit dictum metus nunc felis ante proin pharetra vulputate torquent suscipit ullamcorper, lorem at feugiat quisque tortor dapibus quam donec, el', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2019-03-21', 0, '21:58', 3, 1, 92),
(1554, 'The Dwindling Voyage', 'Sed lacinia fringilla hac commodo vel neque elementum, non vestibulum metus integer auctor ex fusce ante ultricies hendrerit condimentum sagittis elem', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2019-01-22', 0, '38:53', 3, 2, 92),
(1555, 'Grey Sparks', 'Dictum sed malesuada erat quisque ex augue dapibus conubia bibendum netus. Consectetur vitae molestie ante orci et pretium platea inceptos enim elemen', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-03-08', 0, '27:52', 3, 3, 92),
(1556, 'Shard of Dragon', 'Amet praesent interdum viverra nibh ligula quisque hendrerit quam hac himenaeos ullamcorper risus netus aenean. Dictum at leo ante maximus, viverra ni', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-05-27', 0, '43:52', 3, 4, 92),
(1557, 'Sliver in the Weeping', 'Ultrices molestie et ad conubia congue dignissim netus. Adipiscing erat viverra fringilla turpis magna curabitur diam nam. Erat mauris nisi phasellus ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-07-07', 0, '34:24', 3, 5, 92),
(1558, 'Voyager in the Lord', 'Amet at id facilisis ac tortor massa sollicitudin dictumst fermentum enim potenti cras. Ipsum mattis luctus nibh suspendisse tempor ornare himenaeos o', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-01-02', 0, '37:32', 3, 6, 92),
(1559, 'The Women of the Roses', 'Elit quisque molestie purus cursus consequat efficitur porta odio diam, etiam quisque semper auctor convallis fringilla varius ante primis dapibus ege', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-12-31', 0, '47:33', 3, 7, 92),
(1560, 'Some Sliver', 'Id volutpat mollis felis urna hac curabitur laoreet iaculis. Nec nisi phasellus urna taciti conubia duis aliquet. Praesent at mauris lacinia purus ege', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-04-23', 0, '30:54', 4, 1, 92),
(1561, 'Burning Something', 'Dictum condimentum vivamus porta tristique, non facilisis tellus nostra himenaeos turpis suscipit nam. Ipsum finibus leo pharetra habitant. Cursus fri', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-08-24', 0, '47:27', 4, 2, 92),
(1562, 'The Licking Flowers', 'Sapien etiam maecenas integer suspendisse quis fringilla primis orci commodo torquent curabitur elementum vehicula imperdiet. Felis commodo conubia. C', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-12-24', 0, '37:21', 4, 3, 92),
(1563, 'The Danger\'s Flight', 'Praesent integer molestie primis, dictum non sapien vestibulum nunc tempor cursus hendrerit eget habitasse lectus sociosqu litora senectus. Ac eleifen', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-03-09', 0, '30:17', 4, 4, 92),
(1564, 'The Force of the Silence', 'Mattis justo lobortis ultrices molestie ex posuere platea taciti vehicula eros. Placerat convallis cursus sollicitudin dui nam morbi. Velit tempor ant', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2004-10-05', 0, '50:32', 4, 5, 92),
(1565, 'Obsession in the Spark', 'Consectetur interdum mi sed placerat etiam vitae eleifend cursus efficitur ad morbi. Elit interdum mi erat suspendisse semper posuere eget ad porta se', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-05-09', 0, '27:13', 4, 6, 92),
(1566, 'Seventh Fire', 'Sapien metus integer pulvinar massa pretium urna porttitor libero inceptos accumsan laoreet ullamcorper dignissim nisl. Etiam ac nec venenatis faucibu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-03-24', 0, '36:46', 4, 7, 92);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1567, 'Some Sliver', 'Consectetur id semper aliquam proin vivamus conubia turpis, erat vitae a ligula phasellus cursus dapibus eget tempus platea conubia duis, sit lacus ni', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-05-17', 0, '29:15', 5, 1, 92),
(1568, 'Birch of Trainer', 'Convallis posuere hendrerit sollicitudin conubia ullamcorper fames. Egestas maecenas venenatis urna conubia suscipit. Dolor volutpat feugiat venenatis', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-02-24', 0, '20:22', 5, 2, 92),
(1569, 'Sliver in the Weeping', 'Lobortis ac semper scelerisque molestie cursus varius sollicitudin gravida libero laoreet diam, nulla venenatis nisi massa sollicitudin pretium vulput', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-09-15', 0, '49:55', 5, 3, 92),
(1570, 'Birch of Trainer', 'Consectetur quis massa fringilla euismod vulputate. Malesuada id mauris quisque auctor tortor mollis nisi faucibus porttitor neque duis diam imperdiet', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-07-15', 0, '41:38', 5, 4, 92),
(1571, 'The Danger\'s Flight', 'Mi lacus integer ante proin gravida per eros iaculis. Cursus curae augue imperdiet. Malesuada finibus metus a nec aliquam faucibus arcu quam platea di', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-11-13', 0, '39:50', 5, 5, 92),
(1572, 'Silver Twilight', 'Sed facilisis nunc proin imperdiet, sapien mollis purus primis et augue vulputate eu litora magna accumsan bibendum elementum. Amet consectetur eleife', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-11-13', 0, '38:28', 5, 6, 92),
(1573, 'Silver Twilight', 'Dolor at finibus leo phasellus dapibus platea dui nostra donec imperdiet tristique cras. Dictum non finibus lacinia platea. Non in mattis lacinia elei', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-08-13', 0, '37:21', 5, 7, 92),
(1574, 'The Danger\'s Flight', 'Ipsum sit placerat mollis fringilla hac commodo vivamus inceptos blandit sem. Interdum finibus mattis vitae metus molestie sollicitudin euismod urna t', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-11-09', 0, '23:13', 1, 1, 93),
(1575, 'The Dwindling Voyage', 'Vestibulum mauris tincidunt ut scelerisque felis fringilla tempus habitasse gravida lectus libero class aliquet morbi. Adipiscing dictum velit volutpa', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-04-30', 0, '39:26', 1, 2, 93),
(1576, 'Sliver in the Weeping', 'Non id quisque tempor purus et ultricies pretium consequat conubia enim elementum imperdiet cras aenean, lorem elit sed placerat nibh ut ultricies dap', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-08-25', 0, '31:45', 1, 3, 93),
(1577, 'Light in the Mage', 'Id ultrices dictumst magna. Luctus ante odio blandit neque suscipit, elit justo quis nisi faucibus primis dapibus habitasse dictumst maximus himenaeos', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-01-15', 0, '49:37', 1, 4, 93),
(1578, 'The Dwindling Voyage', 'Egestas lacus nibh nullam tempus turpis risus habitant. Interdum sapien malesuada velit nec ante proin bibendum. Ipsum amet lacus tellus efficitur don', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-10-04', 0, '33:33', 1, 5, 93),
(1579, 'Some Sliver', 'Malesuada facilisis tellus convallis curae sollicitudin condimentum tempus. Nulla malesuada ac eleifend est faucibus cubilia proin vulputate hac maxim', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-11-06', 0, '35:27', 1, 6, 93),
(1580, 'The Dreamer\'s Flame', 'Praesent malesuada viverra tincidunt ac ultrices dapibus gravida dui vivamus maximus aptent torquent netus iaculis, etiam luctus scelerisque quis nisi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-09-13', 0, '38:16', 1, 7, 93),
(1581, 'The Licking Flowers', 'Consectetur in id maecenas vestibulum nunc faucibus ornare eget libero torquent nostra suscipit netus, dictum faucibus augue dictumst cras. Lorem dict', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-09-10', 0, '39:40', 1, 8, 93),
(1582, 'The Licking Flowers', 'Placerat justo eleifend pulvinar tellus lectus morbi. Nulla velit vestibulum suspendisse eleifend nunc quis orci gravida vel fames, mattis volutpat ni', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-06-22', 0, '48:51', 1, 9, 93),
(1583, 'The Dreamer\'s Flame', 'Velit suspendisse purus cubilia sollicitudin condimentum habitasse taciti donec magna cras. A integer commodo inceptos himenaeos. Adipiscing justo vit', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-08-22', 0, '49:18', 1, 10, 93),
(1584, 'Grey Sparks', 'Consectetur justo vestibulum nec convallis torquent himenaeos blandit. Nibh integer pulvinar elementum. Sit consectetur scelerisque venenatis fringill', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-12-24', 0, '45:10', 1, 11, 93),
(1585, 'Shard of Dragon', 'Adipiscing viverra maecenas molestie fusce felis quam habitasse vivamus libero litora inceptos congue neque cras, sit placerat maecenas justo mauris t', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-05-23', 0, '35:45', 2, 1, 93),
(1586, 'Flames of Dreams', 'Consectetur egestas vestibulum porta. Dictum mattis nec quisque auctor varius dui lectus per nostra blandit diam. Non nulla ac nunc tellus cursus fusc', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2018-02-03', 0, '29:52', 2, 2, 93),
(1587, 'The Tale\'s Door', 'Elit metus a integer phasellus faucibus proin gravida litora morbi iaculis. Interdum felis condimentum conubia accumsan suscipit aliquet. Praesent nul', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-10-31', 0, '44:47', 2, 3, 93),
(1588, 'The Dreamer\'s Flame', 'Dictum placerat velit nibh auctor orci porttitor class per fermentum nam morbi. Nulla sed malesuada dapibus commodo maximus pellentesque aptent blandi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-04-06', 0, '28:38', 2, 4, 93),
(1589, 'The Licking Flowers', 'Nullam dictumst aptent. Lorem ipsum finibus eleifend orci posuere proin urna, mattis ligula aliquam orci posuere torquent turpis enim bibendum tristiq', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-02-28', 0, '27:37', 2, 5, 93),
(1590, 'The Female of the Twins', 'Interdum hac gravida diam, praesent lacus placerat integer tortor primis hendrerit habitant tristique senectus netus. Ipsum dolor interdum egestas lac', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-07-26', 0, '40:59', 2, 6, 93),
(1591, 'The Licking Flowers', 'Justo pulvinar ex fringilla augue pharetra sollicitudin euismod habitasse magna bibendum elementum nisl. Platea eu aptent senectus. Consectetur nibh n', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-06-02', 44, '26:41', 2, 7, 93),
(1592, 'Obsession in the Spark', 'Quis fusce eu curabitur potenti ullamcorper senectus. Gravida inceptos diam, consectetur urna dictumst vivamus dignissim morbi. Viverra justo tincidun', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-08-26', 0, '46:18', 2, 8, 93),
(1593, 'Name of Elves', 'Nulla semper odio, maecenas leo bibendum. Consectetur volutpat auctor quis fusce ante pretium urna commodo nostra. Elit viverra luctus ac faucibus pro', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-04-08', 0, '40:10', 2, 9, 93),
(1594, 'The Licking Flowers', 'Praesent vitae leo tincidunt fusce augue pharetra enim suscipit habitant cras, lacus velit integer mollis nisi felis nostra diam risus aliquet. Felis ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-10-24', 0, '20:28', 2, 10, 93),
(1595, 'Voyager in the Lord', 'Sed vitae hendrerit, finibus ac auctor porttitor. Sit egestas auctor tempor tellus purus litora accumsan aliquet. Lorem sed mattis mollis euismod vulp', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-08-29', 0, '45:11', 2, 11, 93),
(1596, 'Voyager in the Lord', 'Consectetur non at vitae a efficitur congue, lacus placerat metus mollis et urna sagittis cras. Pulvinar est tempor proin torquent suscipit nam. Nulla', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-01-28', 0, '22:51', 3, 1, 93),
(1597, 'The Shadowy Death', 'Eleifend auctor purus arcu dui vel duis netus. Viverra nisi orci ornare pharetra turpis curabitur. Consectetur lacinia ut purus nullam euismod eu lito', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-06-01', 0, '48:22', 3, 2, 93),
(1598, 'The Tale\'s Door', 'Metus tincidunt lacinia aliquam donec odio sem, viverra vestibulum nibh aliquam convallis fringilla curae pretium vivamus libero vel himenaeos ferment', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-11-19', 0, '42:58', 3, 3, 93),
(1599, 'The Danger\'s Flight', 'Eleifend cursus pretium lectus conubia, velit finibus ac mollis urna gravida eu commodo libero himenaeos porta rhoncus aliquet, nulla velit feugiat co', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-08-03', 0, '48:39', 3, 4, 93),
(1600, 'Birch of Trainer', 'Elit finibus viverra posuere porttitor quam conubia curabitur suscipit tristique senectus cras. Lorem consectetur velit nibh integer semper aliquam sa', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-12-23', 0, '37:55', 3, 5, 93),
(1601, 'Name of Elves', 'Tempor efficitur duis iaculis, ipsum amet nulla lobortis integer mollis tellus fusce fringilla ultricies platea. Sit elit in sed placerat ut purus cur', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-06-17', 0, '30:38', 3, 6, 93),
(1602, 'The Women of the Roses', 'Amet volutpat ligula convallis condimentum fames. Consectetur elit mi leo nibh ligula eleifend auctor hendrerit dapibus vivamus sociosqu suscipit. Sed', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-07-05', 0, '46:48', 3, 7, 93),
(1603, 'Burning Something', 'Mollis fusce primis curae hendrerit augue vulputate torquent fermentum cras. Erat est faucibus libero. Placerat tempor molestie curae eget sem, vitae ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-05-31', 0, '25:32', 3, 8, 93),
(1604, 'The Licking Flowers', 'Dolor maecenas euismod nostra porta nisl cras, lorem quisque auctor purus imperdiet. Dictum malesuada at etiam nec mollis scelerisque cursus proin ult', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-08-22', 0, '28:36', 3, 9, 93),
(1605, 'Shard of Dragon', 'Egestas nulla placerat mattis eget platea maximus suscipit senectus. Amet sapien malesuada etiam finibus lobortis proin hendrerit euismod conubia turp', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-03-29', 0, '42:20', 3, 10, 93),
(1606, 'The Dwindling Voyage', 'Sit dictum malesuada at vitae leo massa euismod urna sagittis rhoncus sem. At justo integer nec fusce varius primis posuere dapibus libero maximus dia', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-09-21', 0, '35:41', 3, 11, 93),
(1607, 'The Dwindling Voyage', 'Elit dictum non velit tincidunt integer fusce et ornare vel magna senectus. Dolor dictum at tempor quis massa fusce urna eu nostra himenaeos sodales n', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-11-17', 0, '43:24', 4, 1, 93),
(1608, 'Sliver in the Weeping', 'Maecenas integer aliquam molestie cursus dapibus hac sociosqu donec tristique, praesent mi luctus nibh quisque primis proin habitasse lectus libero ap', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-08-06', 0, '48:52', 4, 2, 93),
(1609, 'The Tale\'s Door', 'Dolor sit egestas sapien viverra mattis facilisis dapibus euismod quam donec accumsan. Interdum erat lobortis tempor nisi ornare dapibus lectus aptent', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-11-09', 0, '20:26', 4, 3, 93),
(1610, 'The Tale\'s Door', 'Amet lacus justo facilisis nec semper ex faucibus consequat sagittis aptent per magna habitant tristique. Ac nec pulvinar semper nisi ex fringilla eni', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-08-24', 0, '42:37', 4, 4, 93),
(1611, 'Sliver in the Weeping', 'Nulla placerat at varius primis posuere ultricies sollicitudin enim potenti eros habitant aenean. Consectetur praesent etiam ligula pulvinar fusce gra', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-05-01', 0, '41:48', 4, 5, 93),
(1612, 'Obsession in the Spark', 'Malesuada ultrices curae habitasse commodo, at ac tortor. Ipsum id maecenas eleifend phasellus condimentum eu vel aptent sodales morbi. Non facilisis ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-03-22', 0, '34:52', 4, 6, 93),
(1613, 'Sliver in the Weeping', 'Egestas vitae leo nec cubilia taciti. Viverra vestibulum venenatis augue dapibus pretium porttitor habitasse gravida vel inceptos fermentum congue bib', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-11-25', 0, '23:41', 4, 7, 93),
(1614, 'Voyager in the Lord', 'Elit maecenas vestibulum nec massa et cubilia pellentesque turpis enim, dolor lacus sapien viverra maecenas luctus semper tellus ex efficitur conubia ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-01-19', 0, '36:21', 4, 8, 93),
(1615, 'The Tale\'s Door', 'Amet velit viverra integer pulvinar auctor tortor scelerisque fringilla primis sollicitudin gravida vel imperdiet, sed viverra luctus tincidunt faucib', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-11-23', 0, '35:54', 4, 9, 93),
(1616, 'Shard of Dragon', 'Amet dictum non risus netus, lorem at convallis primis posuere pretium arcu habitasse blandit neque. Interdum proin urna magna cras, dolor ultrices te', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-06-06', 0, '33:18', 4, 10, 93),
(1617, 'The Licking Flowers', 'Dictum sapien vitae molestie faucibus et quam vel efficitur ad himenaeos magna enim rhoncus cras. Ipsum dolor molestie et curae nullam gravida bibendu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2000-05-17', 0, '38:13', 4, 11, 93),
(1618, 'Voyager in the Lord', 'Auctor tempor curae. Consectetur praesent malesuada lobortis luctus leo suspendisse nec cursus ornare laoreet cras. Adipiscing volutpat ante orci phar', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-12-09', 0, '22:29', 5, 1, 93),
(1619, 'The Women of the Roses', 'Augue consequat turpis duis senectus. Enim duis nam morbi iaculis, viverra justo vitae luctus nibh nullam lectus elementum dignissim. Dolor nibh facil', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-07-31', 0, '23:40', 5, 2, 93),
(1620, 'The Female of the Twins', 'Amet elit in viverra justo vestibulum pulvinar orci habitasse platea fames. Dolor non id vestibulum nibh ultrices ornare pretium eu libero magna eleme', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-03-23', 0, '34:48', 5, 3, 93),
(1621, 'Name of Elves', 'Mi viverra mollis tempor purus et ornare consequat hac pellentesque himenaeos sodales morbi. Leo facilisis nunc mollis consequat donec, praesent inter', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-07-05', 0, '41:51', 5, 4, 93),
(1622, 'Flames of Dreams', 'Dolor sed maecenas phasellus posuere proin odio rhoncus congue. Facilisis nec semper faucibus ornare nullam. Ipsum sapien fusce pretium quam gravida e', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-05-04', 0, '46:57', 5, 5, 93),
(1623, 'The Tale\'s Door', 'Tempor scelerisque fringilla et dapibus pretium porttitor tempus habitasse aptent magna porta duis elementum. Egestas mattis pulvinar posuere tempus. ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-11-09', 0, '23:25', 5, 6, 93),
(1624, 'Seventh Fire', 'Lorem ultrices aliquam urna arcu habitasse vel maximus aptent rhoncus vehicula dignissim. In leo lacinia suspendisse mollis et curae pharetra pellente', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-03-18', 0, '22:36', 5, 7, 93),
(1625, 'Obsession in the Spark', 'Lorem in velit feugiat tincidunt mollis venenatis ultrices cursus massa curae hac pellentesque duis elementum, velit tincidunt nec auctor felis cubili', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-11-07', 0, '45:12', 5, 8, 93),
(1626, 'The Force of the Silence', 'Id mauris mollis phasellus ultricies commodo fermentum sodales laoreet, mi mattis justo a quisque venenatis molestie hendrerit inceptos donec enim ero', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2009-05-25', 0, '49:29', 5, 9, 93),
(1627, 'The Women of the Roses', 'Interdum velit nibh faucibus maximus vehicula eros, malesuada justo integer faucibus eget porttitor aliquet, malesuada mattis aliquam varius eget grav', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2017-01-30', 0, '28:22', 5, 10, 93),
(1628, 'The Female of the Twins', 'Lorem adipiscing sapien volutpat ac pulvinar arcu consequat aptent fermentum vehicula. Malesuada finibus justo integer suspendisse nec tortor phasellu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-10-20', 0, '21:18', 5, 11, 93),
(1629, 'Obsession in the Spark', 'Erat feugiat nibh integer pulvinar ut scelerisque primis pharetra pellentesque inceptos odio morbi, dolor etiam viverra nibh suspendisse ut fusce frin', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-12-02', 0, '28:40', 6, 1, 93),
(1630, 'Burning Something', 'Sit consectetur dictum etiam nibh quisque aliquam fusce augue habitasse inceptos odio congue. Amet erat cursus felis euismod dictumst commodo curabitu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-01-25', 0, '27:47', 6, 2, 93),
(1631, 'The Female of the Twins', 'Praesent non egestas lobortis curae nostra donec. Lorem egestas in sed placerat molestie hendrerit class per odio accumsan bibendum laoreet elementum ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-10-16', 0, '24:34', 6, 3, 93),
(1632, 'The Women of the Roses', 'Mi justo nec pharetra vivamus litora inceptos sodales netus cras. Egestas maecenas lobortis fusce varius primis vel class litora nostra enim laoreet e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-02-23', 0, '35:57', 6, 4, 93),
(1633, 'The Female of the Twins', 'Eleifend nisi cursus massa, elit nulla at id venenatis vivamus conubia rhoncus habitant netus, ligula dapibus himenaeos imperdiet. In nisi felis dapib', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-07-28', 0, '35:17', 6, 5, 93),
(1634, 'The Danger\'s Flight', 'Velit metus lobortis varius dapibus elementum diam, etiam leo tincidunt nunc nec tempor habitasse enim sem, lacinia cubilia eget porta dignissim iacul', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-04-16', 0, '46:52', 6, 6, 93),
(1635, 'Birch of Trainer', 'Mauris feugiat orci dapibus nullam arcu porttitor dictumst dui pellentesque porta, tincidunt ut est convallis fringilla vulputate libero pellentesque ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-01-16', 0, '23:23', 6, 7, 93),
(1636, 'The Dwindling Voyage', 'Placerat tortor cubilia arcu congue suscipit eros, metus a quisque venenatis porttitor odio nam aliquet. Id lacinia nunc tellus orci hac class ferment', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-08-01', 0, '36:11', 6, 8, 93),
(1637, 'Name of Elves', 'Mi velit luctus nunc ut cursus pharetra enim ullamcorper. Amet non egestas erat mauris ligula pulvinar class torquent himenaeos fermentum risus habita', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2018-06-23', 0, '33:45', 6, 9, 93),
(1638, 'Grey Sparks', 'In suspendisse pulvinar gravida odio duis diam aenean. Non sapien etiam faucibus. Luctus lacinia semper scelerisque aliquam ex arcu sagittis aptent so', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-07-12', 0, '22:12', 6, 10, 93),
(1639, 'Seventh Fire', 'Praesent in erat cubilia pellentesque curabitur accumsan. Amet dictum mi scelerisque convallis dapibus arcu porta rhoncus suscipit nisl aenean. Egesta', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-09-19', 0, '24:55', 6, 11, 93),
(1640, 'The Women of the Roses', 'Placerat leo est ultricies ornare magna neque, quis aliquam convallis. Amet etiam eleifend pharetra quam nostra fermentum bibendum morbi nisl. Vestibu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-08-10', 0, '33:47', 7, 1, 93),
(1641, 'Birch of Trainer', 'Lacinia venenatis tellus nisi convallis felis faucibus ornare pharetra pellentesque curabitur sem. Ligula aliquam eget dignissim morbi nisl, non lacus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-02-02', 0, '24:48', 7, 2, 93),
(1642, 'Burning Something', 'Adipiscing mollis tellus cursus sollicitudin dictumst eu libero sociosqu inceptos bibendum vehicula. Viverra fringilla maximus netus, sit consectetur ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-02-27', 0, '28:19', 7, 3, 93),
(1643, 'Shard of Dragon', 'Consectetur in sed volutpat justo ligula nec auctor ante libero fermentum diam nam fames, viverra leo mollis pharetra nullam magna porta accumsan bibe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2014-04-09', 0, '34:59', 7, 4, 93),
(1644, 'Flames of Dreams', 'Non mattis lacinia ac semper orci efficitur diam habitant senectus. Ipsum vestibulum nibh ultrices cursus ex porta laoreet morbi cras, lorem amet sed ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-11-20', 0, '24:56', 7, 5, 93),
(1645, 'Sliver in the Weeping', 'Etiam vulputate aptent. Leo molestie porttitor eu vivamus per conubia vehicula dignissim nisl. Dolor nulla finibus nisi felis et urna eu odio aliquet ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-12-25', 0, '32:49', 7, 6, 93),
(1646, 'The Dwindling Voyage', 'Mi in tempor tellus cubilia euismod pretium efficitur enim rhoncus blandit bibendum aliquet iaculis, praesent interdum malesuada vitae feugiat a facil', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-04-22', 0, '24:54', 7, 7, 93),
(1647, 'The Dwindling Voyage', 'Erat id maecenas nisi nostra magna morbi. Praesent placerat vitae facilisis suspendisse auctor iaculis. Non erat vestibulum lobortis ac molestie purus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-06-03', 0, '20:39', 7, 8, 93),
(1648, 'Obsession in the Spark', 'Sed placerat luctus fermentum. Egestas finibus suspendisse felis hendrerit platea inceptos enim. Lacus at nisi convallis efficitur accumsan. Placerat ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-04-03', 0, '47:53', 7, 9, 93),
(1649, 'Light in the Mage', 'Sed id velit vitae nibh quisque ultrices nisi ante augue commodo ullamcorper tristique, aliquam taciti litora elementum vehicula sem cras aenean. Elit', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-07-15', 0, '45:28', 7, 10, 93),
(1650, 'The Shadowy Death', 'Placerat imperdiet ullamcorper iaculis. Lorem ipsum leo eleifend pharetra quam libero vel curabitur accumsan tristique netus, vitae nec urna, erat viv', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-06-09', 0, '48:45', 7, 11, 93),
(1651, 'Birch of Trainer', 'Mi vitae massa felis faucibus cubilia ultricies commodo litora rhoncus sodales tristique, lacus pulvinar varius eget. Maecenas ut himenaeos habitant, ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-08-13', 0, '32:43', 1, 1, 94),
(1652, 'Light in the Mage', 'Praesent et vel congue. Sapien justo nostra, ipsum luctus dapibus pellentesque rhoncus potenti. Amet sapien maecenas justo feugiat urna dui per suscip', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-11-28', 0, '35:13', 1, 2, 94),
(1653, 'Flames of Dreams', 'Mauris cursus faucibus taciti fermentum congue neque. Facilisis condimentum donec, semper orci porttitor, dolor malesuada justo integer eleifend fusce', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-01-14', 0, '38:38', 1, 3, 94),
(1654, 'The Shadowy Death', 'Faucibus varius ultricies pharetra vivamus conubia blandit eros risus aliquet. Luctus ligula venenatis faucibus sollicitudin pellentesque taciti. Cons', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-10-21', 0, '39:36', 1, 4, 94),
(1655, 'Name of Elves', 'Mi malesuada vestibulum leo convallis primis curae turpis. Non quis phasellus cursus habitant fames. Non maecenas justo metus lacinia ligula quis ex c', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-02-18', 0, '39:45', 1, 5, 94),
(1656, 'The Female of the Twins', 'Quisque mollis est aliquam fringilla eu vel enim duis, sit placerat malesuada eu pellentesque donec accumsan laoreet aliquet iaculis. Dictum sed facil', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-01-15', 0, '27:13', 1, 6, 94),
(1657, 'The Dwindling Voyage', 'Ipsum mattis feugiat convallis pretium turpis diam cras, at metus eu, integer faucibus euismod vel taciti inceptos sodales laoreet ullamcorper. Mattis', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-01-22', 0, '39:57', 1, 7, 94),
(1658, 'Name of Elves', 'Vestibulum leo scelerisque cursus quam gravida enim vehicula. Amet interdum maecenas integer facilisis commodo per himenaeos aliquet tristique iaculis', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-05-16', 0, '50:26', 1, 8, 94),
(1659, 'The Licking Flowers', 'Non egestas justo lobortis leo tortor fusce eu torquent accumsan bibendum eros. Velit libero ad vehicula risus. Nulla velit suspendisse ultrices moles', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-07-26', 0, '50:17', 1, 9, 94),
(1660, 'Silver Twilight', 'Leo suspendisse euismod vel morbi. Amet non placerat, dictum vestibulum posuere taciti torquent morbi, pulvinar nisi purus fringilla et pharetra vulpu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-08-16', 0, '50:53', 1, 10, 94),
(1661, 'The Licking Flowers', 'Leo venenatis cursus pretium, elit malesuada nisi massa varius posuere pharetra vulputate tempus maximus nostra himenaeos eros sem netus. Consectetur ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-06-16', 0, '28:10', 2, 1, 94),
(1662, 'Obsession in the Spark', 'Placerat ligula eleifend scelerisque commodo torquent conubia nostra enim, feugiat ac auctor sodales. Dolor nec est molestie felis dui ullamcorper. Pr', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-05-14', 0, '42:45', 2, 2, 94),
(1663, 'The Tale\'s Door', 'Id justo lobortis luctus integer ultrices aliquam orci euismod inceptos turpis rhoncus bibendum aliquet senectus, egestas erat justo lobortis tortor t', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-06-20', 0, '49:36', 2, 3, 94),
(1664, 'Burning Something', 'Amet eleifend est pharetra class himenaeos, mauris lacinia quisque varius ornare maximus conubia. Lorem elit vestibulum feugiat faucibus ultricies hac', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-08-16', 0, '27:21', 2, 4, 94),
(1665, 'Obsession in the Spark', 'Elit erat mauris. Elit non etiam velit metus felis varius primis conubia turpis nam risus aliquet. Ipsum leo a nec ex efficitur torquent nostra porta.', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-07-15', 0, '32:27', 2, 5, 94),
(1666, 'The Danger\'s Flight', 'Feugiat quisque fermentum rhoncus sodales morbi. Finibus ac curae arcu vivamus pellentesque ad suscipit nam aliquet iaculis aenean. Nisi convallis pha', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-08-20', 0, '26:16', 2, 6, 94),
(1667, 'Voyager in the Lord', 'Lorem dolor placerat volutpat lobortis leo quisque sollicitudin enim blandit neque bibendum fames, non a porttitor tempus dictumst efficitur rhoncus p', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-10-11', 0, '50:44', 2, 7, 94),
(1668, 'Flames of Dreams', 'Interdum lobortis tincidunt ligula est molestie libero class per duis bibendum. Ipsum dolor amet praesent egestas placerat ac quam vivamus torquent fe', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-01-03', 0, '35:53', 2, 8, 94),
(1669, 'Light in the Mage', 'Nunc platea nam tristique. Nulla lacus at viverra mattis luctus tempor purus varius sollicitudin lectus vel sem senectus, placerat ut auctor fusce nul', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-08-01', 0, '41:57', 2, 9, 94),
(1670, 'Seventh Fire', 'Lorem lacus mattis tincidunt facilisis pulvinar orci habitasse dui porta. Lobortis eleifend pulvinar tempor phasellus molestie euismod dictumst himena', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-10-17', 0, '22:23', 2, 10, 94),
(1671, 'The Women of the Roses', 'Vestibulum tincidunt euismod vel taciti potenti elementum, ipsum sit in sed erat etiam auctor tempor et hendrerit platea commodo class potenti. Mattis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-05-12', 0, '40:11', 3, 1, 94),
(1672, 'The Licking Flowers', 'Dictum non maecenas tincidunt est ante ultricies torquent turpis donec enim cras. Lorem elit viverra volutpat vitae leo potenti. Cursus condimentum di', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-12-13', 0, '38:32', 3, 2, 94),
(1673, 'The Tale\'s Door', 'Ligula sollicitudin efficitur conubia. Massa fusce felis eget pretium aenean, auctor eget libero aenean. Mi sed sapien lobortis integer facilisis laci', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-12-28', 0, '39:46', 3, 3, 94),
(1674, 'Name of Elves', 'At lobortis est ante arcu hac taciti porta suscipit eros, sed erat lobortis nibh integer ac ultrices varius habitasse taciti congue, sapien maecenas e', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-03-14', 0, '25:24', 3, 4, 94),
(1675, 'Birch of Trainer', 'At id finibus lobortis sollicitudin urna libero duis, egestas maecenas volutpat ultrices purus quam tempus commodo lectus risus tristique senectus. Vi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-05-09', 0, '25:11', 3, 5, 94),
(1676, 'Seventh Fire', 'Lacus volutpat ac habitant. Lorem dictum egestas at maecenas vestibulum eleifend quis condimentum consequat sagittis accumsan. Felis vulputate condime', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-01-31', 0, '21:27', 3, 6, 94),
(1677, 'The Women of the Roses', 'Ipsum metus luctus feugiat nibh integer est phasellus condimentum odio iaculis, dictum integer augue vivamus enim. Dictum erat pulvinar tortor faucibu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-06-16', 0, '27:15', 3, 7, 94),
(1678, 'The Danger\'s Flight', 'Adipiscing interdum erat maecenas facilisis ut tellus curae vulputate porttitor quam neque sem aliquet netus. Sapien malesuada at erat mattis lobortis', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-08-16', 0, '35:37', 3, 8, 94),
(1679, 'The Dreamer\'s Flame', 'Egestas etiam venenatis phasellus cursus pharetra urna libero blandit ullamcorper morbi, metus hendrerit nullam quam morbi fames, maecenas himenaeos p', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-09-16', 0, '36:25', 3, 9, 94),
(1680, 'Voyager in the Lord', 'Sapien at id facilisis ac nec venenatis massa tempus nostra aliquet. Lobortis sollicitudin sagittis conubia, lacus tincidunt auctor ornare dictumst le', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-06-15', 0, '38:12', 3, 10, 94),
(1681, 'Light in the Mage', 'Erat luctus orci vel efficitur aptent sociosqu inceptos laoreet suscipit. Sit placerat faucibus tempus duis vehicula, lacinia tortor ante tempus tacit', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-12-21', 0, '40:25', 4, 1, 94),
(1682, 'The Licking Flowers', 'Etiam a pulvinar ultricies magna sem. Mattis justo metus et enim sodales senectus. In etiam ac est nisi nullam platea pellentesque sem ullamcorper, eu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-10-31', 0, '25:40', 4, 2, 94),
(1683, 'Shard of Dragon', 'Praesent at nec est platea commodo himenaeos donec rhoncus dignissim nisl iaculis. Mi at leo feugiat primis quam hac eu libero efficitur litora magna ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-07-23', 0, '46:48', 4, 3, 94),
(1684, 'Voyager in the Lord', 'Egestas in leo feugiat ut pharetra pretium consequat potenti neque. Pulvinar ut et pharetra urna habitasse efficitur taciti inceptos vehicula. At lobo', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-09-01', 0, '45:45', 4, 4, 94),
(1685, 'The Tale\'s Door', 'Consectetur nibh integer nunc est ex ultricies sagittis dui sociosqu magna blandit nam risus. Lorem sit adipiscing mi placerat volutpat integer nunc n', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-12-12', 0, '39:26', 4, 5, 94),
(1686, 'Voyager in the Lord', 'Sit quisque nisi molestie class potenti, elit non volutpat fusce vivamus taciti donec vehicula. Sed placerat phasellus ex condimentum dui. Erat dapibu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-07-04', 0, '46:40', 4, 6, 94),
(1687, 'Obsession in the Spark', 'Non viverra vitae lobortis luctus tellus orci tempus conubia curabitur potenti laoreet aliquet habitant tristique. Ac euismod eu magna porta aliquet. ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-03-13', 0, '48:51', 4, 7, 94),
(1688, 'The Dreamer\'s Flame', 'Luctus semper phasellus massa primis ultricies pretium senectus, volutpat luctus primis duis. A facilisis nec porttitor sociosqu odio. Ipsum sed class', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-10-06', 0, '24:59', 4, 8, 94),
(1689, 'Voyager in the Lord', 'Erat leo nisi purus class fermentum congue risus iaculis. Dolor dictum sapien mauris a eleifend tellus lectus libero conubia congue fames. Adipiscing ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-10-10', 0, '32:58', 4, 9, 94),
(1690, 'Birch of Trainer', 'Amet sed placerat justo luctus eleifend nunc et dapibus hac odio rhoncus blandit suscipit senectus, semper aliquam ultricies sollicitudin eget tempus ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-09-01', 0, '46:57', 4, 10, 94),
(1691, 'The Licking Flowers', 'Sit in sapien velit luctus a integer eleifend hendrerit consequat lectus accumsan congue imperdiet. Adipiscing sapien etiam auctor fringilla varius cu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-07-08', 0, '44:49', 5, 1, 94),
(1692, 'The Force of the Silence', 'Mi sed metus tincidunt ex cubilia urna consequat vivamus class magna diam, non erat semper porttitor eu ad risus. Lorem ipsum ut, elit interdum a semp', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-04-29', 0, '25:16', 5, 2, 94),
(1693, 'Name of Elves', 'Etiam viverra volutpat leo ligula est orci nullam ad conubia rhoncus sodales ullamcorper. Ipsum felis orci sollicitudin pellentesque conubia himenaeos', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2008-09-04', 0, '26:16', 5, 3, 94),
(1694, 'The Danger\'s Flight', 'Dictum justo feugiat tempus potenti sem. Amet elit ac nunc nisi varius proin nisl iaculis, praesent mi tincidunt tortor faucibus cubilia eu maximus ma', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-11-05', 0, '49:57', 5, 4, 94),
(1695, 'Grey Sparks', 'Non etiam ac tortor est phasellus convallis ultricies habitasse accumsan morbi. Lorem lacus suspendisse condimentum, placerat et posuere. Lorem sit er', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-03-18', 0, '40:49', 5, 5, 94),
(1696, 'The Danger\'s Flight', 'Nulla in erat mauris primis ornare porttitor sagittis gravida litora inceptos blandit accumsan bibendum habitant. Praesent lacinia eleifend semper ven', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-02-02', 0, '30:48', 5, 6, 94),
(1697, 'Voyager in the Lord', 'Adipiscing praesent semper nullam platea per turpis diam aliquet aenean. Lacus justo tempor ultrices phasellus felis orci pharetra condimentum vel inc', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-08-25', 0, '46:20', 5, 7, 94),
(1698, 'Obsession in the Spark', 'Ipsum finibus tellus vel magna, elit egestas malesuada etiam metus lobortis ac nunc est phasellus eu curabitur elementum tristique, elit malesuada mau', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2000-05-13', 0, '47:26', 5, 8, 94),
(1699, 'Light in the Mage', 'Elit non viverra ac quis ex fusce varius urna hac aptent torquent morbi, ipsum suspendisse arcu sagittis commodo ad per accumsan laoreet eros iaculis.', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-09-22', 0, '23:15', 5, 9, 94),
(1700, 'The Licking Flowers', 'Dolor consectetur maecenas vestibulum tincidunt pulvinar primis pharetra platea dui potenti imperdiet ullamcorper. Nulla sapien quisque fringilla pret', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-08-27', 0, '21:50', 5, 10, 94),
(1701, 'Shard of Dragon', 'Lorem velit feugiat nunc phasellus pharetra dapibus vulputate tempus duis iaculis, dolor nec auctor porttitor. Ipsum fusce varius ante pharetra effici', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-01-06', 0, '40:49', 6, 1, 94),
(1702, 'Voyager in the Lord', 'Praesent ligula nisi purus massa varius nullam, lorem ipsum amet non leo tincidunt mollis convallis et cubilia nostra potenti dignissim aliquet senect', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-02-06', 0, '32:34', 6, 2, 94),
(1703, 'The Danger\'s Flight', 'Varius ornare fermentum, dolor nunc ex massa urna lectus litora congue aliquet. Amet adipiscing leo mollis venenatis quis convallis sollicitudin liber', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2016-01-11', 0, '26:27', 6, 3, 94),
(1704, 'Flames of Dreams', 'Dolor id mauris quisque dictumst aptent torquent. Nulla luctus nibh suspendisse eleifend quisque ut fringilla vulputate libero ad turpis diam, ipsum l', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-05-09', 0, '20:58', 6, 4, 94),
(1705, 'The Shadowy Death', 'Adipiscing nibh nunc felis fringilla proin urna gravida commodo rhoncus habitant, non volutpat leo quisque ut tellus proin arcu hac sagittis fermentum', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-09-06', 0, '27:56', 6, 5, 94),
(1706, 'Grey Sparks', 'Hendrerit euismod aptent enim congue suscipit nisl, adipiscing ligula venenatis convallis faucibus odio, sit elit mi egestas semper aliquam nullam him', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-08-03', 0, '22:35', 6, 6, 94),
(1707, 'Sliver in the Weeping', 'Lorem adipiscing non metus mauris nec mollis consequat libero taciti magna morbi. Nulla vitae cursus tempus vel ad torquent fames. Elit etiam venenati', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-07-20', 0, '24:31', 6, 7, 94),
(1708, 'The Licking Flowers', 'Ligula fusce ad porta. Vestibulum lobortis leo pulvinar tortor mollis est proin condimentum commodo libero ullamcorper dignissim cras. Sit leo ultrice', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-01-30', 0, '36:38', 6, 8, 94),
(1709, 'Burning Something', 'Interdum placerat finibus justo nunc nec tortor primis arcu vel maximus sociosqu morbi netus. Non malesuada etiam finibus feugiat a cubilia nullam qua', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-09-08', 0, '49:21', 6, 9, 94),
(1710, 'Seventh Fire', 'Ipsum interdum metus facilisis nunc tortor convallis pretium taciti neque suscipit. Egestas tellus phasellus cursus gravida lectus eros ullamcorper, n', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2012-08-03', 0, '34:55', 6, 10, 94),
(1711, 'Flames of Dreams', 'Lorem sed phasellus libero diam aliquet. Consectetur mi quisque felis ante primis gravida commodo potenti sodales dignissim nisl iaculis. Elit interdu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-06-16', 0, '48:26', 7, 1, 94),
(1712, 'Flames of Dreams', 'Sapien phasellus convallis ultricies hendrerit ad imperdiet tristique, sit est purus ante enim aliquet. Ipsum praesent tempor tellus massa proin dictu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-05-03', 0, '23:19', 7, 2, 94),
(1713, 'Flames of Dreams', 'Sit scelerisque ornare taciti magna sodales iaculis. Lobortis tincidunt pharetra. Dolor dictum nulla eleifend est vulputate dictumst conubia.', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-05-03', 0, '45:12', 7, 3, 94),
(1714, 'Silver Twilight', 'Faucibus euismod lectus. Egestas malesuada finibus maecenas ante commodo nam habitant. Felis sollicitudin efficitur eros ullamcorper. Lorem egestas pl', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-05-14', 0, '21:23', 7, 4, 94),
(1715, 'The Force of the Silence', 'Elit non a lacinia pulvinar auctor hendrerit ornare nullam dignissim tristique. Lacus volutpat mollis cubilia eu torquent odio duis eros. Metus ligula', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-10-05', 0, '40:25', 7, 5, 94),
(1716, 'Light in the Mage', 'Vitae phasellus ex risus. Praesent non egestas ligula nunc quisque ultrices nullam platea sociosqu ullamcorper cras, erat massa orci eu iaculis. Dolor', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-10-28', 0, '34:26', 7, 6, 94),
(1717, 'Name of Elves', 'Mi velit volutpat nunc cursus fringilla porttitor lectus vivamus vel blandit duis sem. Elit sed malesuada tortor tempor ultrices ante cubilia curae pr', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-03-17', 0, '27:25', 7, 7, 94),
(1718, 'The Dreamer\'s Flame', 'Lacus magna enim nisl. Placerat id luctus lacinia scelerisque euismod quam taciti neque nam. Viverra mollis eu pellentesque, pharetra quam inceptos po', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-07-11', 0, '24:48', 7, 8, 94),
(1719, 'The Women of the Roses', 'Elit malesuada id velit feugiat suspendisse mollis varius ornare eget sagittis eu litora habitant iaculis, at maecenas metus tincidunt ut phasellus an', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-10-15', 0, '49:56', 7, 9, 94),
(1720, 'The Female of the Twins', 'Non lacus velit lacinia nunc venenatis condimentum. Adipiscing sapien auctor congue, lorem erat scelerisque fusce fringilla pharetra euismod quam dict', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-02-10', 0, '28:29', 7, 10, 94),
(1721, 'The Licking Flowers', 'Lorem feugiat phasellus ex ornare gravida vel. Justo luctus integer facilisis quisque auctor dapibus dictumst dui aptent magna accumsan neque suscipit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-03-24', 0, '48:31', 8, 1, 94),
(1722, 'Flames of Dreams', 'Ultrices proin nullam nostra netus. Auctor et ullamcorper. Id viverra dapibus pretium. Interdum pulvinar ut tempor fringilla posuere sagittis potenti ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-05-24', 0, '35:44', 8, 2, 94),
(1723, 'Obsession in the Spark', 'Velit mauris feugiat pulvinar venenatis ex orci dapibus sollicitudin ad curabitur laoreet dignissim. Elit interdum egestas vitae ac ut tortor aliquam ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-01-29', 0, '44:27', 8, 3, 94),
(1724, 'The Female of the Twins', 'Amet interdum mattis mauris leo venenatis quis ornare commodo lectus per blandit accumsan aenean. Mi libero aptent torquent rhoncus. Dolor mollis port', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-07-30', 0, '20:42', 8, 4, 94),
(1725, 'Light in the Mage', 'Malesuada velit viverra purus orci et proin ornare condimentum efficitur taciti blandit fames. Lacinia venenatis lectus fames, sit vitae leo sagittis ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2017-01-25', 0, '39:51', 8, 5, 94),
(1726, 'The Shadowy Death', 'Lorem non lacus eleifend cubilia lectus conubia donec neque iaculis. Sed suspendisse condimentum eu enim iaculis, mi placerat feugiat nibh primis hend', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2012-06-21', 0, '23:55', 8, 6, 94),
(1727, 'Grey Sparks', 'Non ac nec hac vel inceptos fermentum blandit bibendum suscipit. Mi at finibus nunc auctor purus odio. Elit dictum egestas nulla etiam lobortis mauris', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-08-26', 0, '32:33', 8, 7, 94),
(1728, 'The Danger\'s Flight', 'Lacus malesuada finibus tempor porttitor habitasse platea bibendum iaculis. Sed placerat luctus lacinia ac nec ultrices molestie pharetra pellentesque', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-01-20', 0, '42:25', 8, 8, 94),
(1729, 'The Tale\'s Door', 'Dictum at arcu conubia nostra nam, suspendisse quisque convallis pharetra arcu porttitor himenaeos eros. Viverra nibh nisi himenaeos turpis porta cong', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-02-19', 0, '47:56', 8, 9, 94),
(1730, 'Voyager in the Lord', 'Sed at cursus pretium, interdum volutpat nec varius proin habitasse sagittis ad fermentum. Dictum nulla lobortis lacinia nunc auctor proin euismod urn', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-10-07', 0, '24:14', 8, 10, 94),
(1731, 'Some Sliver', 'Mi nulla in malesuada ligula tortor tellus vulputate magna odio accumsan, nisi felis consequat inceptos turpis tristique nisl. Lacus tellus cursus tor', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-11-05', 0, '33:46', 1, 1, 95),
(1732, 'The Dwindling Voyage', 'Dictum malesuada semper purus ex curae ornare litora inceptos himenaeos odio suscipit aliquet. Mi luctus lacinia pellentesque ad diam sem. Tincidunt a', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-07-16', 0, '30:58', 1, 2, 95),
(1733, 'Voyager in the Lord', 'Elit tincidunt varius cubilia consequat tempus turpis sodales, lorem elit erat mauris luctus leo mollis convallis orci pharetra habitasse dictumst tur', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-11-02', 0, '30:12', 1, 3, 95),
(1734, 'Birch of Trainer', 'Elit ligula auctor proin pretium taciti conubia nostra. Sapien justo augue dapibus, amet adipiscing lacus at luctus lacinia tempor phasellus massa var', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2007-03-31', 0, '48:54', 1, 4, 95),
(1735, 'Some Sliver', 'Dictum egestas in id lobortis nec mollis conubia nostra aliquet cras. Ipsum fringilla accumsan, suspendisse consequat lectus taciti neque. Vitae moles', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-05-08', 0, '44:59', 1, 5, 95),
(1736, 'Seventh Fire', 'Volutpat metus ligula mollis orci cubilia augue nullam urna pellentesque efficitur magna diam aliquet. Lorem sapien molestie fusce fringilla varius, n', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-10-01', 0, '42:26', 1, 6, 95),
(1737, 'Burning Something', 'Lorem adipiscing praesent sapien convallis ante posuere lectus nisl. Adipiscing sed at ligula suspendisse eleifend tellus ad morbi, dolor mi mattis ju', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-10-02', 0, '25:40', 1, 7, 95),
(1738, 'Sliver in the Weeping', 'Amet adipiscing praesent ac semper netus. Dolor ligula nec quisque ultrices urna gravida maximus blandit neque laoreet sem risus morbi netus. Consecte', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-06-28', 0, '42:11', 1, 8, 95),
(1739, 'Birch of Trainer', 'Etiam vestibulum ut proin sollicitudin euismod urna quam dui congue senectus. Vestibulum lacinia ex faucibus sagittis turpis rhoncus vehicula nam. Pra', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-11-29', 0, '24:32', 1, 9, 95),
(1740, 'The Shadowy Death', 'A tempor ante vel ad enim sem aliquet. Nibh suspendisse eleifend varius donec. Id tincidunt suspendisse scelerisque et sollicitudin dui pellentesque e', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-03-20', 0, '21:30', 2, 1, 95),
(1741, 'Burning Something', 'Semper augue euismod arcu hac aptent litora porta aenean, lorem augue habitasse dui turpis congue neque. Tincidunt tortor est venenatis molestie curae', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-02-26', 0, '50:58', 2, 2, 95),
(1742, 'Sliver in the Weeping', 'Elit interdum id volutpat integer ligula quis tellus porttitor sagittis vel duis ullamcorper habitant. In cursus et blandit. Ipsum sit id velit viverr', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-05-08', 0, '29:53', 2, 3, 95),
(1743, 'Birch of Trainer', 'Etiam phasellus habitasse class morbi. Lorem nulla justo vitae ac semper quis nisi commodo efficitur curabitur rhoncus congue ullamcorper, posuere con', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-04-07', 0, '33:26', 2, 4, 95),
(1744, 'The Force of the Silence', 'Ipsum metus nibh ligula nunc semper phasellus ex hac dictumst turpis diam sem morbi. Metus quisque semper nisi purus dapibus quam libero litora odio. ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-12-03', 0, '37:12', 2, 5, 95),
(1745, 'The Shadowy Death', 'Lacus sed facilisis nisi ante posuere ultricies dui nam. Non phasellus fringilla. Ligula ut dapibus arcu vivamus vehicula sem risus aliquet. Adipiscin', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-06-10', 0, '47:50', 2, 6, 95),
(1746, 'Obsession in the Spark', 'Praesent feugiat dui. Placerat lectus duis habitant. Metus nibh ac molestie purus dui efficitur neque. Mi non vitae lobortis phasellus ante curae habi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-06-21', 0, '47:22', 2, 7, 95),
(1747, 'The Force of the Silence', 'Ornare augue hac per donec nisl. Nulla sapien id viverra orci cubilia augue sagittis gravida taciti sociosqu donec potenti iaculis, adipiscing a pulvi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-05-07', 0, '46:50', 2, 8, 95),
(1748, 'The Dreamer\'s Flame', 'Adipiscing lobortis sollicitudin. Egestas mauris nunc venenatis cursus arcu duis laoreet. Velit suspendisse massa posuere commodo odio neque elementum', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-10-08', 0, '37:49', 2, 9, 95),
(1749, 'Seventh Fire', 'Mattis tincidunt integer lacinia eleifend nunc tempor molestie convallis arcu maximus sociosqu nostra risus, dictum nulla ut cursus fusce faucibus hen', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-06-12', 0, '23:51', 3, 1, 95),
(1750, 'The Shadowy Death', 'Sit consectetur nulla id vestibulum integer faucibus ante primis hendrerit eget urna dictumst eu blandit, sit praesent at tempor scelerisque tellus di', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-09-10', 0, '23:49', 3, 2, 95),
(1751, 'The Force of the Silence', 'Volutpat metus eleifend et posuere curae pharetra porttitor sagittis vel maximus imperdiet senectus aenean. Lorem volutpat vitae mauris tortor convall', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-04-23', 0, '49:46', 3, 3, 95);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1752, 'The Women of the Roses', 'Ipsum id mattis tortor venenatis varius ultricies porttitor habitasse torquent eros, sit velit ac quisque tortor tempor cubilia dapibus eu himenaeos c', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-12-15', 0, '47:50', 3, 4, 95),
(1753, 'The Women of the Roses', 'Non feugiat ultrices urna dictumst lectus aliquet morbi. Interdum non a tempor ultrices molestie augue sollicitudin euismod hac sagittis sem risus nis', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-08-24', 0, '25:36', 3, 5, 95),
(1754, 'Some Sliver', 'Cursus varius elementum morbi nisl. Interdum velit tortor mollis phasellus posuere tristique, lorem sit adipiscing leo mollis est ultrices molestie ma', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-06-02', 0, '32:18', 3, 6, 95),
(1755, 'Grey Sparks', 'Nec himenaeos rhoncus. Nulla vestibulum ultricies. Ipsum dolor consectetur malesuada lobortis augue pellentesque neque risus morbi.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-08-28', 0, '48:38', 3, 7, 95),
(1756, 'The Dreamer\'s Flame', 'Dolor sit adipiscing sed malesuada auctor felis posuere dui nostra congue duis habitant. Adipiscing mi erat velit metus suspendisse purus massa augue ', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-01-09', 0, '40:57', 3, 8, 95),
(1757, 'Grey Sparks', 'In sapien maecenas vestibulum nibh quisque tempor fringilla faucibus, elit volutpat feugiat nunc nec hac commodo dui odio suscipit eros risus. Elit ju', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2008-03-20', 0, '49:36', 3, 9, 95),
(1758, 'The Tale\'s Door', 'Dictum maecenas nunc ut arcu tempus vel maximus aptent litora potenti elementum iaculis. Varius quam vivamus ullamcorper. Adipiscing praesent tincidun', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-05-23', 0, '44:28', 4, 1, 95),
(1759, 'Grey Sparks', 'Interdum mattis sagittis litora porta rhoncus blandit ullamcorper risus senectus. Id velit viverra luctus ex faucibus primis condimentum eu taciti con', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-09-11', 0, '21:49', 4, 2, 95),
(1760, 'Grey Sparks', 'Nibh lacinia mollis varius curae eget tempus eu vel maximus conubia laoreet morbi, finibus volutpat lobortis nibh auctor et sodales suscipit. Non vita', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2019-03-01', 0, '50:43', 4, 3, 95),
(1761, 'The Female of the Twins', 'Dictum lacus id justo metus purus enim blandit. Adipiscing viverra posuere quam conubia himenaeos. Arcu platea eu odio accumsan. Nulla in ut cursus fu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-06-15', 0, '48:31', 4, 4, 95),
(1762, 'Birch of Trainer', 'Lorem nec massa dignissim fames, placerat malesuada at id integer ac massa condimentum lectus litora magna sodales sem. Adipiscing non lacus venenatis', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-03-19', 0, '48:54', 4, 5, 95),
(1763, 'The Dreamer\'s Flame', 'Lacus finibus maecenas ligula urna pellentesque efficitur blandit fames, dolor etiam finibus luctus ut purus eu libero efficitur accumsan dignissim. S', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-05-06', 0, '41:26', 4, 6, 95),
(1764, 'Grey Sparks', 'Non in lacus justo leo lacinia nec auctor primis hendrerit class vehicula aenean. Ipsum adipiscing sollicitudin quam. Mi mattis vitae quisque auctor v', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2004-12-30', 0, '32:32', 4, 7, 95),
(1765, 'Flames of Dreams', 'Suspendisse ut eget, erat felis augue neque sem iaculis, et augue vivamus rhoncus tristique. Consectetur elit praesent mi erat aliquam tempus netus. F', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2000-09-19', 0, '35:26', 4, 8, 95),
(1766, 'Shard of Dragon', 'Tellus efficitur congue suscipit imperdiet. In nec condimentum turpis. Malesuada volutpat phasellus quam per ullamcorper netus. Sit elit praesent veli', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2015-02-27', 0, '42:47', 4, 9, 95),
(1767, 'The Female of the Twins', 'Lacus sapien etiam massa sollicitudin donec vehicula. Lacinia ac ut nisi augue euismod. Adipiscing vestibulum nibh ligula tellus ex sollicitudin habit', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-06-25', 0, '40:20', 5, 1, 95),
(1768, 'Obsession in the Spark', 'Lorem tincidunt pulvinar primis vulputate aptent odio sodales morbi. Viverra luctus varius laoreet. Amet elit erat mattis massa fusce primis sollicitu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-08-17', 0, '48:39', 5, 2, 95),
(1769, 'The Women of the Roses', 'Lorem id maximus. Non nulla sapien vestibulum auctor tortor ante porttitor sagittis commodo himenaeos ullamcorper tristique. Ipsum non mattis luctus f', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2003-10-11', 0, '40:30', 5, 3, 95),
(1770, 'Shard of Dragon', 'Amet adipiscing mi auctor tellus blandit dignissim, ultricies eget platea eu per fermentum elementum habitant netus. Nullam eget sociosqu ullamcorper ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2016-06-16', 0, '40:52', 5, 4, 95),
(1771, 'Flames of Dreams', 'Eleifend venenatis tellus aliquam hendrerit conubia. Mi in metus feugiat lacinia pulvinar semper scelerisque consequat lectus bibendum eros imperdiet.', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-08-11', 0, '41:50', 5, 5, 95),
(1772, 'Name of Elves', 'Adipiscing praesent at volutpat integer nec tortor quis molestie posuere condimentum turpis porta laoreet dignissim. A ligula suspendisse pulvinar sce', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-06-08', 0, '35:17', 5, 6, 95),
(1773, 'Obsession in the Spark', 'Lorem maecenas justo nibh lacinia phasellus molestie ex vivamus curabitur, non lacus maecenas libero torquent. Lorem amet mattis lobortis tincidunt li', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2006-08-25', 0, '33:19', 5, 7, 95),
(1774, 'Obsession in the Spark', 'Sed semper hendrerit habitasse torquent accumsan nam risus. Lobortis nibh integer nunc nisi et pharetra quam platea gravida libero sociosqu turpis acc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-07-04', 0, '46:17', 5, 8, 95),
(1775, 'Burning Something', 'Non in velit vestibulum feugiat tellus ultricies hac libero aptent fermentum suscipit eros senectus aenean. Dictum facilisis felis ante. Dolor ut tort', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2006-04-15', 0, '43:28', 5, 9, 95),
(1776, 'The Tale\'s Door', 'Venenatis tellus pharetra pretium hac libero maximus nostra himenaeos magna bibendum aliquet aenean, nibh scelerisque venenatis platea dictumst dui ef', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2003-08-10', 0, '35:11', 1, 1, 96),
(1777, 'Light in the Mage', 'Velit laoreet senectus. Metus lacinia nec eu conubia duis ullamcorper. Erat finibus vitae mauris nunc nec posuere pharetra tempus eu litora rhoncus co', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-05-01', 0, '21:19', 1, 2, 96),
(1778, 'The Female of the Twins', 'Pulvinar varius fermentum suscipit. Lacus tincidunt nec nisi cubilia euismod porttitor habitasse curabitur habitant. Finibus felis enim. In sed sapien', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-02-08', 0, '43:36', 1, 3, 96),
(1779, 'Grey Sparks', 'Id lobortis ac ut nisi primis condimentum hac platea ad accumsan. Lacinia eu commodo donec. Egestas erat velit vestibulum mauris mollis augue pharetra', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-12-12', 0, '42:49', 1, 4, 96),
(1780, 'Burning Something', 'In sollicitudin commodo lectus dignissim. Dolor dictum velit nibh est cursus fringilla primis orci pretium. Scelerisque condimentum ullamcorper. Velit', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-12-07', 0, '41:21', 1, 5, 96),
(1781, 'Shard of Dragon', 'Sit nulla malesuada id proin consequat eu conubia porta dignissim senectus. Mattis cursus orci pretium lectus vivamus inceptos aliquet senectus. Amet ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2000-08-23', 0, '49:44', 1, 6, 96),
(1782, 'Name of Elves', 'Interdum lacus malesuada erat vestibulum auctor quis turpis accumsan neque ullamcorper tristique, quisque dui porta. Maecenas ligula massa nullam sagi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-10-11', 0, '42:40', 1, 7, 96),
(1783, 'Grey Sparks', 'Mattis scelerisque quis libero enim. Lorem ipsum elit velit vitae molestie ante dapibus efficitur elementum suscipit habitant, dictum nulla finibus pu', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-01-21', 0, '25:31', 1, 8, 96),
(1784, 'Light in the Mage', 'Orci inceptos himenaeos vehicula, semper et augue ad potenti, egestas mauris semper cursus faucibus curae dapibus nullam condimentum duis ullamcorper,', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-06-12', 0, '29:54', 1, 9, 96),
(1785, 'Silver Twilight', 'Praesent at leo proin vulputate habitasse himenaeos enim rhoncus blandit congue eros nam morbi senectus, mi viverra lacinia quisque ante urna arcu apt', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-03-06', 0, '28:59', 2, 1, 96),
(1786, 'Grey Sparks', 'Sit interdum id cursus felis proin ultricies vel blandit imperdiet sem fames. Praesent lacus id vitae vestibulum facilisis quis ornare donec congue du', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-09-18', 0, '50:12', 2, 2, 96),
(1787, 'Voyager in the Lord', 'Vestibulum nec tortor ex pretium vivamus accumsan nam nisl, volutpat justo pulvinar semper tellus augue euismod dictumst accumsan duis fames. Interdum', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-07-31', 0, '21:15', 2, 3, 96),
(1788, 'The Shadowy Death', 'Praesent in maecenas cursus orci curae dapibus sollicitudin eget ad inceptos, amet consequat habitasse sagittis rhoncus nam. Elit velit arcu libero no', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-12-28', 0, '50:48', 2, 4, 96),
(1789, 'Seventh Fire', 'Mattis lobortis phasellus faucibus magna laoreet suscipit. Consectetur mi malesuada orci blandit neque duis tristique cras. Ipsum quisque est consequa', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-10-04', 0, '36:10', 2, 5, 96),
(1790, 'Sliver in the Weeping', 'Nunc vulputate aliquet, sed at lobortis cursus et pellentesque. Metus integer auctor tellus phasellus fusce cubilia class aptent torquent nostra rhonc', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2012-01-22', 0, '34:52', 2, 6, 96),
(1791, 'The Force of the Silence', 'Ipsum feugiat est ex felis consequat commodo dui porta, viverra leo ac et sollicitudin eget urna libero pellentesque sociosqu conubia duis suscipit mo', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-04-06', 0, '24:13', 2, 7, 96),
(1792, 'Seventh Fire', 'Tincidunt suspendisse ut semper scelerisque tellus felis dapibus nullam dictumst vel taciti sem dignissim iaculis. Id tincidunt quis pharetra aptent t', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-04-10', 0, '28:47', 2, 8, 96),
(1793, 'The Dreamer\'s Flame', 'Egestas maecenas ac mollis fusce quam platea aptent nam. Sit a tortor nostra. Placerat eget consequat habitasse libero tristique, in malesuada vitae e', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-07-25', 0, '36:18', 2, 9, 96),
(1794, 'Obsession in the Spark', 'Dictum malesuada finibus nunc nec pulvinar quisque nisi et eu efficitur accumsan. Praesent egestas ut semper felis ultricies sociosqu curabitur rhoncu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-03-12', 0, '31:31', 3, 1, 96),
(1795, 'Silver Twilight', 'Ipsum elit id finibus vestibulum ac primis augue hac donec neque risus habitant aenean. Finibus cubilia aliquet. Nibh eleifend curae arcu efficitur ne', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2002-08-10', 0, '42:25', 3, 2, 96),
(1796, 'Name of Elves', 'Mi lobortis leo ut massa faucibus habitasse litora, viverra luctus molestie fusce orci vel ullamcorper. Lacus malesuada volutpat metus lobortis feugia', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2001-07-25', 0, '20:10', 3, 3, 96),
(1797, 'The Dreamer\'s Flame', 'Elit justo est ex massa pretium quam aptent taciti sociosqu magna laoreet elementum risus morbi. Lacus sapien luctus tincidunt a fringilla primis posu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-01-14', 0, '30:47', 3, 4, 96),
(1798, 'Obsession in the Spark', 'Venenatis varius porta accumsan dignissim. Dolor dapibus vulputate maximus, ipsum consectetur finibus viverra metus nunc convallis ex felis augue rhon', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2000-08-24', 0, '28:14', 3, 5, 96),
(1799, 'Name of Elves', 'Finibus integer ligula eleifend mollis tellus cursus ultricies vel class donec potenti bibendum vehicula, massa eros dignissim. Justo cubilia aptent s', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-11-07', 0, '40:21', 3, 6, 96),
(1800, 'Obsession in the Spark', 'Suspendisse tortor nisi faucibus class turpis odio neque suscipit vehicula, finibus ligula euismod libero vel. Lorem volutpat et eget consequat netus,', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-06-20', 0, '20:20', 3, 7, 96),
(1801, 'Burning Something', 'Elit venenatis sagittis turpis neque laoreet fames. Leo nibh ac est hendrerit euismod commodo duis cras. Metus est tempor varius dapibus class ad ferm', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2015-08-07', 0, '35:15', 3, 8, 96),
(1802, 'Voyager in the Lord', 'Elit ex ad nam. Lacus viverra ligula faucibus euismod porttitor tempus turpis blandit sodales bibendum aenean, malesuada eu ullamcorper, consectetur a', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2010-09-01', 0, '34:55', 3, 9, 96),
(1803, 'Birch of Trainer', 'Sed placerat integer eleifend phasellus ante nullam dui sociosqu laoreet morbi tristique. Lorem praesent interdum lobortis ut tempor venenatis felis u', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-04-08', 0, '22:35', 4, 1, 96),
(1804, 'Flames of Dreams', 'Adipiscing non lacus tortor cubilia proin pharetra urna maximus sociosqu enim neque laoreet nam senectus. Nisi eget quam accumsan, dictum mi tellus ma', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2002-10-21', 0, '41:43', 4, 2, 96),
(1805, 'Shard of Dragon', 'Mi placerat velit integer purus convallis pellentesque class per conubia himenaeos porta enim netus. Egestas sapien maecenas vestibulum quisque ut qui', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-04-21', 0, '23:38', 4, 3, 96),
(1806, 'Birch of Trainer', 'Placerat nec tellus phasellus fusce hac dictumst eu maximus ad litora turpis cras. At etiam maecenas vestibulum a ex massa cubilia gravida ad congue u', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2003-04-07', 0, '44:11', 4, 4, 96),
(1807, 'Burning Something', 'Adipiscing augue risus, vitae vestibulum lobortis leo nec primis et cubilia nullam euismod taciti inceptos netus. Feugiat venenatis primis ornare grav', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-01-08', 0, '24:14', 4, 5, 96),
(1808, 'The Dreamer\'s Flame', 'Egestas at vestibulum metus, dolor elit malesuada tincidunt quisque tortor posuere hendrerit augue gravida curabitur potenti aliquet. Ipsum elit inter', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2010-01-30', 0, '43:21', 4, 6, 96),
(1809, 'Light in the Mage', 'Malesuada lobortis leo integer facilisis quisque ut purus cubilia consequat efficitur aptent elementum aliquet. Ipsum non velit quisque purus felis ul', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2005-11-13', 0, '25:21', 4, 7, 96),
(1810, 'The Dreamer\'s Flame', 'Suspendisse ut fusce euismod hac suscipit aliquet, sed auctor fusce primis hendrerit consequat commodo torquent bibendum. Malesuada auctor quis phasel', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-10-09', 0, '40:36', 4, 8, 96),
(1811, 'Name of Elves', 'Vestibulum a quisque semper molestie massa primis posuere arcu per donec eros fames, suspendisse urna sodales. Elit est phasellus cursus fringilla ant', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2009-02-08', 0, '31:46', 4, 9, 96),
(1812, 'The Dreamer\'s Flame', 'Sit sapien erat maecenas volutpat ultrices massa euismod porttitor aptent accumsan. Tincidunt tortor molestie fusce primis euismod taciti curabitur se', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2005-12-04', 0, '48:51', 5, 1, 96),
(1813, 'The Shadowy Death', 'Nisi cursus massa lectus per curabitur risus. Lacus id mauris nec quisque felis ornare pharetra dui class suscipit, velit justo leo nibh ac quisque fr', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-05-11', 0, '36:33', 5, 2, 96),
(1814, 'Birch of Trainer', 'Dolor sit mauris facilisis suspendisse gravida aptent potenti morbi, ipsum elit placerat aliquam cursus felis ultricies vulputate platea porta odio ac', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2018-06-16', 0, '37:28', 5, 3, 96),
(1815, 'Name of Elves', 'Scelerisque dictumst pellentesque elementum dignissim. Vitae facilisis auctor arcu ullamcorper. In phasellus augue vulputate. Lorem amet egestas nibh ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2004-11-02', 0, '44:14', 5, 4, 96),
(1816, 'Flames of Dreams', 'Vestibulum leo fusce varius vulputate pellentesque per inceptos. Amet nunc tempor vehicula, velit finibus faucibus rhoncus. Vitae leo cubilia arcu con', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2013-10-20', 0, '45:55', 5, 5, 96),
(1817, 'The Dwindling Voyage', 'Elit justo auctor hendrerit augue dapibus platea dui ad litora bibendum diam eros nam cras. Dolor in velit commodo vel inceptos imperdiet aliquet habi', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-08-07', 0, '20:24', 5, 6, 96),
(1818, 'Seventh Fire', 'Tellus fusce dapibus hac duis. Lorem mi viverra mattis eleifend per. Velit feugiat molestie pretium vehicula netus nisl iaculis.', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-05-01', 0, '41:28', 5, 7, 96),
(1819, 'Shard of Dragon', 'Lorem egestas etiam tellus orci posuere commodo suscipit risus netus. Mi vitae phasellus sollicitudin quam gravida dui per donec accumsan iaculis cras', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-05-26', 0, '41:18', 5, 8, 96),
(1820, 'The Female of the Twins', 'Dolor malesuada lacinia ultrices tellus nisi primis ultricies aenean. Facilisis lacinia quis libero netus. Mattis justo nisi massa curae curabitur lao', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-05-03', 0, '35:39', 5, 9, 96),
(1821, 'Voyager in the Lord', 'Ipsum mattis pulvinar ultricies ornare pretium eu conubia enim vehicula. Mi facilisis eleifend scelerisque ultrices cursus pharetra litora porta enim ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2013-03-16', 0, '40:52', 6, 1, 96),
(1822, 'The Licking Flowers', 'Dictum erat integer quam imperdiet, amet maximus taciti himenaeos curabitur potenti neque ullamcorper. Ipsum elit nulla ac ex conubia potenti congue r', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-03-17', 0, '43:26', 6, 2, 96),
(1823, 'The Force of the Silence', 'Mauris litora congue laoreet elementum. Tincidunt nec est molestie purus primis porttitor eu maximus pellentesque class nostra inceptos donec nam. Pra', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-06-25', 0, '23:15', 6, 3, 96),
(1824, 'The Licking Flowers', 'Malesuada purus ultricies sodales. Ipsum maecenas mattis semper purus pellentesque efficitur. Elit dictum at tortor venenatis posuere magna. Praesent ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-11-11', 0, '20:22', 6, 4, 96),
(1825, 'Some Sliver', 'Mi etiam finibus nec quis fringilla primis posuere eget porttitor pellentesque conubia turpis congue aenean. Pulvinar nisi augue efficitur. Elit males', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2019-03-01', 0, '44:51', 6, 5, 96),
(1826, 'Shard of Dragon', 'Elit placerat viverra ligula massa hendrerit dapibus dictumst turpis duis habitant. Lacus finibus vitae mauris suspendisse quis ante orci eu porta imp', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-08-11', 0, '42:46', 6, 6, 96),
(1827, 'The Dwindling Voyage', 'Lobortis nibh facilisis eleifend nunc quisque pellentesque curabitur odio sodales. Interdum nec augue lectus inceptos neque. Non sed malesuada etiam l', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-01-25', 0, '48:53', 6, 7, 96),
(1828, 'The Women of the Roses', 'Et pharetra donec cras. Nec posuere pharetra, in sapien at erat finibus lobortis lacinia sagittis ad. Ipsum adipiscing lacus malesuada lobortis ligula', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-01-01', 0, '29:57', 6, 8, 96),
(1829, 'The Shadowy Death', 'Sit nulla mauris felis dictumst nostra, venenatis fusce accumsan elementum netus. Praesent non aliquet, ut litora curabitur duis. Tellus fusce condime', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-04-13', 0, '39:35', 6, 9, 96),
(1830, 'The Women of the Roses', 'Praesent sapien metus mollis nisi orci posuere. Etiam a vivamus turpis magna blandit laoreet, praesent nulla malesuada taciti litora vehicula. Nulla f', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-03-08', 0, '38:19', 7, 1, 96),
(1831, 'The Female of the Twins', 'Volutpat scelerisque ultrices convallis varius porttitor eu conubia potenti laoreet aliquet nisl. Ipsum in ex vivamus turpis magna congue. Nulla feugi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2018-04-21', 0, '27:24', 7, 2, 96),
(1832, 'The Tale\'s Door', 'Suspendisse scelerisque felis pharetra commodo taciti, dolor consectetur non ac nec est fusce ante gravida vivamus class enim ullamcorper, interdum at', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-05-04', 0, '32:51', 7, 3, 96),
(1833, 'The Dwindling Voyage', 'Mi lacus id pulvinar nisi curae dapibus consequat fermentum. Adipiscing a ac venenatis ex fusce ante eget eros, erat vestibulum luctus tortor mollis e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-03-16', 0, '25:47', 7, 4, 96),
(1834, 'The Tale\'s Door', 'Justo pulvinar molestie primis habitasse sem tristique. Mattis lacinia semper ultricies eu suscipit aenean. Amet egestas etiam vitae metus lacinia nis', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-12-10', 0, '23:20', 7, 5, 96),
(1835, 'The Female of the Twins', 'Dictum sapien etiam finibus volutpat ligula nisi convallis dictumst ad accumsan. Sit interdum fringilla nullam commodo enim blandit suscipit. Egestas ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-11-17', 0, '26:47', 7, 6, 96),
(1836, 'The Force of the Silence', 'Erat vitae tellus cursus fringilla varius curae condimentum vel aliquet nisl, sit velit volutpat mauris facilisis tellus orci hendrerit tempus taciti ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-09-12', 0, '32:33', 7, 7, 96),
(1837, 'The Shadowy Death', 'Volutpat facilisis ac tempor primis euismod platea dui aptent inceptos himenaeos magna suscipit imperdiet. Purus urna vel pellentesque aptent potenti ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-05-12', 0, '30:50', 7, 8, 96),
(1838, 'The Dwindling Voyage', 'Lacus vitae venenatis ultricies sagittis gravida lectus vel ad curabitur, sapien lacinia varius primis hendrerit porttitor condimentum diam iaculis. C', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2010-05-07', 0, '34:34', 7, 9, 96),
(1839, 'Burning Something', 'Dictum malesuada etiam velit volutpat vitae ante cubilia pellentesque class donec habitant. Malesuada ut posuere vulputate ad. Consectetur elit lacus ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-03-14', 0, '47:55', 1, 1, 97),
(1840, 'Shard of Dragon', 'Sed nec sagittis commodo inceptos blandit vehicula, in mauris nibh nunc pulvinar tortor est purus faucibus aptent ad blandit dignissim. Mi placerat fi', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2004-10-15', 0, '24:12', 1, 2, 97),
(1841, 'The Dreamer\'s Flame', 'In maecenas ligula mollis felis fringilla himenaeos turpis rhoncus diam eros iaculis. Suspendisse aliquam ante diam. Dictum metus eleifend hac eu rhon', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2005-09-19', 0, '23:20', 1, 3, 97),
(1842, 'The Dwindling Voyage', 'Malesuada erat volutpat justo molestie pharetra euismod pretium gravida eu maximus himenaeos dignissim habitant. Quisque nisi fringilla posuere cubili', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-05-21', 0, '46:18', 1, 4, 97),
(1843, 'Obsession in the Spark', 'Praesent interdum lobortis nibh est tempor commodo laoreet. Dictum sed etiam volutpat eleifend quis massa varius primis arcu pellentesque class turpis', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-04-13', 0, '44:42', 1, 5, 97),
(1844, 'Silver Twilight', 'Ipsum adipiscing nulla sapien volutpat et porttitor dui netus. Lorem at volutpat metus nunc nec quisque molestie fringilla proin sollicitudin lectus a', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2016-09-27', 0, '24:49', 1, 6, 97),
(1845, 'The Tale\'s Door', 'Finibus auctor nisi efficitur. Nulla elementum nam, dictum volutpat fusce sollicitudin consequat conubia potenti nisl. Amet elit facilisis semper scel', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2001-04-01', 0, '28:21', 1, 7, 97),
(1846, 'The Dreamer\'s Flame', 'Curae vulputate efficitur. Dictum nulla erat vitae quisque ut cubilia ornare netus. Malesuada at lobortis pulvinar molestie fringilla et nullam sagitt', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2017-11-30', 0, '42:32', 2, 1, 97),
(1847, 'The Danger\'s Flight', 'Vitae cursus ex varius lectus magna risus. Amet mattis semper eget consequat hac turpis porta odio dignissim habitant. Luctus nibh nec cursus massa fu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2017-12-07', 0, '34:23', 2, 2, 97),
(1848, 'The Female of the Twins', 'Sapien a felis cubilia hendrerit platea pellentesque, id justo integer eleifend sodales cras. Ac nostra curabitur potenti. Non aliquam faucibus conubi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2002-04-06', 0, '38:34', 2, 3, 97),
(1849, 'The Dwindling Voyage', 'Adipiscing non lacus etiam id mollis vel diam. Consectetur at nibh condimentum sociosqu curabitur sodales. Amet adipiscing sed at luctus tortor quis m', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2009-04-28', 0, '33:46', 2, 4, 97),
(1850, 'The Tale\'s Door', 'Non integer varius cubilia lectus. Adipiscing erat nunc semper massa orci commodo tristique cras, at etiam viverra luctus tincidunt tellus fringilla u', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-03-15', 0, '36:13', 2, 5, 97),
(1851, 'Birch of Trainer', 'Dictum maecenas feugiat aliquam varius ornare commodo inceptos himenaeos magna porta potenti accumsan. Praesent dictum egestas sapien ut aliquam cursu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-12-15', 0, '21:12', 2, 6, 97),
(1852, 'Grey Sparks', 'Interdum non placerat viverra ut mollis felis faucibus orci sollicitudin commodo aptent conubia congue. Dictum id maecenas facilisis nec ultrices ex e', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-04-17', 0, '25:48', 2, 7, 97),
(1853, 'The Dreamer\'s Flame', 'Vestibulum mauris pulvinar molestie felis habitasse pellentesque litora porta vehicula. Non at finibus viverra lobortis tincidunt integer ex posuere s', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-04-02', 0, '40:51', 3, 1, 97),
(1854, 'Voyager in the Lord', 'Varius ante sollicitudin eros. Lorem mi lacus sed sapien leo venenatis ultrices nisi massa proin urna quam platea vivamus, praesent nulla placerat lob', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2007-10-03', 0, '38:52', 3, 2, 97),
(1855, 'Grey Sparks', 'At maecenas mauris platea. Adipiscing praesent non viverra mattis mauris a nec semper porttitor dui tristique senectus. Auctor et ornare magna imperdi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-03-24', 0, '46:58', 3, 3, 97),
(1856, 'Seventh Fire', 'Interdum egestas at id velit scelerisque venenatis aliquam sagittis class laoreet diam nisl. Lacus sed vitae nibh ut tortor tellus dapibus eu pellente', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-06-25', 0, '40:53', 3, 4, 97),
(1857, 'Silver Twilight', 'Interdum dictum sed velit mattis lobortis quisque primis posuere curae condimentum libero fermentum laoreet, ipsum justo metus lobortis mauris pulvina', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2013-03-11', 0, '27:14', 3, 5, 97),
(1858, 'Flames of Dreams', 'Platea per ullamcorper, lacus quis massa potenti netus. Adipiscing non in erat nunc phasellus curae dapibus turpis curabitur cras, id nunc tempor quis', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2010-08-28', 0, '21:33', 3, 6, 97),
(1859, 'Some Sliver', 'At justo augue taciti. Praesent interdum nulla velit volutpat ultrices molestie fusce primis porttitor tempus vivamus torquent conubia donec. Vestibul', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-08-18', 0, '32:51', 3, 7, 97),
(1860, 'Birch of Trainer', 'Sit etiam metus lacinia ut tortor venenatis platea bibendum nisl, etiam luctus ut posuere vulputate vel ad enim congue nisl. Lobortis tortor himenaeos', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2012-04-28', 0, '31:11', 4, 1, 97),
(1861, 'The Dwindling Voyage', 'Egestas at maecenas integer phasellus sollicitudin tempus gravida rhoncus potenti fames, mattis lacinia massa felis proin dictumst maximus. Consectetu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-10-26', 0, '50:59', 4, 2, 97),
(1862, 'Seventh Fire', 'Lorem dolor adipiscing non vestibulum a nunc quisque tellus urna turpis vehicula. Egestas ac ut nisi phasellus molestie proin ornare dapibus sollicitu', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-09-17', 0, '47:46', 4, 3, 97),
(1863, 'Flames of Dreams', 'Dictum tempor inceptos eros. Sit consectetur non vitae facilisis semper venenatis convallis vulputate condimentum eu commodo nostra curabitur aenean. ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2011-05-08', 0, '49:19', 4, 4, 97),
(1864, 'Birch of Trainer', 'Ligula ex orci odio blandit neque, sit elit praesent at velit mattis nisi sagittis gravida sociosqu himenaeos fermentum porta eros ullamcorper. Dictum', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-04-30', 0, '21:49', 4, 5, 97),
(1865, 'Birch of Trainer', 'Dolor non lacus velit luctus a nec pharetra dapibus sollicitudin condimentum dictumst torquent neque ullamcorper. Non placerat suspendisse felis habit', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2005-03-17', 0, '32:56', 4, 6, 97),
(1866, 'The Force of the Silence', 'Massa felis porttitor nostra imperdiet aliquet, dictum mi in est tellus ex cubilia proin vulputate himenaeos suscipit nisl aenean. Eleifend scelerisqu', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-01-10', 0, '24:50', 4, 7, 97),
(1867, 'Birch of Trainer', 'Elit metus est tempor venenatis tellus phasellus urna consequat dui conubia bibendum eros nisl. Elit velit metus suspendisse euismod libero. Mi sapien', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-06-23', 0, '28:35', 5, 1, 97),
(1868, 'The Shadowy Death', 'Adipiscing in mattis est felis quam habitasse platea gravida eu lectus odio cras. Feugiat mollis donec eros, egestas ac nunc tortor phasellus fringill', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2016-05-28', 0, '49:18', 5, 2, 97),
(1869, 'The Tale\'s Door', 'Sapien est felis eget pretium condimentum gravida maximus iaculis, amet malesuada id mattis lobortis mauris eleifend ornare pharetra nullam dictumst a', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-01-06', 0, '44:24', 5, 3, 97),
(1870, 'The Dwindling Voyage', 'Mi mauris integer convallis varius proin libero conubia turpis ullamcorper. Lorem lacus justo vestibulum lacinia quis massa posuere ornare dictumst ve', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2014-04-09', 0, '45:40', 5, 4, 97),
(1871, 'The Licking Flowers', 'Placerat malesuada justo lobortis auctor pretium, erat lacinia suspendisse ex et sagittis vivamus efficitur suscipit imperdiet risus morbi. Lorem cons', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-05-23', 0, '36:50', 5, 5, 97),
(1872, 'The Danger\'s Flight', 'Ante ultricies hendrerit quam ad sem, ipsum egestas justo lacinia phasellus faucibus varius nullam vulputate arcu sagittis gravida efficitur inceptos ', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2011-04-19', 0, '36:45', 5, 6, 97),
(1873, 'Light in the Mage', 'Leo molestie platea imperdiet. Elit non nulla ut scelerisque nisi purus sagittis maximus laoreet. Dolor sit in at quisque venenatis nullam sollicitudi', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2007-03-10', 0, '31:23', 5, 7, 97),
(1874, 'Silver Twilight', 'Adipiscing interdum sapien auctor mollis ultrices ornare pretium urna platea sociosqu curabitur elementum habitant aenean. Dolor amet lacus nunc nisi ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-09-11', 0, '50:58', 6, 1, 97),
(1875, 'The Licking Flowers', 'In nec aliquam felis efficitur magna. Finibus lacinia convallis cursus ornare vulputate per inceptos suscipit, sapien vestibulum metus ligula felis. L', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2017-09-27', 0, '27:27', 6, 2, 97),
(1876, 'Shard of Dragon', 'Sed erat justo auctor phasellus faucibus orci et ornare commodo dui ad fermentum, ultricies porttitor consequat libero congue vehicula morbi. In sed j', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2008-08-15', 0, '41:42', 6, 3, 97),
(1877, 'The Force of the Silence', 'Dictum suspendisse ut tempor vulputate taciti, erat vestibulum tellus, dolor placerat lacinia suspendisse fusce ornare eget pretium condimentum bibend', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2014-10-08', 0, '23:45', 6, 4, 97),
(1878, 'The Dwindling Voyage', 'Placerat malesuada finibus suspendisse phasellus hendrerit eu class curabitur rhoncus potenti diam dignissim. Interdum facilisis venenatis sollicitudi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2007-09-13', 0, '24:45', 6, 5, 97),
(1879, 'Flames of Dreams', 'Ultrices molestie varius ante et dictumst aptent ad. Adipiscing lacus at pulvinar mollis venenatis turpis odio iaculis. Ipsum sed velit finibus luctus', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2010-06-25', 0, '40:15', 6, 6, 97),
(1880, 'The Dreamer\'s Flame', 'Non nunc purus orci curae lectus per porta enim vehicula. Sit lacus tincidunt nisi purus hendrerit sollicitudin habitasse lectus fermentum porta accum', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-06-15', 0, '20:24', 6, 7, 97),
(1881, 'Grey Sparks', 'Praesent volutpat a dapibus eget taciti duis habitant. Sit luctus eleifend tellus aliquam fringilla potenti. Adipiscing ligula mollis scelerisque phar', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-01-03', 0, '24:31', 1, 1, 98),
(1882, 'Some Sliver', 'Amet elit viverra lacinia venenatis fusce orci nullam turpis potenti duis sem. Ipsum vitae eleifend semper cursus felis proin augue euismod porttitor ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2005-09-17', 0, '22:57', 1, 2, 98),
(1883, 'Birch of Trainer', 'Id lacinia auctor tortor cursus primis posuere euismod vel turpis potenti eros aliquet. Vestibulum a auctor ultrices ante ornare accumsan bibendum ali', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-02-20', 0, '49:25', 1, 3, 98),
(1884, 'The Shadowy Death', 'Tincidunt ornare gravida eros, mollis odio aenean. Ipsum adipiscing etiam luctus suspendisse ex fusce hendrerit porttitor condimentum libero aptent su', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2014-03-17', 0, '20:44', 1, 4, 98),
(1885, 'Grey Sparks', 'Consectetur quisque ornare sagittis maximus. Placerat etiam nibh semper mollis ultrices orci pharetra inceptos habitant. Sit adipiscing malesuada maur', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-09-27', 0, '50:33', 1, 5, 98),
(1886, 'Grey Sparks', 'Non ac venenatis condimentum hac platea lectus congue vehicula nisl. Sapien velit finibus volutpat vestibulum facilisis nunc fusce quam condimentum so', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2003-02-24', 0, '23:28', 1, 6, 98),
(1887, 'Burning Something', 'In vitae metus luctus est faucibus posuere augue arcu torquent magna porta enim imperdiet, elit feugiat nisi convallis massa et eget pretium vulputate', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2015-06-08', 0, '50:14', 1, 7, 98),
(1888, 'The Female of the Twins', 'Tortor ex massa arcu habitasse. Lacinia pulvinar potenti. Viverra vitae lobortis tincidunt est commodo aptent.', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-07-27', 0, '35:32', 1, 8, 98),
(1889, 'The Force of the Silence', 'Amet placerat nibh integer ligula faucibus ante nullam tempus pellentesque imperdiet habitant, sit egestas quis nisi molestie massa felis euismod nost', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2015-12-15', 0, '32:14', 1, 9, 98),
(1890, 'Light in the Mage', 'Interdum mi sapien etiam molestie purus ultricies condimentum sagittis donec rhoncus congue risus. Dolor a auctor eu conubia dignissim aliquet senectu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2003-11-14', 0, '46:57', 1, 10, 98),
(1891, 'The Shadowy Death', 'Nulla erat nullam tristique. Non luctus feugiat purus euismod dictumst taciti turpis neque vehicula habitant. Egestas in lacus facilisis orci dapibus ', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2017-04-08', 0, '32:37', 1, 11, 98),
(1892, 'Obsession in the Spark', 'Lorem volutpat quisque faucibus eget quam vivamus pellentesque sociosqu blandit neque vehicula. Volutpat metus tempor cubilia arcu vel litora imperdie', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2014-08-26', 0, '39:14', 2, 1, 98),
(1893, 'Silver Twilight', 'Ipsum egestas ut venenatis molestie ex proin eget dui sociosqu per congue suscipit cras. Ipsum dolor mattis lobortis facilisis suspendisse nec ultrice', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-11-19', 0, '44:53', 2, 2, 98),
(1894, 'The Licking Flowers', 'Amet non luctus feugiat quam tempus gravida lectus turpis accumsan, volutpat mauris luctus nibh felis varius consequat eu potenti duis ullamcorper fam', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2004-11-28', 0, '47:56', 2, 3, 98),
(1895, 'Voyager in the Lord', 'Nibh tortor fringilla. Placerat tortor fringilla gravida litora fermentum curabitur, mi sed at viverra volutpat mauris a auctor cursus sociosqu accums', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2013-07-03', 0, '40:13', 2, 4, 98),
(1896, 'The Female of the Twins', 'Amet erat etiam quisque posuere rhoncus diam cras. Metus mauris lacinia suspendisse pulvinar habitasse turpis diam. In suspendisse quisque auctor cubi', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2004-11-22', 0, '33:46', 2, 5, 98),
(1897, 'Silver Twilight', 'Adipiscing praesent luctus pulvinar mollis molestie massa primis hendrerit habitasse sagittis laoreet cras, sapien id ligula cubilia hac lectus vivamu', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2006-01-06', 0, '37:56', 2, 6, 98),
(1898, 'The Force of the Silence', 'Mauris aliquam curae torquent, interdum dictum sed est phasellus ultricies sollicitudin lectus sociosqu sodales suscipit aenean. Adipiscing feugiat ne', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2011-02-04', 0, '45:39', 2, 7, 98),
(1899, 'The Tale\'s Door', 'Consectetur finibus scelerisque purus ultricies dui maximus class per iaculis. Nibh scelerisque ullamcorper aliquet, id massa sollicitudin arcu condim', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2008-01-17', 0, '50:41', 2, 8, 98),
(1900, 'The Dreamer\'s Flame', 'Volutpat feugiat phasellus fringilla varius et eu porta accumsan suscipit, nulla molestie dapibus sagittis magna cras. Elit erat faucibus maximus effi', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2006-10-19', 0, '20:11', 2, 9, 98),
(1901, 'Obsession in the Spark', 'Lacinia tellus primis condimentum taciti odio. Amet non egestas velit justo lacinia scelerisque posuere hendrerit arcu libero torquent enim nisl, cons', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2011-03-31', 0, '38:40', 2, 10, 98),
(1902, 'Name of Elves', 'Feugiat ligula phasellus molestie orci nullam platea odio netus, lorem id a aliquam sollicitudin urna lectus efficitur eros risus. Consectetur pulvina', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2019-02-05', 0, '49:42', 2, 11, 98),
(1903, 'Shard of Dragon', 'Non egestas id finibus nibh facilisis lacinia ligula arcu donec suscipit sem, lobortis luctus pharetra consequat donec vehicula. Lorem amet consectetu', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2009-06-17', 0, '33:44', 3, 1, 98),
(1904, 'Obsession in the Spark', 'Tincidunt nec ut mollis tellus eget porttitor quam tempus lectus turpis porta enim. Sit vitae tincidunt suspendisse phasellus fringilla faucibus curae', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2006-09-03', 0, '29:33', 3, 2, 98),
(1905, 'Name of Elves', 'Nulla vestibulum metus lacinia quis varius sollicitudin quam fermentum porta nam. Adipiscing malesuada maecenas tortor dapibus vulputate hac lectus po', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2002-04-15', 0, '39:13', 3, 3, 98),
(1906, 'Shard of Dragon', 'Ligula quisque ut auctor aliquam purus fusce vivamus enim imperdiet, quis et proin efficitur aptent duis nam morbi. Elit malesuada viverra maecenas ve', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2011-01-22', 0, '22:49', 3, 4, 98),
(1907, 'Burning Something', 'Interdum eleifend sollicitudin dui bibendum tristique aenean, ornare habitasse sagittis morbi iaculis. Amet integer suspendisse scelerisque ante cubil', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2008-07-19', 0, '25:21', 3, 5, 98),
(1908, 'Burning Something', 'Nunc condimentum inceptos curabitur iaculis. Id nibh auctor quis nisi. Placerat malesuada vitae est cubilia proin hendrerit litora laoreet netus.', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2011-05-14', 0, '23:38', 3, 6, 98),
(1909, 'Shard of Dragon', 'Ipsum mi nulla in viverra lobortis lacinia suspendisse proin sagittis vivamus himenaeos laoreet imperdiet fames, dolor in maecenas nibh a ac est orci ', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-10-10', 0, '22:54', 3, 7, 98),
(1910, 'The Danger\'s Flight', 'Praesent non luctus facilisis proin ornare pharetra dapibus euismod pretium arcu litora vehicula. Mollis faucibus dictumst gravida magna. At lobortis ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2002-12-19', 0, '24:13', 3, 8, 98),
(1911, 'The Shadowy Death', 'Placerat erat etiam ligula scelerisque faucibus ante dapibus dui vivamus donec. Mauris suspendisse mollis massa proin potenti. Nulla sapien etiam veli', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2001-11-08', 0, '47:41', 3, 9, 98),
(1912, 'Grey Sparks', 'Nec tortor nostra. Urna lectus libero pellentesque, in mauris ac nec venenatis molestie cursus orci vulputate maximus fermentum duis aliquet cras. Fin', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2012-04-25', 0, '21:35', 3, 10, 98),
(1913, 'The Danger\'s Flight', 'Non volutpat feugiat ut consequat vel tristique netus, ex sollicitudin hac porta curabitur nisl. Malesuada a hendrerit urna. Mattis curae augue vulput', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2015-12-19', 0, '37:13', 3, 11, 98),
(1914, 'The Dwindling Voyage', 'Lorem at augue class neque. Dolor dictum malesuada lobortis pulvinar cursus ornare urna condimentum litora eros tristique nisl. Nulla velit ac ex orna', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2005-04-06', 0, '21:55', 1, 1, 99),
(1915, 'The Female of the Twins', 'Mi at quis primis curae augue libero maximus accumsan congue, finibus phasellus fusce maximus neque. Consectetur semper nisi curae augue neque ullamco', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-07-09', 0, '31:39', 1, 2, 99),
(1916, 'Seventh Fire', 'Vitae mollis massa maximus. Dolor pulvinar scelerisque nisi aliquam maximus. Mi placerat eleifend quis habitasse commodo conubia eros fames, sapien ti', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2001-06-23', 0, '25:46', 1, 3, 99),
(1917, 'The Shadowy Death', 'Luctus tincidunt suspendisse felis gravida enim suscipit. Dolor egestas facilisis aliquam massa per curabitur aliquet, dictum mi vestibulum nunc quisq', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2018-10-09', 0, '24:34', 1, 4, 99),
(1918, 'The Danger\'s Flight', 'Amet suspendisse et condimentum consequat dictumst lectus himenaeos elementum. Sit amet nulla id ultricies litora inceptos. Ipsum amet elit eleifend n', 'entities/videos/3.mp4', 0, '2019-10-12 22:07:53', '2016-10-16', 0, '37:56', 1, 5, 99),
(1919, 'The Women of the Roses', 'Sit amet adipiscing non tempor posuere ultricies eget urna laoreet nam dignissim habitant tristique netus. Non sapien maecenas tortor tellus cubilia p', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2014-08-31', 0, '39:34', 1, 6, 99),
(1920, 'The Dwindling Voyage', 'Erat ut fusce lectus fermentum potenti. Luctus nibh fringilla ante orci quam condimentum lectus magna enim duis morbi. Adipiscing tincidunt auctor tor', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2000-12-30', 0, '21:22', 1, 7, 99),
(1921, 'Voyager in the Lord', 'Erat metus eleifend ultrices tellus aliquam fringilla proin vivamus vel pellentesque inceptos. Elit erat lobortis nunc mollis est ultrices fusce variu', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2009-02-03', 0, '24:56', 1, 8, 99),
(1922, 'The Force of the Silence', 'Interdum lobortis integer tortor scelerisque nisi class odio potenti duis senectus. Consectetur viverra lobortis leo lacinia tempor molestie curae ult', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2018-12-05', 0, '26:27', 1, 9, 99),
(1923, 'The Tale\'s Door', 'Praesent malesuada vitae posuere dui lectus accumsan duis. Ligula eu curabitur. Mi nulla mattis ligula varius dapibus consequat inceptos accumsan nequ', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-11-11', 0, '47:42', 1, 10, 99),
(1924, 'Obsession in the Spark', 'Mattis ac condimentum blandit. Lorem mi nulla vitae tincidunt a aliquam purus massa posuere condimentum bibendum nam imperdiet aenean. At quisque proi', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2007-02-16', 0, '44:12', 2, 1, 99),
(1925, 'Silver Twilight', 'Consectetur praesent hac conubia blandit habitant morbi iaculis. Non maecenas auctor molestie nullam urna dictumst sagittis inceptos enim odio neque. ', 'entities/videos/2.mp4', 0, '2019-10-12 22:07:53', '2003-08-12', 0, '37:40', 2, 2, 99),
(1926, 'The Tale\'s Door', 'In malesuada nunc felis ante orci posuere eget pretium turpis diam vehicula tristique. Finibus a quisque commodo conubia nostra neque elementum suscip', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2009-02-11', 0, '29:35', 2, 3, 99),
(1927, 'Obsession in the Spark', 'Malesuada erat velit felis varius ornare porttitor condimentum commodo vel per nostra donec magna. Erat lobortis facilisis primis per turpis, nibh var', 'entities/videos/6.mp4', 0, '2019-10-12 22:07:53', '2008-08-13', 0, '26:52', 2, 4, 99),
(1928, 'Voyager in the Lord', 'Molestie fringilla tempus conubia congue, adipiscing nulla in sapien at id lobortis quis molestie massa fringilla aptent blandit nisl. Consectetur nul', 'entities/videos/4.mp4', 0, '2019-10-12 22:07:53', '2013-07-14', 0, '50:12', 2, 5, 99),
(1929, 'Shard of Dragon', 'Consectetur semper varius ornare dui lectus donec blandit sodales suscipit dignissim. Mi nulla etiam vitae lobortis luctus tincidunt mollis et maximus', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2001-02-21', 0, '43:50', 2, 6, 99),
(1930, 'Silver Twilight', 'Etiam lobortis mauris quis pharetra urna consequat rhoncus blandit. Amet in viverra nibh ac semper tortor tempus maximus turpis suscipit. Dictum suspe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2012-10-12', 0, '34:59', 2, 7, 99),
(1931, 'Voyager in the Lord', 'Maecenas ac quisque molestie augue maximus taciti turpis, amet mi mattis nibh tempus class inceptos blandit ullamcorper. Metus semper est faucibus ant', 'entities/videos/5.mp4', 0, '2019-10-12 22:07:53', '2015-12-24', 0, '34:12', 2, 8, 99),
(1932, 'The Women of the Roses', 'Placerat et dictumst lectus libero himenaeos potenti. Cubilia libero risus. Etiam justo lacinia felis primis eget efficitur ad dignissim aenean. Suspe', 'entities/videos/1.mp4', 0, '2019-10-12 22:07:53', '2006-07-26', 0, '24:31', 2, 9, 99),
(1933, 'Name of Elves', 'Interdum in lacus habitasse. Finibus vitae pulvinar felis sagittis pellentesque elementum vehicula tristique nisl, amet eleifend tempor proin dapibus ', 'entities/videos/4.mp4', 1, '2019-10-12 22:07:53', '2016-08-04', 0, '44:11', 0, 0, 65);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1934;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
