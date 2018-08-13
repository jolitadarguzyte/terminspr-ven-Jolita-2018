-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:8889
-- Genereringstid: 27. 06 2018 kl. 14:42:16
-- Serverversion: 5.6.35
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rts_terminprove`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cykler`
--

CREATE TABLE `cykler` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `mærker` varchar(70) NOT NULL,
  `url` varchar(100) NOT NULL,
  `pris` int(11) NOT NULL,
  `farve` text NOT NULL,
  `beskrivelse` text NOT NULL,
  `model` text NOT NULL,
  `kategori_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `cykler`
--

INSERT INTO `cykler` (`id`, `type`, `mærker`, `url`, `pris`, `farve`, `beskrivelse`, `model`, `kategori_nr`) VALUES
(1, 'Mountainbikes', 'Kildemoes', 'MTB1.jpg', 2195, 'rød', 'Her er cyklen for dig, der skal være smart og hurtig. Du får her en supersmart mountainbike, der også er rigtig god til bykørsel. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser og med forskelligt udstyr.', 'Jala', 1),
(2, 'Mountainbikes', 'MBK', 'MTB2.jpg', 2995, 'sort', 'Dette er den ultimative cykel til bykørsel. For her får du en rigtig supersmart og elegant mountainbike. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser, farver og med forskelligt udstyr.', 'Mont blanc', 1),
(3, 'Mountainbikes', 'Mustang', 'MTB3.jpg', 2595, 'blå', 'Er du barn eller ung og gerne vil have en mountainbike kan vi selvfølgelig også magte det. Cyklen fås i hvid med blå eller rød dekoration. Cyklen en særdeles god til bykørsel, så det bliver en leg at cykle til skole.', 'Fun', 1),
(4, 'Racercykler', 'Jensen', 'racer1.jpg', 4995, 'sort', 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små', 'Racer B29', 2),
(5, 'Racercykler', 'Bianchi', 'racer2.jpg', 9599, 'hvid', 'Er du til specialcykler med superudstyr og gode køreegenskaber, så er dette cyklen for dig. Her får du 21 gear med tre klinger. Bremsesystemet er et af de allerbedste på markedet. Cyklen fås i flere størrelser til både kvinder og mænd. Cyklen fås i sølv, sort og rød og blå metalic.', 'Race4', 2),
(6, 'Racercykler', 'Tårnby', 'racer3.jpg', 8995, 'rød', 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små og i farverne sølv, sort og rød og blå metalic.', 'Tvb Racer', 2),
(7, 'Damecykler', 'Tårnby', 'dame1.jpg', 4295, 'hvid', 'Denne elegante cykel er en rigtig god og all-round cykel til den aktive cyklist. Den fås i flere størrelser og i farverne rød og sølv metalic. Cyklen har 7 indvendige gear, fodbremse og håndforbremse.', 'City 3', 3),
(8, 'Damecykler', 'Winther', 'dame2.jpg', 3595, 'blå', 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning', 'Classic 2', 3),
(9, 'Damecykler', 'Winther', 'dame3.jpg', 3999, 'rød', 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning. Synes man at de originale farver er for kedelige, kan den også fås i en lidt mere moderne udgave i farven pink.', 'Classic 2 Pink edition', 3),
(10, 'Damecykler', 'Tårnby', 'dame4.jpg', 4595, 'hvid', 'En god all-round cykel, som fås i flere farver og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 'Street', 3),
(11, 'Herrecykler', 'Winther', 'herre1.jpg', 5550, 'sort', 'En god all-round herrecykel, som fås i sort og sort metallic og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 'Classic', 4),
(12, 'Herrecykler', 'Tårnby', 'herre2.jpg', 4595, 'blå', 'En let og elegant herrecykel til dig, der har brug for en god og solid cykel. Cyklen fås i flere størrelser og farver, bl.a. lys blå metalic, sort metalic og sølv metalic. På cyklen er der monteret et indvendigt Shimanogearsystem med 7 gear. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 'Katmandu', 4),
(13, 'Herrecykler', 'Winther', 'herre3.jpg', 3595, 'blå', 'Denne cykel er for dig, der bare har brug for en cykel uden de store dikkedarer. Her får du en god all-round cykel, der kan holde til de mange gøremål, der er i dagligdagen. Cyklen er monteret med et indvendigt Shimano gearsystem med 5 gear. Cyklen har desuden bagagebærer og støttefod. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 'City Limit', 4),
(14, 'Børnecykler', 'Winther', 'barn1.jpg', 1495, 'rød', 'Her er den første juniorcykel. Cyklen fås til både drenge og piger. Den fås i flere farver. Cyklen passer til aldersgruppen 3 – 6 år. Man kan få støttehjul til cyklen, så det bliver nemmere for barnet at lære at cykle selv', 'WB-1', 5),
(15, 'Børnecykler', 'Winther', 'barn2.jpg', 2195, 'blå', 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med gult og sort stel til drenge og orange og sort til piger. Cyklen har en sort bagagebærer.', 'WB-2', 5),
(16, 'Børnecykler', 'Winther', 'barn3.jpg', 2295, 'rød', 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med rødt og hvidt stel til piger og blåt og hvidt stel til drenge. Cyklen har en sort bagagebærer.', 'WB-3', 5),
(17, 'Børnecykler', 'Winther', 'barn4.jpg', 1695, 'sort', 'Denne smarte cykel er rigtig god, når barnet skal cykle til skole hver dag og også bruge cyklen i de øvrige hverdagssituationer. Cyklen leveres i smarte farver og findes til både drenge og piger.', 'WB-4', 5),
(18, 'Trehjulede', 'Winther', 'trehjulet1.jpg', 548, 'rød', 'Her får dit barn en god og solid cykel i nogle spændende farver. Lige til at tage sig en god cykeltur på. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 'Mini', 6),
(19, 'Trehjulede', 'Winther', 'trehjulet2.jpg', 595, 'blå', 'er får den gode velkendte røde trehjulede cykel, som gennem generationer har været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 'midi', 6),
(20, 'Trehjulede', 'Winther', 'trehjulet3.jpg', 548, 'rød', 'Den trehjulede velkendte trehjulede cykel fås også i andre farver, f. eks. I pink og blå. Gennem generationer har været den trehjulede cykel altid været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 'maxi', 6),
(22, 'asdasd', 'asdaSASDASDAS', '', 123123123, 'asD', 'ASDASDADASDASDASD', 'asdASDASDASDAS', 2),
(24, 'Jolita', 'Jolitos', '', 23467, 'red', 'æaldojvalshflia æaoeuflegasfk', 'Special', 4),
(25, 'Jolita', 'Jolitos', '', 23467, 'red', 'æaldojvalshflia æaoeuflegasfk', 'Special', 0),
(26, 'Jolita', 'Jolitos', '', 23467, 'red', 'æaldojvalshflia æaoeuflegasfk', 'Special', 0),
(27, 'Jolita', 'Jolitos', '', 23467, 'red', 'æaldojvalshflia æaoeuflegasfk', 'Special', 0),
(28, 'Jolita', 'Jolitos', '', 23467, 'red', 'æaldojvalshflia æaoeuflegasfk', 'Special', 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategorier`
--

CREATE TABLE `kategorier` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `kategori_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `kategorier`
--

INSERT INTO `kategorier` (`id`, `type`, `url`, `kategori_nr`) VALUES
(1, 'Mountainbikes', 'mustang_race.jpg', 1),
(2, 'Racercykler', 'racer2.jpg', 2),
(3, 'Damecykler', 'dame2.jpg', 3),
(4, 'Herrecykler', 'herre2.jpg', 4),
(5, 'Børnecykler', 'barn1.jpg', 5),
(6, 'Trehjulede', 'trehjulet3.jpg', 6),
(7, 'Cykelhjelme', 'hjelm1.jpg', 7),
(8, 'Cykelcomputere', 'computer4.jpg', 8),
(9, 'Værktøj', 'vaerktoej2.jpg', 9),
(10, 'Cykeltøj', 'toej4.jpg', 10),
(11, 'Barnestole', 'stol1.jpg', 11),
(12, 'Reservedele', 'reserve2.jpg', 12);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kontakt_oplysninger`
--

CREATE TABLE `kontakt_oplysninger` (
  `id` int(11) NOT NULL,
  `navn` varchar(50) NOT NULL,
  `gade` varchar(50) NOT NULL,
  `by_post` varchar(30) NOT NULL,
  `tlf` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `kontakt_oplysninger`
--

INSERT INTO `kontakt_oplysninger` (`id`, `navn`, `gade`, `by_post`, `tlf`, `fax`, `email`, `url`) VALUES
(1, 'City Cykler A/C', 'Nygade 65', '9000 Alborg', 'Tlf: (+45) 98 10 10 11', 'Fax: (+45) 98 10 10 12', 'Mail: contact@cc.dk', 'map_Denmark.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `nyheder`
--

CREATE TABLE `nyheder` (
  `id` int(11) NOT NULL,
  `mærke` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `beskrivelse` text NOT NULL,
  `url` varchar(50) NOT NULL,
  `pris` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `nyheder`
--

INSERT INTO `nyheder` (`id`, `mærke`, `model`, `beskrivelse`, `url`, `pris`) VALUES
(1, 'Special', 'mano', 'qælkhjdclslCZN zc z.klch jk.zb cæloja-lsbcjksc zbcnjk.zhc jbxc x', 'mustangaero.jpg', 5678);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `udstyr`
--

CREATE TABLE `udstyr` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `mærke` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `beskrivelse` text NOT NULL,
  `pris` int(11) NOT NULL,
  `kategori_nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `udstyr`
--

INSERT INTO `udstyr` (`id`, `type`, `mærke`, `model`, `url`, `beskrivelse`, `pris`, `kategori_nr`) VALUES
(1, 'Cykelhjelme', 'MET', 'Junior', 'hjelm1.jpg', 'Alle bør have en cykelhjelm. Vi har derfor fundet denne smarte model til små piger, der gerne vil være prinsesser. Hjelmen er pink med hvide blomster og passer til piger i alderen 5 – 12 år.', 395, 0),
(2, 'Cykelhjelme', 'Lazer', 'Mouse', 'hjelm2.gif', 'Alle bør have en cykelhjelm. Også når man sidder bagpå fars eller mors cykel Vi har derfor fundet denne smarte model til små piger og drenge. Hjelmen er designet, så den ligner en sød lille mus. Den passer til piger og drenge i alderen 1 - 5 år.', 275, 0),
(3, 'Cykelhjelme', 'Lazar', 'Regular', 'hjelm3.gif', 'Cykelhjelme er for alle. Både børn og voksne. Vi har derfor fundet denne smarte model, som fås til både børn og voksne. Hjelmen fås i farverne rød og blå. Den fås i børnestørrelser fra 6 år og i voksenstørrelser op til 60 cm.', 495, 0),
(4, 'Cykelhjelme', 'MET', 'Blue', 'hjelm4.jpg', 'For den professionelle rytter eller for hende, der gerne vil have den ultimative cykelhjelm har vi denne aerodynamiske model i hvid og blå.', 995, 0),
(5, 'Cykelcomputere', 'MBK', 'Com3', 'computer1.jpg', 'Her får man en god og gedigen cykelcomputer. Computeren har otte forskellige funktioner. Computeren har et stort display og den er nem at indstille.', 349, 0),
(6, 'Cykelcomputere', 'VDO', 'CompuSpeed 1', 'computer2.jpg', 'Her får man en trådløs og programmerbar cykelcomputer. Computeren har selvfølgelig et stort læsevenligt display. Der er femten indbyggede funktioner inklusiv kalorie- og fedtforbrænding, så man uden problemer kan følge med i fedtforbrændingen.', 259, 0),
(7, 'Cykelcomputere', 'MBK', 'Com2', 'computer3.jpg', 'Her får man en god og gedigen cykelcomputer. Computeren har ni forskellige funktioner, som f.eks. tidsmåler og temperatur måler. Computeren har et stort display og den er nem at indstille.', 299, 0),
(8, 'Cykelcomputere', 'VDO', 'CompuSpeed 2', 'computer4.jpg', 'Cykelcomputeren her har mange forskellige funktioner. F.eks. kan man måle den aktuelle hastighed, kørt tid, gennemsnitshastighed. Man kan også se den kørte distance for en eller to cykler.', 399, 0),
(9, 'Værktøj', 'Tranz-x', 'Kædeadskiller', 'vaerktoej1.jpg', 'Vil man holde sin cykel i en god stand, er man nødt til at have det rigtige værktøj. Så derfor bør denne flotte kædeadskiller med flere forskellige funktioner være i enhver handymans cykelværktøjskasse. Der er bl.a. unbracho nøgler og skruetrækker med stjernekærv og lige kærv.', 89, 0),
(10, 'Værktøj', 'Michelin', 'Dækjern', 'vaerktoej2.jpg', 'Det sker jo at selv det bedste dæk kan punktere. Derfor er et sæt dækjern uundværligt. Ellers bliver det at skifte dæk for besværligt.', 12, 0),
(11, 'Værktøj', 'Lipu', 'Foldeværktøj', 'vaerktoej3.jpg', 'Foldeværktøjet med 6 forskellige funktioner fås i rød. Her er bl.a. unbracho nøgler i forkellige størrelser. Skruetrækker med stjerne og lige kærv.', 45, 0),
(12, 'Cykeltøj', 'Cidi', 'Cykelsko', 'toej1.jpg', 'Cykler man meget på en racercykel, så kan det være en god ide, at investere i et par rigtige cykelsko. Så får du nemlig en meget større fornøjelse af din cykeltur. Her får du et rigtig godt par til en fornuftig pris.', 599, 0),
(13, 'Cykeltøj', 'Mike', 'Frakke', 'toej2.jpg', 'En god sommerjakke til herrer. Der er en god ventilation i jakken, som er både vandtæt og åndbar.', 899, 0),
(14, 'Cykeltøj', 'Alessi Bianchi', 'Kasket', 'toej3.jpg', 'Køb denne smarte cap fra Alessi Bianchi. Så er du med på moden. Cappen fås kun i en størrelse.', 89, 0),
(15, 'Cykeltøj', 'John D', 'Cykelsæt', 'toej4.jpg', 'Dette vintersæt med jakke og bukser er i vores sædvanlige gode kvalitet. Både jakke og bukser kan købes separat til følgende priser: Bukser 799 kr. og jakke 699 kr.', 999, 0),
(16, 'Cykeltøj', 'John D', 'Bukser', 'toej5.jpg', 'Cykler man meget og langt, kan man i det lange løb ikke undvære et par gode cykelbukser. Bukserne er med korte bukser og fremstillet af sort lycra.', 299, 0),
(17, 'Barnestole', 'Hamax', 'Mini', 'stol1.jpg', 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, så benene ikke kan komme ind i cyklens hjul.', 1959, 0),
(18, 'Barnestole', 'Midi', 'Hamax', 'stol2.gif', 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, der ender som støtter til barnets fødder. Derved undgår man at barnets ben kommer ind i cyklens hjul.', 1795, 0),
(19, 'Reservedele', 'Winther', 'Kæde', 'reserve2.jpg', 'Støtteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. Støttebenet er blankt og kan justeres.', 149, 0),
(20, 'Reservedele', 'Mustang', 'Dæk', 'reserve3.jpg', 'Skal cyklen have skiftet kæde, er denne kæde et godt valg. Kæden er rustfri og passer til 7 og 8 udvendige gear. Når du skifter kæde, bør du også skifte krans.', 99, 0),
(21, 'Reservedele', 'Winther', 'Kæde', 'reserve1.jpg', 'Skal cyklen have skiftet kæde, er denne kæde et godt valg. Kæden er rustfri og passer til 7 og 8 udvendige gear. Når du skifter kæde, bør du også skifte krans.', 99, 0),
(22, 'Reservedele', 'Winther', 'Støtteben', 'reserve2.jpg', 'Støtteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. Støttebenet er blankt og kan justeres.', 149, 0),
(23, 'Reservedele', 'Mustang', 'Dæk', ' reserve3.jpg', 'Træt af at punktere i tide og utide. Så prøv dette punkterfrie dæk med kevlar. Så får du nedsat dine punkteringer med 90 procent. Dækket er meget nemt at montere.', 299, 0),
(24, 'Reservedele', 'Shimano', 'Deore Gear', 'reserve4.jpg', 'Her får du et godt og solidt baggear. Gearskiftet bliver derved til en leg.', 249, 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `brugernavn` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rettiheder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `cykler`
--
ALTER TABLE `cykler`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kategorier`
--
ALTER TABLE `kategorier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kontakt_oplysninger`
--
ALTER TABLE `kontakt_oplysninger`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `nyheder`
--
ALTER TABLE `nyheder`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `udstyr`
--
ALTER TABLE `udstyr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `cykler`
--
ALTER TABLE `cykler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Tilføj AUTO_INCREMENT i tabel `kategorier`
--
ALTER TABLE `kategorier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `kontakt_oplysninger`
--
ALTER TABLE `kontakt_oplysninger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `nyheder`
--
ALTER TABLE `nyheder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `udstyr`
--
ALTER TABLE `udstyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
