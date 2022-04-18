-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1:3306
-- Vytvořeno: Pon 18. dub 2022, 20:08
-- Verze serveru: 5.7.31
-- Verze PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `project`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `idbook` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `author` varchar(45) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `genre` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
  `release_date` varchar(45) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `language` varchar(45) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  PRIMARY KEY (`idbook`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `book`
--

INSERT INTO `book` (`idbook`, `name`, `author`, `genre`, `release_date`, `language`) VALUES
(1, 'Bílá nemoc', 'Karel Čapek', 'Divadelní hra, Drama', '1937', 'Česky'),
(2, 'Ocelové město', 'Jules Verne', 'Science fiction, Dystopická fikce, Utopická literatura', '1879', 'Česky'),
(3, 'Komu zvoní hrana', 'Ernest Hemingway', 'Román, Fikce, Válečný příběh', '1940', 'Česky'),
(4, 'For Whom the Bell Tolls', 'Ernest Hemingway', 'Novel, Fiction, War Story', '1940', 'English'),
(5, 'Sbohem armádo!', 'Ernest Hemingway', 'Román, Fikce, Válečný příběh, Realismus', '1929', 'Česky'),
(6, 'A Farewell to Arms', 'Ernest Hemingway', 'Novel, Fiction, War Story, Realism', '1929', 'English'),
(7, 'Stařec a moře', 'Ernest Hemingway', 'Román, Námořní fikce', '1952', 'Česky'),
(8, 'The Old Man and the Sea', 'Ernest Hemingway', 'Novel, Naval Fiction', '1952', 'English');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
