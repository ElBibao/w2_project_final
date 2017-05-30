-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 29. Jan 2017 um 23:50
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `W2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Hotel`
--

CREATE TABLE `Hotel` (
  `Hotel_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Sterne` int(11) NOT NULL,
  `Zimmer_Anzahl` int(11) NOT NULL,
  `Hotelbeschreibung_ID` int(11) NOT NULL,
  `Bild_ID` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Hotel`
--

INSERT INTO `Hotel` (`Hotel_ID`, `Name`, `Sterne`, `Zimmer_Anzahl`, `Hotelbeschreibung_ID`, `Bild_ID`) VALUES
(1, 'Parkhotel Prinz Carl', 4, 90, 0, ''),
(2, 'Dom-Hotel', 4, 55, 0, ''),
(3, 'Asgard Hotel', 3, 63, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Hotelbeschreibung`
--

CREATE TABLE `Hotelbeschreibung` (
  `Hotelbeschreibung_ID` int(11) NOT NULL,
  `Beschreibung` text CHARACTER SET latin1 COLLATE latin1_german2_ci NOT NULL,
  `Hotel_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Hotelbeschreibung`
--

INSERT INTO `Hotelbeschreibung` (`Hotelbeschreibung_ID`, `Beschreibung`, `Hotel_ID`) VALUES
(1, 'Inmitten eines ruhigen Wormser Parks liegt das elegante 4-Sterne-Hotel Prinz Carl nur einen 10-minuetigen Spaziergang von den historischen Sehenswuerdigkeiten der Stadt entfernt. Freuen Sie sich auf eine Lobby-Bar, einen exklusiven Weinkeller und kostenlose Parkplaetze.\n\nAlle Zimmer, Suiten und Apartments des Parkhotels Prinz Carl verfuegen ueber Sat-TV, WLAN und ein eigenes Badezimmer.\n\nJeden Morgen bedienen Sie sich im Prinz Carl Hotel am Fruehstuecksbuffet. Das Restaurant und das Bistro servieren regionale und internationale Spezialitaeten.\n\nIm Parkhotel Prinz Carl wohnen Sie nahe dem Lutherdenkmal nur wenige Schritte von der Synagoge, dem juedischen Friedhof und dem Wormser Dom entfernt. Der Bahnhof von Worms liegt nur 7 Gehminuten entfernt. ', 1),
(2, 'Kostenfreie Parkplaetze und kostenfreies WLAN erwarten Sie in diesem 4-Sterne-Hotel. Sie wohnen 3 Gehminuten vom Dom entfernt, neben dem Obermarkt im Zentrum von Worms.\n\nAlle Zimmer im Dom-Hotel verfuegen ueber Kabel-TV, einen Safe und eine Minibar. Das eigene Badezimmer ist mit einem Haartrockner ausgestattet.\n\nMorgens wird Ihnen im Dom-Hotel ein Fruehstuecksbuffet serviert. Gruppen ab 20 Personen koennen eine Reservierung im klimatisierten Restaurant Bacchus vereinbaren.\n\nDie historischen Sehenswuerdigkeiten der Stadt erreichen Sie vom Dom-Hotel aus bequem zu Fuss. Bis zum Bahnhof von Worms laufen Sie 5 Minuten.\n\nDie Lage in dieser Unterkunft ist auch eine der besten in Worms! Gaesten gefaellt die Lage besser als in anderen Unterkuenften in dieser Gegend. ', 2),
(3, 'Das unverwechselbare Asgard Hotel begruesst Sie im Herzen der Stadt Worms. Das Hotel befindet sich etwa 600 m vom historischen Zentrum von Worms entfernt und bietet Ihnen einen idealen Ausgangspunkt fuer Besichtigungstouren, zum Einkaufen und zum Wahrnehmen von Geschaeftsterminen.\n\nDie geschmackvoll eingerichteten Zimmer im Asgard verfuegen ueber kostenfreies WLAN und 2 der Zimmer sind rollstuhlgerecht gestaltet. Alle Etagen sind mit dem Aufzug erreichbar.\n\nIn der finnischen Sauna des Hotels koennen Sie entspannen und im rund um die Uhr geoeffneten Bistro des Asgard geniessen Sie Snacks und Getraenke.\n\nLaut Bewertungen bietet diese Unterkunft das beste Preis-Leistungs-Verhaeltnis in Worms. Im Vergleich zu anderen Unterkuenften in dieser Stadt bekommen Gaeste hier mehr fuer ihr Geld. ', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `securitytokens`
--

CREATE TABLE `securitytokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `securitytoken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `securitytokens`
--

INSERT INTO `securitytokens` (`id`, `user_id`, `identifier`, `securitytoken`, `created_at`) VALUES
(1, 5, '5dede2fd06557ecdb3fbf26849bbd6d5', '12a78489a3e5ec456e0fd5e141df6ee56916fe10', '2017-01-28 15:28:45'),
(2, 5, '3fdc25df224e11fd11e79a8243cebf47', '5e8739bd2beb9d53467d6e427f823b3fc38724ed', '2017-01-28 17:52:30'),
(3, 5, '8c5b59db7c675dabbae14bd3a2ac9454', '8fe8a2b1ad28ae4cc95caf314a1052a5ddd0d539', '2017-01-28 19:16:25'),
(4, 5, '86ff790cbbb7bf6cfa2e4d9e95e4115a', 'bc73273fd9455428d3a0cedc18072da88f3f16d2', '2017-01-28 19:16:41'),
(5, 5, 'aa413b2c79537481c4942fd654388049', '733e74bf0e9d130e83e135a9f2ab1062e2ac3650', '2017-01-28 19:50:55'),
(6, 5, '80fea95b5ce649e2ff44b4edf13e5668', '88d7bdb64e49d7107b34ce8443b782ad2c41b4e9', '2017-01-28 22:31:59'),
(7, 5, '90bb2af6550e538e9db1fa1487ea3bb6', '97f5bb60d3faa79a754e70283a50f5819f194c48', '2017-01-29 10:51:22'),
(8, 5, 'bc2b335fc800f6219e1bfde9629f8f8e', '9256178686e9297f9968c98d665d59ba77bcfa58', '2017-01-29 11:39:04'),
(9, 5, '53288d7fb4365b6f266215f6dda49f8f', 'b67df02f6f6a86b41831cada2c590ef457de15f3', '2017-01-29 12:08:20'),
(10, 5, '56a5d79d9e756a859b891b23f9791311', '6ac98a2d5e1cace029db4802109cc7a5bb110142', '2017-01-29 12:10:18'),
(11, 5, 'd9838a00063bc3cdb38cda747c1f385b', '8b659f335f322ecc0bab2463d9aa3dbfff2d1e0e', '2017-01-29 12:14:03'),
(12, 5, '49d514c071a8077383686b62f752ba24', 'bac30d489fc623925fb192913afdb9cba93ec9bb', '2017-01-29 12:31:52'),
(13, 5, 'ab8ef5a28e268a10bb0ea467e75305dd', '4a1ba4acf793dbaed1506d697e4f3aec9a80bf21', '2017-01-29 12:43:03'),
(14, 5, 'f1d62eed8a8ba5b4b77978a613846975', '4d6f7dffa75b87e5d5c63ebc1f8905b1ab39e310', '2017-01-29 12:45:44'),
(15, 5, '415e87f7b80ceebc1c730c4cbc819924', '06703aa5ff06440c55beadfd4419aacb879cf6f2', '2017-01-29 13:04:40'),
(16, 5, '4d07fae16277ace3718e72124f801c6a', '2e426c7e305d274a6559ef88cb219d07f78fbfcd', '2017-01-29 15:10:56'),
(17, 5, 'e54fb0e26847821dc845901724180fae', '22c366963476bfdcf51412f54e6476714fddb561', '2017-01-29 15:11:12'),
(18, 5, 'eb145fcddce8c3ca85617845b03a6d4f', 'aa70364ec2cf940245aa8bfa4c28f3a5abc42631', '2017-01-29 15:11:33'),
(19, 5, 'a3d29454faae5c0e96d635bb69a0bbc8', 'fa601479e375e601e5e4b595534cfe5ba1b7aec8', '2017-01-29 15:13:56'),
(20, 5, 'c04ea79d58dde41ddadc5aaf58e57d7b', '6bea1e03f2fdc69b8878e272ef9a6ab87cbcc253', '2017-01-29 15:58:33'),
(21, 5, 'c88e6068814280037b0868ec886399b4', 'a6a9fd73f389ccd82fa97de2e54222f0c607d068', '2017-01-29 16:27:40'),
(22, 5, '861aa3a2a183806727967862b19608eb', '1f63124a070e23fdc2423368889a47f6bdcbaff3', '2017-01-29 18:41:12'),
(23, 5, '44ecba21f3a248bf6501cf2abf3a80a1', 'f1d725da04915c532658303952c1d0ee02dc0a35', '2017-01-29 19:17:49'),
(24, 5, '216175a55d0a5cf9524f8cdc063ea71b', 'd9a3a8e2b4739c727d3dd996b63ecec292f03ca3', '2017-01-29 19:32:39'),
(25, 9, 'aa3db20dc4fefd54747a2796a4121f41', '8290245a0548d1c290499092469f825e6ca2731e', '2017-01-29 20:27:00'),
(26, 9, '49e46d704b467073e6afccdee17a8080', 'dfd99780dcad2c1643a3682a6746b7367ed634e4', '2017-01-29 20:37:33'),
(27, 5, 'c91a8913181385deb6a6771d8820d4c1', '7998b034d049189733a19f62a783585b6468ce2d', '2017-01-29 20:41:26'),
(28, 10, '23052f0ab4d6ea171062246611529dfd', 'ba09aae0e28f12d5ee35417f770dea26229e9643', '2017-01-29 22:23:18'),
(29, 10, '851670706644c195397a5de9dafd53bf', '860421161cb15adf5a6e093edbf46f411d6a4a73', '2017-01-29 22:45:47');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Tipp`
--

CREATE TABLE `Tipp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Tipp` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Tipp`
--

INSERT INTO `Tipp` (`id`, `user_id`, `Tipp`, `date`) VALUES
(21, 10, 'Diese Seite ist fÃ¼r Nutzer eigene Tipps und Empfehlungen. ', '0000-00-00 00:00:00'),
(28, 10, '.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passwort` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `email`, `passwort`, `username`, `created_at`, `updated_at`) VALUES
(1, 'test@test.de', '$2y$10$qCgb4MKzbMKAqUU2LOFBQ.wGoAD6yBElFA7V7EPwK.QGCViJjx4mu', 'test123', '2017-01-28 14:24:52', NULL),
(3, 't.biba@gmx.de', '$2y$10$cP3wGKZ/bhcSSecHQADvruLt5vqRZQ6HIzrZOiWTj6Jbho0gi0WcG', 'elbibao', '2017-01-28 15:06:35', NULL),
(4, 'test@test2.de', '$2y$10$p5/DNp0t0mui1j59JQgltecfYR5eaeF1X08.G3.oiz6dyS8f5HYU.', 'testtesttest', '2017-01-28 15:07:10', NULL),
(5, 'moritz@gmx.de', '$2y$10$eCSleZsgo02buu9auJ5E6OB/pCmG2WoNr2ojsG7Wb61goQz98PEqy', 'moritz', '2017-01-28 15:28:35', NULL),
(6, 'test@test3.de', '$2y$10$sIZX.VHpxxWbuRNA5zs7lOH.90pgQ.kGcbI89.PmkHQ.WOv8RhF.O', 'asd', '2017-01-28 22:31:52', NULL),
(7, 'blubb@web.de', '$2y$10$InZ8tmLeEM/ePNq6akWwJ.dWegkhOan2hyvArveUuI32Y9ZONnMem', 'lala', '2017-01-29 19:11:34', NULL),
(8, 'sadfasdf@gmx.de', '$2y$10$MlgW6G7zpY6B8fMZI26uB.bbBWEPYqzz0m0cHj/nGz4eJVF3P1Iey', 'dsfasdf', '2017-01-29 19:32:58', NULL),
(9, 'q@q.de', '$2y$10$HWs9Ewe93cbeBKG/W1AlvOBM4WOU5vabd3DYft.t29KM8IaqhCdda', 'q', '2017-01-29 20:26:34', NULL),
(10, 'admin@admin.de', '$2y$10$hnLG8gjG8MD6yuqKdP4lTOFPYU9MPAhF1ATlznpymE1xzP.XFVmKu', 'Admin', '2017-01-29 22:23:02', NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Hotel`
--
ALTER TABLE `Hotel`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indizes für die Tabelle `Hotelbeschreibung`
--
ALTER TABLE `Hotelbeschreibung`
  ADD PRIMARY KEY (`Hotelbeschreibung_ID`);

--
-- Indizes für die Tabelle `securitytokens`
--
ALTER TABLE `securitytokens`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Tipp`
--
ALTER TABLE `Tipp`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_2` (`email`,`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `securitytokens`
--
ALTER TABLE `securitytokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT für Tabelle `Tipp`
--
ALTER TABLE `Tipp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
