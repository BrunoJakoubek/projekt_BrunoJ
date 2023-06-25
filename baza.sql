-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 10:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza`
--

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `naslov` varchar(100) NOT NULL,
  `sazetak` varchar(255) NOT NULL,
  `datum` varchar(32) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(64) NOT NULL,
  `kategorija` varchar(64) NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `naslov`, `sazetak`, `datum`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(1, 'CRNA HRONIKA', 'DEČAK UBICA IZ \"RIBNIKARA\" UBEĐUJE LEKARE DA JE \"SKROZ NORMALAN\" Propao mu plan da izađe na slobodu, pa promenio ponašanje: Burno reaguje i ispoljava nervozu', '25.06.2023.', 'Dečak ubica iz Osnovne škole \"Vladislav Ribnikar\" počeo je da pokazuje promene u ponašanju i komunikaciji, saznaje \"Blic\" od odlično obaveštenog izvora bliskog istrazi. Fazu u kojoj je bio miran, gotovo ravnodušan, od pre nekoliko dana zamenili su prvi znakovi nervoze i sve učestalija pitanja kada će biti pušten da izađe na slobodu - što inače nije u planu.\r\n\r\n- Dečak ubica sebe posmatra kao normalnu osobu i o sebi govori na taj način. Istovremeno i dalje ne pokazuje kajanje zbog svirepog masovnog ubistva, ili bilo kakvu emociju prema ubijenim drugarima ili svojoj porodici, koju je takođe doveo u jezivu situaciju, posebno mlađu sestricu, ni krivu ni dužnu - kaže izvor \"Blica\".', 'ubica.png', 'srbija', 1),
(2, 'ZABAVNO : CECA', 'CECA SE JAVNO OBRATILA ĐORĐU DAVIDU Nakon što je njegova kandidatkinja POBEDILA u \"Zvezdama Granda\" pevačica poručila samo jedno', '25.06.2023.', 'Slavica Angelova, kojoj je mentor bio Đorđe David, odnela je pobedu u \"Zvezdama Granda\".\r\nDrugoplasirani bio je Dragan Đurić, takmičar iz \"jata\" Cece Ražnatović, što pevačicu nije sprečilo da među prvima čestita kolegi, te doda da je srećna što je stekla još jednog prijatelja.\r\n- Dragi moj, voljeni \"ludaku\", čestitam ti od srca! Ako je neko zaslužio posle toliko godina truda, izgaranja za svoje kandidate, e, to si ti. Neka ti je sa srećom pobeda u \"Zvezdama Granda\" i da si mi ti živ i zdrav još 100 godina - istakla je Ražnatovićeva uz rokerovu fotografiju koju je objavila na Instagramu, pa dodala:\r\n- Drago mi je da sam stekla još jednog divnog prijatelja u životu. Voli te puno tvoja Ceki. Uživaj, bebi, u svojoj radosti. Znam da je ogromna.', 'ceca.png', 'srbija', 1),
(3, 'TENIS : NOVAK DJOKOVIC U LONDONU', 'Veliki gest Novaka Đokovića u Londonu, uradio je ono što neće gotovo niko - fotografija je odmah pokrenula \"lavinu\" /FOTO/', '25.06.2023.', 'Beloruska teniserka Arina Sabalenka se tokom takmičenja na Rolan Garosu našla u centru pažnje zbog vrlo neprijateljske atmosfere uperene prema njoj, a sada je po dolasku u London objavila zajedničku fotografiju sa Novakom Đokovićem.\r\nSrpski teniser je u subotu otputovao u prestonicu Engleske kako bi se što bolje pripremio za odbranu titule na Vimbldonu, a odatle se odmah javio sa terena gde je okusio londonsku travu.\r\nDan kasnije Đoković se obreo u kompleksu \"Ol Ingland Klaba\" gde je krenuo sa treninzima, a tom prilikom se susreo sa  Arinom Sabalenkom koja se zbog rusko-ukrajinskog konflikta našla u nemilosti igračica iz Ukrajine koje nisu želele ni da se pozdrave sa njom u Parizu.\r\n\r\nNišta manje prijatni prema drugoj igračici sveta nisu bili ni brojni novinari, koji su je tokom Rolan Garosa zasipali političkim pitanjima umesto sportskim.\r\n\r\nSusret sa Novakom Beloruskinja je ovekovečila fotografijom, koju je zatim postavila na Instagram uz opis:\r\n\r\n-Na slici ukupno 24 Grend slem titule- aludirajući na to da Novak ima 23, što je rekord u istoriji muškog tenisa.', 'novak.png', 'srbija', 1),
(4, 'TIN JEDVAJ VJENČANJE', 'Ovo su neka od najglamuroznijih vjenčanja slavnih Hrvata, nije se štedjelo', '25.06.2023.', 'OVOG su se vikenda u Varaždinu vjenčali nogometaš Tin Jedvaj i njegova dugogodišnja djevojka Dina Dragija. Vjenčanju su prisustvovala i neka lica s hrvatske estrade. Iako su godinama bili u sretnoj vezi, da su skupa doznalo se tek 2016. godine, kad je Izabel Kovačić na svom Instagramu objavila zajedničku fotografiju s tribina. Tin i Dina prvi su ples otplesali na hit Eda Sheerana Perfect, a uzvanike je kasnije zabavljala popularna grupa Lexington.\r\nOsim Tina i Dine, ovog su se vikenda vjenčali nogometaš Dinama Marko Tolić i Gabrijela Tandara. Svadba je bila u Hercegovini, a fotografije s vjenčanja objavili su neki od uzvanika.', 'jedvaj.png', 'hrvatska', 1),
(5, 'IZGUBILA JE 13 KG', 'Supruga slavnog glazbenika nikada nije bila mršavija: Prvih nekoliko mjeseci bilo mi je užasno mučno', '25.06.2023.', 'Sharon Osbourne koristila je injekcije Ozempica i ispričala je kakve su joj poteškoće stvorile\r\n\r\nSharon Osbourne izgleda neprepoznatljivo na novim fotografijama koje su objavljene ovog tjedna. Na njima je vidljivo kako je izgubila jako puno kilograma i to joj je pošlo za rukom nakon što je poput mnogih zvijezda Hollywooda počela koristiti injekcije Ozempica koje se inače propisuju dijabetičarima i kada su celebrityji počeli koristiti ove injekcije na tržištu se pojavilo sve više i više tvrtki koje su se bacile u proizvodnju ovih injekcija.\r\nBrojne su kritike na račun onih koji ovaj lijek koriste kako bi skidali kilograme i navode da se na taj način oduzima lijek iz ruku onih kojima je to potrebno. Upravo zbog toga, kao što su prije skrivali da idu na plastične operacije i tvrdili da su njihove savršene loptaste grudi prirodne, mnogi poznati danas teško priznaju da su potražili ovakvu pomoć pri gubitku kilograma. Ipak, slobodno je u javnosti o tome progovorila supruga glazbenika Ozzyja Osbournea, Sharon, koja inače nema dlake na jeziku.', 'izgubila.png', 'hrvatska', 1),
(6, 'IZGUBILA JE 13 KG', 'Supruga slavnog glazbenika nikada nije bila mršavija: Prvih nekoliko mjeseci bilo mi je užasno mučno', '25.06.2023.', 'Sharon Osbourne koristila je injekcije Ozempica i ispričala je kakve su joj poteškoće stvorile\r\n\r\nSharon Osbourne izgleda neprepoznatljivo na novim fotografijama koje su objavljene ovog tjedna. Na njima je vidljivo kako je izgubila jako puno kilograma i to joj je pošlo za rukom nakon što je poput mnogih zvijezda Hollywooda počela koristiti injekcije Ozempica koje se inače propisuju dijabetičarima i kada su celebrityji počeli koristiti ove injekcije na tržištu se pojavilo sve više i više tvrtki koje su se bacile u proizvodnju ovih injekcija.\r\nBrojne su kritike na račun onih koji ovaj lijek koriste kako bi skidali kilograme i navode da se na taj način oduzima lijek iz ruku onih kojima je to potrebno. Upravo zbog toga, kao što su prije skrivali da idu na plastične operacije i tvrdili da su njihove savršene loptaste grudi prirodne, mnogi poznati danas teško priznaju da su potražili ovakvu pomoć pri gubitku kilograma. Ipak, slobodno je u javnosti o tome progovorila supruga glazbenika Ozzyja Osbournea, Sharon, koja inače nema dlake na jeziku.', 'izgubila.png', 'hrvatska', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
