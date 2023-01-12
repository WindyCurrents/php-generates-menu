-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Sty 2023, 13:34
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza2p`
--
CREATE DATABASE IF NOT EXISTS `baza2p` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `baza2p`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `config`
--

CREATE TABLE `config` (
  `ID` int(11) NOT NULL,
  `ID_Menu` int(11) NOT NULL,
  `Treść` varchar(15) NOT NULL,
  `Funkcja` varchar(25) NOT NULL,
  `Opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `config`
--

INSERT INTO `config` (`ID`, `ID_Menu`, `Treść`, `Funkcja`, `Opis`) VALUES
(1, 2, 'Rejestracja', 'register.php', 'Rejestruje użytkownika?'),
(2, 1, 'Logowanie', 'login.php', 'Loguje użytkownika???\r\nO co cho.'),
(3, 3, 'Wyjście', 'logout.php', 'Prawdopodobnie wylogowuje.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Unikalność` (`ID_Menu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `config`
--
ALTER TABLE `config`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
