-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2013 at 05:22 PM
-- Server version: 5.1.68-cll
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `x1pt_gpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `napomena` text CHARACTER SET utf8 NOT NULL,
  `lastactivity` text NOT NULL,
  `boja` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `username`, `password`, `email`, `status`, `napomena`, `lastactivity`, `boja`) VALUES
(1, 'Admin', 'Hosting', 'Admin', 'hosting1234', 'info@hosting.com', 'admin', 'Tekst bla bla', '1366751062', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

CREATE TABLE IF NOT EXISTS `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `ip` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `ftp_port` int(11) NOT NULL,
  `ssh_port` int(11) NOT NULL,
  `location` text CHARACTER SET utf8 NOT NULL,
  `slobodan` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE IF NOT EXISTS `chat_messages` (
  `Text` text,
  `Autor` text NOT NULL,
  `Datum` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`Text`, `Autor`, `Datum`, `ID`) VALUES
('aloooo', '<span style="color: red;">Admin Hosting</span>', '23 Apr 2013, 22:47:0', 73);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `lastactivity` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `fname`, `lname`, `email`, `password`, `lastactivity`) VALUES
(1, 'Demo', 'Demo', 'demo@hosting.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '1366807668');

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE IF NOT EXISTS `ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logovi`
--

CREATE TABLE IF NOT EXISTS `logovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `boxid` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vreme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modovi`
--

CREATE TABLE IF NOT EXISTS `modovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `putanja` text CHARACTER SET utf8 NOT NULL,
  `ime` text CHARACTER SET utf8 NOT NULL,
  `igra` text CHARACTER SET utf8 NOT NULL,
  `komanda` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  `mapa` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modovi`
--

INSERT INTO `modovi` (`id`, `putanja`, `ime`, `igra`, `komanda`, `hidden`, `mapa`) VALUES
(1, '/home/gamefiles/publicc', 'Public Mod', 'Counter-Strike 1.6', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate 100 +map {$map} +servercfgfile server.cfg', 0, 'de_dust2'),
(2, '/home/gamefiles/cs', 'Click Host Pub', 'CS', './hlds_run -game cstrike +ip {$ip} +port {$port} +maxplayers {$slots} +sys_ticrate 300 -pingboost 0 +map {$map} +servercfgfile server.cfg', 0, 'de_dust2');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `text`, `hidden`) VALUES
(1, 'Test', '2013-04-27', 'Test 123 123 X1PT gPanel<br><p>            </p>\r\n            ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `online` varchar(2) DEFAULT NULL,
  `poruka` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serveri`
--

CREATE TABLE IF NOT EXISTS `serveri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `mod` text COLLATE latin1_general_ci NOT NULL,
  `map` text CHARACTER SET utf8 NOT NULL,
  `port` text COLLATE latin1_general_ci NOT NULL,
  `fps` int(11) NOT NULL DEFAULT '300',
  `slotovi` int(11) NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `istice` date NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `startovan` int(11) NOT NULL DEFAULT '0',
  `free` text COLLATE latin1_general_ci,
  `uplatnica` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tiketi`
--

CREATE TABLE IF NOT EXISTS `tiketi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text CHARACTER SET utf8 NOT NULL,
  `datum` text CHARACTER SET utf8 NOT NULL,
  `naslov` text CHARACTER SET utf8 NOT NULL,
  `zatvoren` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `tiketi_odgovori`
--

CREATE TABLE IF NOT EXISTS `tiketi_odgovori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiket_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `odgovor` text CHARACTER SET utf8 NOT NULL,
  `vrijeme_odgovora` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
