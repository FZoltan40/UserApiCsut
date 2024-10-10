-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 10. 09:35
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `userscsut`
--
CREATE DATABASE IF NOT EXISTS `userscsut` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `userscsut`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newusers`
--

CREATE TABLE `newusers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `License` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `newusers`
--

INSERT INTO `newusers` (`Id`, `Name`, `Age`, `License`) VALUES
('00535fe8-42e8-454a-8896-e4ea8af57f96', 'Mahala Ogle', 56, 0),
('02e71edb-71e3-4dd7-8e51-b2f9e3ebe686', 'Ilario Mease', 61, 1),
('03dbcb0b-5b26-49f1-91ad-dde3ac32ba48', 'Suzie Hammor', 41, 0),
('046ef558-e465-40ee-b9f0-297d3a6be7cf', 'Bobbye Lambell', 90, 1),
('09136599-0d7c-4459-b87f-9aa7b5c09ca7', 'Reinhard Shotter', 43, 1),
('0d2c2b7d-1520-4d11-bca0-3afad4238e81', 'Maxine Lucien', 18, 1),
('0f5f082e-9307-4e0c-b576-0a0e05c808eb', 'Frasquito Nealy', 70, 1),
('1072f846-0135-4395-8503-43143e6df373', 'Gretal Beal', 28, 0),
('11939477-a4b9-4d98-95c5-6a267344a7af', 'Fifi Crick', 21, 0),
('11f5cc04-2b38-43c3-8394-db741ba15026', 'Lyell Dulanty', 55, 1),
('1309bdf6-faa7-43a3-96f5-6b3febef1ebb', 'Cassandre Zoephel', 85, 1),
('14074239-7b11-4c9f-9515-b6213724a01a', 'Kania Gennings', 5, 0),
('1449192d-5be7-4d08-bc0c-058a32c6073a', 'Halie Stringer', 89, 0),
('14760a37-7389-4fb1-91f0-28e68d269f5a', 'Nelly Gifkins', 21, 1),
('1a22913d-3f33-4beb-9e95-5ab1b0f84271', 'Flemming Cullingford', 71, 0),
('1a7895a5-6162-4d36-b41b-c090c67e041a', 'Bridgette Reavell', 100, 0),
('1ba4e965-3292-40c4-9292-376155aeee84', 'Fayette Cunnow', 13, 1),
('1c2ddfc6-5fa8-45ef-aa14-b44842fecfac', 'Shelton Wardle', 31, 0),
('1d4df5d6-7227-46b2-b8e0-4141c734a481', 'Gianni Briat', 52, 1),
('1e6e25bc-a664-4c96-a5df-df7456d2e868', 'Caroljean Drever', 91, 0),
('1fd289fc-8610-4bf5-8b79-aea4b43eb61b', 'Dolly Keenor', 40, 0),
('22f80239-72de-4e36-8a31-9fa2147d99f2', 'Devlin Heinrici', 49, 0),
('28b26c42-55a8-47fe-9593-5cf0f0b6e866', 'Merrilee Minards', 17, 1),
('2cc1142c-1bfe-4af0-be6c-80b52790d1e6', 'Ximenez Dyzart', 13, 0),
('2dbafaf7-cc2a-4783-8c58-104f5b9fa748', 'Genvieve Edlin', 10, 1),
('2fba5f4f-9d08-4cd9-bb86-adc2611a7512', 'Dionysus Gantlett', 67, 0),
('31d7043d-2163-4f9d-baee-d9a1718348f3', 'Niccolo Rimington', 12, 1),
('32d5009d-0f8d-475f-9e6d-4973ec5e987d', 'Jaymee Gorriessen', 66, 1),
('334599d0-3e29-4f1b-bcb4-4834e98144f9', 'Louis Gallop', 92, 1),
('33ecb4c9-288a-46f8-a86a-3e7b177894c9', 'Vernice Byne', 33, 0),
('381b85f0-9012-40d0-8c74-1750b406a278', 'Netta Bound', 21, 0),
('38e017cf-518e-427f-8bb5-eb63ea7d7028', 'Nan Fennell', 32, 1),
('3ab42bda-eef7-4904-9ce8-569a46b0b06a', 'Lorelei Kipling', 1, 0),
('4063f60e-bbbf-41de-87ba-7a4a2aec9b23', 'Gae Grieg', 73, 0),
('40bb7024-c802-478e-97ac-0ab82c76bf4f', 'Jannel Feldmark', 13, 1),
('486883f8-fb07-40cd-983f-024e06efe38f', 'Cyrille Janecek', 52, 0),
('4a16f6e6-e5c4-4f5f-8f60-3c8b10c3a9da', 'Florry Vannini', 5, 0),
('4b59b503-43b0-49a5-a6ed-5deb974ea358', 'Laurent Oxbe', 77, 1),
('55d62a81-a075-4d81-b606-8ced1f03df50', 'Frasco Buard', 11, 0),
('58578950-6e6f-4ab3-bc18-b90bf19a63bf', 'Whitby Dews', 99, 0),
('5e1ad3dc-16c7-45e2-a4b2-3bc27dc7fc1e', 'Welby Labrenz', 29, 0),
('60557195-efd2-48bd-b663-d1953281790e', 'Manon Bartles', 83, 0),
('62f523dc-6285-4590-b112-7ac6356083d2', 'Wilhelmina Elfitt', 59, 0),
('6acf0b00-43e3-43e8-981c-f6e8c689a70f', 'Ramon Hebblewhite', 65, 0),
('6f1c3600-8263-47e3-8e96-a0c8c51e46e4', 'Lusa Packington', 32, 1),
('6f657075-a283-4b39-a9e6-5ef50dd7ccb2', 'Leticia Fawdrey', 22, 0),
('70fdeba3-16ec-4b98-b5c5-e6a3d5548936', 'Bobby Collison', 98, 0),
('78523575-541b-4387-9c0c-1a08b0be6730', 'Dulcy Edie', 81, 1),
('7948c914-25e7-4164-a34e-8ab9ad5d35ac', 'Mirelle Meni', 32, 0),
('7949e8e3-9da6-4ce0-b1ca-d922e816c347', 'Padgett Knok', 35, 1),
('7ad44899-9ffd-43a6-84cc-e39a2d10dbe0', 'Esra McKeggie', 77, 0),
('7e6a6a5d-a558-47cb-aad5-32ed448e4fd0', 'Arv Crosi', 88, 1),
('8dbf9186-2944-4c60-9d1e-93c4416eaf2e', 'Tonnie Bronot', 30, 0),
('930e455a-f181-4505-acba-0ac304f91393', 'Christos Vergine', 29, 0),
('9439ba11-16e8-47c4-928f-dfa1d4412dfd', 'Wildon Lammie', 87, 1),
('9b4ecae1-3857-4c4c-a37a-659cfd46c4f0', 'Caron Farnill', 21, 1),
('9c4d61dc-a5b4-4cea-ba6d-97fe596a1e2e', 'Niccolo Tookey', 90, 1),
('9cb57b8b-9276-4d03-80b2-bdc14a250f41', 'Orelia Segrave', 17, 1),
('9d74f03a-c9b8-4438-a9d8-3bc972c88887', 'Northrup Davies', 75, 1),
('a01dfde3-701d-4b0f-a602-268073678db8', 'Weider Chiene', 23, 0),
('a0b619f5-3862-4ab9-af7b-a44d797e892c', 'Jameson Greensite', 71, 1),
('a1f8d956-e0cf-49cc-bff3-82eb18ca8d00', 'Donnie Nineham', 52, 0),
('a488c7c6-f5cd-4864-abd4-26d7df6273bb', 'Guenevere Topley', 37, 0),
('a911589b-defa-471b-8489-96ea1b2bca17', 'Fin Dael', 33, 0),
('aa45e750-35c9-4707-8488-9657b87da5d6', 'Sheffield Punton', 48, 1),
('aefe46bb-fa90-4ac3-baca-4b0db45c140d', 'Roderick Lillicrop', 87, 0),
('b1fb7425-1631-4202-9360-e22865ef44d4', 'Evelina Rodolfi', 13, 1),
('b39885bf-c72f-4793-baa6-81fbf35355eb', 'Delmer Branscombe', 52, 1),
('b3d7f925-bda7-4998-a94e-720f869f1848', 'Ardelle Morkham', 17, 0),
('b4ad697e-ded5-4593-957f-41d3e77112cc', 'Constanta Blackhall', 83, 1),
('b5454995-a8c1-4fc7-8dd7-acb451dcbde0', 'Eleen Digger', 29, 1),
('b8154e4c-d7c2-42de-a118-63d678305520', 'Renell Piolli', 16, 1),
('ba38b8a8-1b8b-449f-8baa-92b0915c7b7e', 'Rabi Hattoe', 71, 0),
('ba3f2292-d39c-4533-bc5b-21c04f9405d1', 'Valina Whillock', 57, 0),
('bc7fd56f-0beb-4d42-bc41-80feb528100c', 'Reilly Erricker', 17, 0),
('c00e0ddd-c8e7-48ab-a2cd-251746db8560', 'Siana Hardcastle', 86, 0),
('c0ebfd0c-44a4-4551-952d-e629ac0b261f', 'Neville Happer', 36, 0),
('c14d5898-b8a1-48da-b2e6-e01f76a49608', 'Stacee Minchinton', 43, 0),
('c2e79135-d5bf-45a8-984c-338ef5329126', 'Franciska Guerriero', 81, 0),
('c6d34cd9-f692-4130-8102-0de792116070', 'Valentijn Hissie', 12, 0),
('cb35db00-6cf0-4b51-a7f6-7d096857ac12', 'Elna Kingston', 55, 1),
('cbc687a0-cc5a-428f-95b3-6a129d6c452b', 'Jaime Preskett', 54, 0),
('ce85c127-874a-477e-a381-804a205db903', 'Nilson O\'Duilleain', 64, 1),
('cf4bbf37-3fa7-47ed-b6e1-25ca9a65539b', 'Deana Godrich', 88, 0),
('d09baaef-e61b-4751-aef6-d0f1aab78972', 'Tybalt Gallyhaock', 14, 1),
('d0cbca3d-d78c-47fd-a736-02a540f1d963', 'Bartholemy Antoniutti', 87, 1),
('d3d42901-b39f-4b0f-b2b6-013733edf999', 'Peadar Prator', 77, 0),
('d4c6751c-8334-4740-a10b-dff012b6ac7c', 'Mariquilla Metham', 38, 0),
('d80be845-cbfa-4fed-8e16-7412c30de468', 'Kim Bowe', 26, 1),
('d9a4b373-d11a-4a08-b293-0ff23ff47069', 'Ernst Kulver', 71, 0),
('def2febb-4a70-45ad-b651-fb3aaafd6e4e', 'Danny Routhorn', 94, 0),
('dfaf4ab1-4c38-4ebe-a6ff-a56bdbcdd64a', 'Meredith Boutwell', 50, 1),
('ec8d5573-2207-45e1-af5c-8a24da481901', 'Glen Prestwich', 92, 0),
('f076a245-4120-422d-9e09-5f9de9e3aba0', 'Jaquelin Robeson', 33, 1),
('f0911477-7cc7-4e12-9890-87440fe83c5c', 'Mela Ponceford', 82, 0),
('f1e9d2d1-5288-44f9-8b4d-23a50d6eadc2', 'Kania Arguile', 70, 1),
('f2abe628-da44-41a3-8e71-174602a4dba6', 'Artair Mayhead', 54, 1),
('f4957d9a-ed02-4965-9763-9b0827315a74', 'Rudyard Gosforth', 65, 0),
('f634faaa-9ed5-4a9f-8cad-c5fe1dfb465b', 'Maurizio Leonida', 71, 1),
('f95443c0-e705-4ea1-a5f0-293553a3c1d1', 'Winthrop Lesly', 19, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241010072037_CreateUserDatabase', '8.0.10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `newusers`
--
ALTER TABLE `newusers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
