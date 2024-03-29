-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2019 at 09:53 AM
-- Server version: 10.2.11-MariaDB-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amoodf5_supply`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `married` bit(1) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE `continent` (
  `id` char(2) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `continent`
--

INSERT INTO `continent` (`id`, `name`) VALUES
('eu', 'Europa'),
('na', 'North America'),
('sa', 'South America'),
('af', 'Africa'),
('as', 'Asia'),
('au', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` char(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Democratic Republic of the Congo'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D\'Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia and Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('EU', 'European Union'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands'),
('FM', 'Federated States of Micronesia'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Great Britain'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'S. Georgia and S. Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and McDonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia (Hrvatska)'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevis'),
('KP', 'Korea (North)'),
('KR', 'Korea (South)'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Laos'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand (Aotearoa)'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome and Principe'),
('SU', 'USSR (former)'),
('SV', 'El Salvador'),
('SY', 'Syria'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TP', 'East Timor'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Tanzania'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UK', 'United Kingdom'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Vatican City State'),
('VC', 'Saint Vincent and the Grenadines'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands (UK)'),
('VI', 'Virgin Islands (US)'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZR', 'Zaire'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `CRUDClass`
--

CREATE TABLE `CRUDClass` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CRUDClass`
--

INSERT INTO `CRUDClass` (`id`, `name`, `email`) VALUES
(1, 'Name 1', 'name1@email.com'),
(2, 'Name 2', 'name2@email.com'),
(3, 'Name 3', 'name3@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `id_continent` char(2) DEFAULT NULL,
  `id_country` char(2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `freelance` tinyint(4) DEFAULT NULL,
  `lastvisit` date DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `name`, `firstname`, `age`, `height`, `id_continent`, `id_country`, `email`, `freelance`, `lastvisit`, `website`) VALUES
(1, 'Hoffman', 'Tatyana', 88, '1.32', 'na', 'CA', 'Nam@quisdiamluctus.org', 1, '2012-04-17', 'www.qktogkjbsvz.rdh'),
(2, 'Atkins', 'Ishmael', 44, '1.42', 'eu', 'UK', 'arcu.et.pede@musProin.cam', 1, '2012-02-25', 'www.xzuquuhxbid.ltk'),
(3, 'Hamilton', 'Mohammad', 73, '1.22', 'eu', 'FR', 'dui@duiCras.edu', 0, '2012-01-30', 'www.xkeyshkmst'),
(4, 'Murray', 'Troy', 18, '1.92', 'eu', 'FR', 'mollis@eutellus.co.uk', 0, '2012-02-27', 'www.tjumdozdqqo.rot'),
(5, 'Schwartz', 'Carla', 79, '1.50', 'na', 'CA', 'ante@adipiscing.org', 0, '2012-03-16', 'www.ljncabtovpc.rdd'),
(6, 'Bond', 'Leno', 33, '1.55', 'na', 'US', 'semper.tellus.id@sem.co.uk', 0, '2012-03-21', 'www.hpscfutiyvc.ejq'),
(7, 'Noble', 'Georgia', 88, '1.90', 'af', 'ZA', 'mi.lacinia@nisiaodio.co.uk', 0, '2012-02-20', 'www.wrmunpywfqm.eqn'),
(9, 'Chambers', 'Aphrodite', 63, '1.30', 'eu', 'FR', 'mattis@venenatisvel.co.uk', 1, '2012-03-03', 'www.lbauoozywdk.nnm'),
(10, 'Schultz', 'Allegra', 90, '1.70', 'na', 'CA', 'Fusce.feugiat.Lorem@Duis.net', 1, '2012-05-03', 'www.itpfwatjnov.nix'),
(11, 'Garrett', 'Lillith', 20, '1.91', 'na', 'US', 'neque@mattisIntegereu.edu', 1, '2012-04-17', 'www.vvdijyvrvel.xcp'),
(12, 'Mcdaniel', 'Venus', 89, '1.53', 'af', 'ZW', 'ipsum.primis@interdumligula.edu', 1, '2012-02-12', 'www.owokbaidqxc.pkl'),
(13, 'Acevedo', 'Iola', 26, '1.94', 'af', 'NG', 'eros@fringillaornare.net', 1, '2012-03-05', 'www.rauhxxxijxz.nvk'),
(14, 'Kline', 'Ora', 47, '1.27', 'eu', 'UK', 'mauris.ipsum@dictum.edu', 0, '2012-03-10', 'www.cajlyiyttlp.erj'),
(15, 'George', 'Brian', 76, '1.72', 'eu', 'FR', 'nisi.Mauris.nulla@rutrumlorem.net', 0, '2012-01-29', 'www.stalfpqxzyy.ure'),
(16, 'Powers', 'Remedios', 76, '1.42', 'af', 'ZA', 'rutrum@magnisdisparturient.edu', 0, '2012-04-21', 'www.yqxxpwrhbkd.wwj'),
(17, 'Huff', 'Wade', 75, '1.92', 'eu', 'UK', 'sagittis@Fuscefermentum.edu', 0, '2012-02-15', 'www.csnddrzzblk.vlq'),
(18, 'Greene', 'Willow', 22, '1.93', 'eu', 'UK', 'dolor@sit.ca', 0, '2012-03-11', 'www.lqdmcnioern.gqx'),
(19, 'Smith', 'Ayanna', 34, '1.75', 'eu', 'FR', 'luctus@ornare.ca', 0, '2012-03-31', 'www.xzsbrgihdeu.jxi'),
(20, 'Alston', 'Megan', 26, '1.60', 'na', 'US', 'amet.luctus@eu.co.uk', 1, '2012-04-27', 'www.ohzsltbiccd.gtg'),
(21, 'Jordan', 'Prescott', 25, '1.86', 'af', 'NG', 'quis.massa.Mauris@metusIn.edu', 0, '2012-03-31', 'www.pfkrhnxatjj.xgz'),
(22, 'Guerrero', 'Karen', 18, '1.21', 'na', 'US', 'bibendum.ullamcorper@Nuncsollicitudin.com', 1, '2012-03-18', 'www.metfoccucmn.dtr'),
(23, 'Garrison', 'Desirae', 34, '1.62', 'af', 'NG', 'at.pretium@malesuadaaugueut.co.uk', 1, '2012-04-01', 'www.nyjplwtfoct.vta'),
(24, 'Wiggins', 'Hayfa', 40, '1.65', 'eu', 'FR', 'est.Nunc@velitegestas.edu', 1, '2012-04-08', 'www.quaewuzqvyh.dpu'),
(25, 'Barrera', 'Yasir', 79, '1.84', 'na', 'US', 'pellentesque.eget.dictum@consequatauctor.org', 0, '2012-04-05', 'www.okcjjjnzeok.alv'),
(26, 'Parsons', 'Raya', 78, '1.22', 'na', 'CA', 'risus.In.mi@lectusantedictum.ca', 0, '2012-02-26', 'www.hcemqpnckfz.fle'),
(27, 'Livingston', 'Charity', 25, '1.72', 'eu', 'FR', 'lectus.pede.ultrices@non.net', 1, '2012-03-10', 'www.nhwxnvdyarm.dkt'),
(28, 'Bauer', 'Baxter', 16, '1.33', 'eu', 'FR', 'tellus.eu.augue@Proinnonmassa.org', 0, '2012-02-25', 'www.lnglfspqmqr.myz'),
(29, 'Conner', 'Otto', 73, '1.47', 'eu', 'FR', 'Sed.malesuada.augue@duinecurna.co.uk', 1, '2012-02-12', 'www.ylnkbexadci.xna'),
(30, 'Lee', 'Tara', 47, '1.12', 'na', 'CA', 'Aliquam.vulputate.ullamcorper@auctor.ca', 0, '2012-05-02', 'www.llepommcnab.ydi'),
(31, 'Durham', 'Hannah', 44, '1.20', 'eu', 'UK', 'dapibus.quam.quis@dolorFusce.ca', 0, '2012-03-02', 'www.mddzeeyimfy.wla'),
(32, 'Kemp', 'Hanae', 83, '1.09', 'na', 'US', 'in.magna.Phasellus@nequeNullamut.org', 1, '2012-04-22', 'www.gjgsofpzfcp.ccp'),
(33, 'Mathews', 'Alana', 18, '1.73', 'na', 'US', 'orci.consectetuer.euismod@rutrumFuscedolor.org', 0, '2012-02-26', 'www.gailcynfncr.pvb'),
(34, 'Bradshaw', 'Basia', 48, '1.51', 'af', 'ZA', 'viverra.Maecenas.iaculis@liberomauris.net', 1, '2012-04-29', 'www.ziwnlocgpft.btw'),
(35, 'Larsen', 'Isabelle', 90, '1.80', 'na', 'US', 'scelerisque.scelerisque.dui@semmollis.com', 1, '2012-04-13', 'www.ijgyozzivnz.via'),
(36, 'Hatfield', 'Kennan', 30, '1.32', 'na', 'US', 'dictum.cursus@fringilla.edu', 1, '2012-02-05', 'www.qcbmpbhycre.hbm'),
(37, 'Clemons', 'Cruz', 28, '1.39', 'eu', 'BE', 'conubia@molestieorci.net', 0, '2012-02-12', 'www.iadksirtuwv.zet'),
(38, 'Beasley', 'Dara', 31, '1.57', 'eu', 'UK', 'eu.placerat@in.com', 1, '2012-03-20', 'www.xwpstlryftm.lig'),
(39, 'Vang', 'Rana', 46, '1.80', 'na', 'CA', 'consectetuer.rhoncus.Nullam@justo.edu', 0, '2012-02-15', 'www.ttazmmkvtir.ees'),
(40, 'Duncan', 'Jamal', 28, '1.67', 'eu', 'FR', 'ac.eleifend.vitae@fringillamilacinia.org', 0, '2012-03-04', 'www.hthbbyfgrml.wce'),
(41, 'Newton', 'Callie', 24, '1.23', 'eu', 'UK', 'sem@necluctus.com', 1, '2012-02-26', 'www.llycykzaoqn.sxw'),
(42, 'Delgado', 'Cassady', 46, '1.57', 'eu', 'BE', 'vitae.dolor@hendrerit.com', 0, '2012-03-09', 'www.zffovshtpng.aaa'),
(43, 'Craig', 'Eugenia', 40, '1.10', 'eu', 'FR', 'euismod.est.arcu@Aeneanmassa.com', 0, '2012-02-19', 'www.wodmbkmbkrr.tws'),
(44, 'Fuentes', 'Hasad', 40, '1.82', 'eu', 'BE', 'lobortis.mauris.Suspendisse@fringilla.co.uk', 0, '2012-04-27', 'www.flhpczjzrrd.amj'),
(45, 'Sargent', 'Vincent', 68, '1.30', 'na', 'US', 'eu.turpis@arcu.edu', 0, '2012-04-24', 'www.rjkjaojnxex.qoz'),
(46, 'Baird', 'Tyrone', 41, '1.78', 'af', 'NG', 'malesuada.fringilla@et.net', 0, '2012-04-06', 'www.lcpjhmzvlaf.vtc'),
(47, 'Cochran', 'Odette', 85, '1.71', 'na', 'US', 'mauris.sagittis@Inmi.co.uk', 1, '2012-04-23', 'www.swuexzzqcem.axp'),
(48, 'Nixon', 'Gwendolyn', 45, '1.30', 'eu', 'FR', 'sed@aliquetodioEtiam.edu', 1, '2012-02-25', 'www.ucmwgyxeoou.yyv'),
(49, 'Sexton', 'Blossom', 66, '1.21', 'na', 'US', 'Nunc@sociisnatoquepenatibus.ca', 0, '2012-04-20', 'www.qlfeaacyvyl.nfp'),
(50, 'Mckinney', 'Charde', 83, '1.71', 'af', 'ZA', 'diam@quistristique.com', 1, '2012-03-01', 'www.jknfjztooic.lcf'),
(51, 'Prince', 'Yetta', 80, '1.38', 'eu', 'FR', 'Phasellus.in@morbitristique.org', 1, '2012-02-15', 'www.bdmpmpbpuuo.qej'),
(52, 'Sheppard', 'Steven', 68, '1.10', 'eu', 'UK', 'nulla.In@libero.com', 1, '2012-05-02', 'www.qjfkeubidxs.wbv'),
(53, 'Wiggins', 'Hanna', 71, '1.00', 'eu', 'FR', 'vel.pede@pretiumetrutrum.edu', 1, '2012-02-22', 'www.jfhndzjeuiu.ojv'),
(54, 'Hancock', 'Barry', 47, '1.83', 'af', 'ZA', 'mollis.Phasellus@tellus.ca', 0, '2012-03-09', 'www.tyloggcqcmr.njb'),
(55, 'Leblanc', 'Lars', 52, '1.22', 'na', 'US', 'Phasellus.nulla@Quisqueimperdiet.org', 1, '2012-03-02', 'www.bondaerkgeq.smy'),
(56, 'Baker', 'Portia', 88, '1.89', 'eu', 'UK', 'facilisi@eu.org', 0, '2012-03-17', 'www.aargfizrgan.fym'),
(57, 'Calderon', 'Harding', 57, '1.15', 'eu', 'FR', 'Fusce@congue.com', 0, '2012-03-14', 'www.afchgpmecqj.qtx'),
(58, 'Aguirre', 'Jonas', 72, '1.78', 'af', 'NG', 'a.ultricies@dolor.edu', 0, '2012-04-22', 'www.grpihyzbwzh.qud'),
(59, 'Turner', 'Ivana', 79, '1.94', 'na', 'US', 'massa.Quisque.porttitor@Sedauctor.ca', 1, '2012-04-30', 'www.kqagqhwklub.huo'),
(60, 'Armstrong', 'Regina', 75, '1.88', 'na', 'US', 'consequat@sapienimperdietornare.org', 1, '2012-02-09', 'www.oiyzcagwoht.jep'),
(61, 'Guzman', 'Ariana', 33, '1.88', 'na', 'US', 'condimentum@intempuseu.com', 1, '2012-04-21', 'www.fovtvocaemm.kih'),
(62, 'Fox', 'Alisa', 75, '1.53', 'eu', 'FR', 'lacus.Quisque.purus@dapibusidblandit.net', 1, '2012-04-23', 'www.cxugkgqsoyd.jmn'),
(63, 'Wells', 'Ayanna', 86, '1.22', 'eu', 'FR', 'Nunc.sollicitudin@loremsemper.com', 1, '2012-04-20', 'www.lvlaupjhdit.bpa'),
(64, 'Wagner', 'Ayanna', 40, '1.51', 'af', 'NG', 'sed.consequat@Aliquamtinciduntnunc.net', 1, '2012-03-29', 'www.nduqlosboqn.xfs'),
(65, 'Vazquez', 'Denton', 56, '1.68', 'af', 'NG', 'sed.dolor.Fusce@Curabituregestas.edu', 0, '2012-03-25', 'www.cwdrmrosjmv.xcs'),
(66, 'Rodriguez', 'Margaret', 37, '1.37', 'eu', 'FR', 'tincidunt.neque.vitae@nullaIntegervulputate.edu', 0, '2012-02-01', 'www.oqbxcxueppy.xyt'),
(67, 'Oneal', 'Simon', 36, '1.67', 'eu', 'FR', 'interdum.Curabitur.dictum@dolorQuisquetincidunt.edu', 1, '2012-03-23', 'www.yxcnmblludu.bvo'),
(68, 'Hayes', 'Kelly', 30, '1.49', 'eu', 'NL', 'erat@consequatpurusMaecenas.co.uk', 0, '2012-04-01', 'www.fixzlsbggln.mwm'),
(69, 'Gutierrez', 'Branden', 63, '1.88', 'af', 'NG', 'suscipit.est@dignissim.ca', 1, '2012-03-25', 'www.bqaicnuzaea.qax'),
(70, 'Mendoza', 'Lawrence', 75, '1.79', 'eu', 'UK', 'Praesent@quam.co.uk', 0, '2012-05-02', 'www.othpyhgyfwf.ape'),
(71, 'Salinas', 'Emerald', 31, '1.59', 'eu', 'NL', 'suscipit.nonummy.Fusce@Sedidrisus.net', 1, '2012-02-05', 'www.obrtxxumcpc.iea'),
(72, 'Lloyd', 'Aidan', 87, '1.04', 'na', 'US', 'ipsum@ipsumprimis.ca', 0, '2012-03-27', 'www.qltsavbfwpf.vqq'),
(73, 'Duran', 'Neil', 24, '1.36', 'na', 'US', 'odio@risusQuisquelibero.edu', 1, '2012-04-10', 'www.tcaprflivsq.zbg'),
(74, 'Mcintosh', 'Candice', 44, '1.53', 'eu', 'FR', 'nibh.sit.amet@ipsumSuspendissenon.edu', 0, '2012-04-29', 'www.dnszgjzhpov.zcd'),
(75, 'Spencer', 'Galena', 23, '1.58', 'eu', 'BE', 'libero@in.ca', 1, '2012-03-10', 'www.dpvtdqtgupw.xfr'),
(76, 'Goodman', 'Ima', 17, '1.98', 'eu', 'FR', 'Nam@atrisusNunc.org', 1, '2012-03-08', 'www.offivbfasor.tnn'),
(77, 'Rios', 'Adam', 17, '1.49', 'eu', 'FR', 'lectus.quis@elit.net', 0, '2012-04-12', 'www.uzbnothcgbc.hnb'),
(78, 'Mccormick', 'Mallory', 61, '1.46', 'af', 'NG', 'diam.Pellentesque@lectusconvallis.ca', 1, '2012-03-27', 'www.fwcmyetlgig.wuv'),
(79, 'Delgado', 'Geoffrey', 89, '1.24', 'af', 'ZA', 'turpis.nec.mauris@scelerisquemollis.edu', 0, '2012-04-10', 'www.ftwlcdixyob.ytm'),
(80, 'Bentley', 'Aretha', 59, '1.54', 'na', 'US', 'Nullam@justo.net', 0, '2012-04-30', 'www.bdcareylqax.goj'),
(81, 'Guerra', 'Zephr', 78, '1.47', 'af', 'NG', 'justo.sit.amet@accumsannequeet.ca', 1, '2012-03-14', 'www.coctpzzdiid.evy'),
(82, 'Cameron', 'Shad', 17, '1.70', 'na', 'US', 'in.cursus@dignissimpharetraNam.ca', 0, '2012-03-21', 'www.solbxofsmjc.nbd'),
(83, 'Atkinson', 'Wang', 34, '1.03', 'na', 'US', 'nec.urna.suscipit@ligulaAeneangravida.com', 1, '2012-03-01', 'www.xmkkwmyyqyi.xaq'),
(84, 'Bryant', 'Zorita', 49, '1.27', 'eu', 'UK', 'pellentesque@dolorelit.ca', 0, '2012-02-03', 'www.xljojrlkiok.uve'),
(85, 'Clemons', 'Sonya', 53, '1.15', 'eu', 'BE', 'eget.ipsum@mauriserat.com', 1, '2012-03-04', 'www.ltduiopestc.fyq'),
(86, 'Evans', 'Alan', 87, '1.63', 'na', 'CA', 'feugiat.non@ettristiquepellentesque.net', 0, '2012-04-03', 'www.iihabjgaana.yei'),
(87, 'French', 'Marshall', 16, '1.62', 'eu', 'FR', 'lobortis.quam.a@orciDonecnibh.org', 1, '2012-02-20', 'www.mqzmdaliitq.jkw'),
(88, 'Witt', 'Mercedes', 74, '1.57', 'na', 'CA', 'mollis@vestibulum.com', 0, '2012-02-20', 'www.asrjlisverq.ygj'),
(89, 'Newton', 'Barrett', 85, '1.08', 'eu', 'UK', 'Cras@telluslorem.ca', 1, '2012-03-15', 'www.diqiahhgqyh.oad'),
(90, 'Morrow', 'Palmer', 27, '1.89', 'af', 'ZA', 'dignissim@nuncsit.edu', 0, '2012-04-05', 'www.dhqugxigbzp.fun'),
(91, 'Wong', 'Marcia', 83, '1.59', 'na', 'US', 'leo@acmattisvelit.org', 0, '2012-01-29', 'www.vsgxsvdmjch.hqh'),
(92, 'Crawford', 'Sade', 71, '1.56', 'eu', 'BE', 'quis.diam@mus.edu', 0, '2012-02-03', 'www.mhnwjudabjy.uxp'),
(93, 'Berg', 'Calvin', 72, '1.26', 'eu', 'NL', 'ornare.lectus.justo@egetvolutpatornare.com', 0, '2012-02-26', 'www.cigereypuar.ngi'),
(94, 'Tran', 'Abraham', 32, '1.61', 'na', 'CA', 'vel@vestibulumneque.co.uk', 0, '2012-02-25', 'www.pvrkvixcrvc.xmg'),
(95, 'Mcknight', 'Nero', 77, '1.09', 'eu', 'NL', 'eu.eros@nonarcu.ca', 0, '2012-03-27', 'www.lkjcgmattpb.osz'),
(96, 'Klein', 'Colin', 78, '1.41', 'af', 'NG', 'Aliquam@vitae.com', 0, '2012-02-08', 'www.yearubgnbtp.wes'),
(97, 'Navarro', 'Illana', 56, '1.76', 'eu', 'UK', 'Duis.mi.enim@ametconsectetuer.co.uk', 0, '2012-04-20', 'www.wguxzjudclu.qgl'),
(98, 'Mccoy', 'Fallon', 32, '1.35', 'af', 'ZA', 'In.ornare.sagittis@eu.org', 0, '2012-04-22', 'www.vejxqdnxpcm.vnb'),
(99, 'Hughes', 'Minerva', 72, '1.54', 'eu', 'UK', 'nonummy.ipsum.non@in.edu', 1, '2012-04-17', 'www.jnqzqcudegy.yul'),
(100, 'Munoz', 'Harrison', 84, '1.72', 'eu', 'FR', 'eu.ultrices@nisiAenean.org', 0, '2012-03-15', 'www.fhhjngiiszn.pts'),
(101, 'Wilcox', 'Sean', 48, '1.92', 'eu', 'FR', 'mauris.sagittis.placerat@dictum.co.uk', 1, '2012-05-04', 'www.jfdbfqrzjqi.uqp'),
(102, 'Stevens', 'Chloe', 74, '1.65', 'eu', 'UK', 'dolor@ultriciesdignissimlacus.edu', 0, '2012-03-14', 'www.zrcjilezaan.vsc'),
(103, 'Robinson', 'Gwendolyn', 29, '1.48', 'na', 'US', 'arcu.Nunc@augue.ca', 0, '2012-03-11', 'www.aukavyvoaqe.fbb'),
(104, 'Leon', 'Tana', 69, '1.24', 'na', 'CA', 'justo.faucibus.lectus@et.org', 0, '2012-04-16', 'www.ehpextkyuyx.meh'),
(105, 'Mccarthy', 'Stephen', 24, '1.98', 'na', 'US', 'interdum@variusultrices.edu', 0, '2012-04-08', 'www.oofjmcvrklb.nkx'),
(106, 'Taylor', 'Jarrod', 53, '1.64', 'eu', 'FR', 'auctor.quis.tristique@miac.net', 0, '2012-02-17', 'www.aorkzsykqvp.dmb'),
(107, 'Morris', 'Harriet', 24, '1.35', 'na', 'US', 'eleifend@euismodestarcu.co.uk', 1, '2012-04-29', 'www.luebqtecvvs.yfh'),
(108, 'Crosby', 'Chloe', 70, '1.96', 'af', 'NG', 'nascetur.ridiculus.mus@Vivamusnonlorem.org', 1, '2012-01-30', 'www.xoqskjqpqwd.jvv'),
(109, 'Lynch', 'Lev', 15, '1.71', 'na', 'US', 'amet@eu.com', 0, '2012-03-04', 'www.bzcsvfcraqy.ajb'),
(110, 'Howard', 'Lars', 50, '1.00', 'eu', 'FR', 'eros.nec@massa.edu', 0, '2012-04-15', 'www.qctrsrsbsei.ffk'),
(111, 'Davis', 'Raya', 62, '1.72', 'af', 'ZA', 'mus.Aenean.eget@nonmagnaNam.com', 1, '2012-04-20', 'www.gaszfbeklkh.cdn'),
(112, 'Jennings', 'Abigail', 70, '1.79', 'eu', 'FR', 'lacinia@Duis.ca', 1, '2012-04-22', 'www.buynefqitct.mus'),
(113, 'Paul', 'Christopher', 57, '1.63', 'eu', 'FR', 'Cras.lorem@ridiculusmusProin.net', 0, '2012-04-18', 'www.oklhmethxmj.let'),
(114, 'Palmer', 'Jennifer', 21, '1.55', 'eu', 'UK', 'facilisis@Suspendissesagittis.edu', 1, '2012-03-19', 'www.yydvknhphzg.jow'),
(115, 'Bates', 'Nathan', 90, '1.62', 'eu', 'BE', 'sociis.natoque@tristiquenequevenenatis.org', 0, '2012-02-12', 'www.eqxlqevebwm.ams'),
(116, 'Franks', 'Dieter', 24, '1.80', 'na', 'CA', 'risus@estmollisnon.co.uk', 0, '2012-02-21', 'www.htoiqbjctrg.xmi'),
(117, 'Gray', 'Declan', 33, '1.53', 'eu', 'NL', 'Nullam@elitfermentumrisus.co.uk', 0, '2012-04-17', 'www.whnpztnlbwo.hkx'),
(118, 'Hutchinson', 'Fatima', 90, '1.41', 'af', 'NG', 'Ut.nec@temporloremeget.ca', 1, '2012-02-25', 'www.qdfrzuzjrlz.rxd'),
(119, 'Sosa', 'Felicia', 39, '1.95', 'na', 'US', 'enim@odio.edu', 0, '2012-02-03', 'www.gcpxnoplrlb.akq'),
(120, 'Macias', 'Karyn', 75, '1.01', 'na', 'CA', 'lacus@mauriserat.net', 0, '2012-03-15', 'www.ikmzwnzhdoz.yqd'),
(121, 'Hobbs', 'Jada', 75, '1.35', 'af', 'ZA', 'orci.Ut.semper@ipsumleo.net', 0, '2012-02-18', 'www.rsmvgmtxqfo.kob'),
(122, 'Walter', 'Forrest', 79, '1.44', 'af', 'NG', 'ac@molestiearcu.edu', 1, '2012-04-05', 'www.aurqzgbohzs.ekc'),
(123, 'Collins', 'Angela', 63, '1.89', 'na', 'US', 'nisi@euismodacfermentum.edu', 1, '2012-04-14', 'www.ffhmfaqpcvb.tsz'),
(124, 'Steele', 'Yeo', 19, '1.87', 'eu', 'BE', 'vulputate@nunc.org', 0, '2012-04-24', 'www.obzrxbkqahp.ccj'),
(125, 'Booth', 'Risa', 23, '1.51', 'eu', 'FR', 'arcu.vel@Suspendissealiquet.org', 0, '2012-02-02', 'www.nuxocmrewtb.zhg'),
(126, 'Shepherd', 'Gretchen', 33, '1.26', 'na', 'CA', 'Proin.ultrices@eleifendnuncrisus.org', 1, '2012-04-03', 'www.yccuveudkqt.rvk'),
(127, 'Stevens', 'Heidi', 88, '1.26', 'eu', 'UK', 'risus@sapienmolestieorci.net', 1, '2012-02-17', 'www.lptwfnnbxkr.wqh'),
(128, 'Pugh', 'Kathleen', 60, '1.81', 'eu', 'UK', 'fringilla.Donec@eu.co.uk', 0, '2012-02-03', 'www.wnkuybrojkh.zhk'),
(129, 'Warren', 'Noelani', 77, '1.14', 'eu', 'UK', 'at@etrutrumnon.org', 1, '2012-04-07', 'www.rbjamqztbyp.wcb'),
(130, 'Schmidt', 'Hollee', 34, '1.78', 'eu', 'BE', 'molestie@luctus.com', 1, '2012-03-05', 'www.ffhgewdgyyx.fqt'),
(131, 'Chase', 'Melanie', 87, '1.97', 'eu', 'NL', 'feugiat.Sed.nec@Mauris.edu', 0, '2012-04-15', 'www.adpzcmetgjo.fih'),
(132, 'Nolan', 'Kamal', 58, '1.57', 'eu', 'UK', 'luctus.ut.pellentesque@Proin.com', 0, '2012-04-19', 'www.xkwetkjbrai.goa'),
(133, 'Bryant', 'Colby', 48, '1.32', 'af', 'ZA', 'diam@ullamcorperDuis.ca', 0, '2012-04-18', 'www.kwicxqjmrmo.cuu'),
(134, 'Summers', 'Erich', 80, '1.17', 'na', 'CA', 'sit.amet@laciniaorci.ca', 0, '2012-03-28', 'www.ixvzjkcdezh.bdb'),
(135, 'Sullivan', 'Rogan', 62, '1.70', 'af', 'ZA', 'malesuada.fames@pharetraQuisqueac.co.uk', 0, '2012-03-28', 'www.tyfxynybovk.epl'),
(136, 'Johns', 'Reuben', 57, '1.91', 'na', 'CA', 'ipsum.Suspendisse.non@leoelementumsem.co.uk', 1, '2012-02-20', 'www.rvwgrhkgtxp.hvt'),
(137, 'Lewis', 'Charity', 24, '1.97', 'eu', 'FR', 'et.commodo@metusVivamus.edu', 0, '2012-03-07', 'www.qomjlcrgwfu.zco'),
(138, 'Duncan', 'Quail', 48, '1.38', 'eu', 'UK', 'laoreet.lectus@senectus.net', 1, '2012-02-26', 'www.ylzuqtutiap.ulk'),
(139, 'Banks', 'Sandra', 27, '1.95', 'na', 'US', 'ut.dolor.dapibus@famesacturpis.net', 1, '2012-02-27', 'www.qmgynwtyhtw.ltl'),
(140, 'Buckner', 'Giacomo', 62, '1.83', 'na', 'US', 'rutrum.magna.Cras@at.co.uk', 1, '2012-04-05', 'www.asphmltfwwk.mtu'),
(141, 'Abbott', 'Leslie', 78, '1.67', 'eu', 'BE', 'eget.venenatis.a@arcuVestibulum.edu', 1, '2012-03-19', 'www.zvbwrlilfie.bax'),
(142, 'Harmon', 'Kenyon', 56, '1.08', 'af', 'NG', 'lacinia.orci@a.ca', 1, '2012-03-22', 'www.wxgcglegjon.xqk'),
(143, 'Padilla', 'Nasim', 88, '1.87', 'na', 'US', 'ornare@nonbibendumsed.org', 0, '2012-02-17', 'www.wqjfexcvivd.hrw'),
(144, 'Huff', 'Inga', 76, '1.13', 'na', 'US', 'a.ultricies.adipiscing@Proin.edu', 0, '2012-03-09', 'www.afhiakprgbi.bgs'),
(145, 'Bridges', 'Camilla', 51, '1.53', 'eu', 'NL', 'neque.pellentesque.massa@nec.edu', 0, '2012-03-15', 'www.nqausjvybxl.nlt'),
(146, 'Randolph', 'Demetria', 32, '1.57', 'eu', 'NL', 'diam.Duis@dignissim.edu', 1, '2012-02-15', 'www.yxuzvgnhagv.gwo'),
(147, 'Mckay', 'Zephr', 38, '1.38', 'na', 'CA', 'lectus.quis.massa@ac.org', 1, '2012-03-18', 'www.zxfzebfapva.xew'),
(148, 'Brooks', 'Hamish', 29, '1.49', 'eu', 'NL', 'cubilia@vitaesodalesnisi.net', 1, '2012-01-29', 'www.nxxcsyaxudc.aqb'),
(149, 'Blevins', 'Burton', 25, '1.20', 'na', 'CA', 'mi.Duis.risus@musAenean.edu', 0, '2012-03-24', 'www.pcakgckwemy.hsy'),
(150, 'Orr', 'Ulla', 37, '1.49', 'eu', 'NL', 'Morbi.vehicula@lacus.net', 0, '2012-04-16', 'www.tcdypcghayg.iif'),
(151, 'Reyes', 'Lysandra', 84, '1.06', 'af', 'NG', 'auctor.velit.Aliquam@dictummiac.ca', 0, '2012-02-28', 'www.awrauxidccx.ado'),
(152, 'Browning', 'Ivor', 19, '1.79', 'eu', 'NL', 'turpis.In.condimentum@vulputate.net', 1, '2012-02-19', 'www.lbandxohlrn.nkm'),
(153, 'Baldwin', 'Vincent', 48, '1.03', 'eu', 'FR', 'Curabitur@Fusce.co.uk', 0, '2012-02-18', 'www.dnnpfacpmda.yej'),
(154, 'Battle', 'Aladdin', 39, '1.65', 'af', 'NG', 'quis@libero.edu', 0, '2012-03-07', 'www.qdwdhxblgcm.ota'),
(155, 'Brock', 'Rinah', 79, '1.90', 'na', 'US', 'mauris.ut@volutpatNulladignissim.edu', 0, '2012-03-06', 'www.gdqngcbadex.zdx'),
(156, 'Morton', 'Hakeem', 53, '1.25', 'af', 'NG', 'Quisque@milacinia.ca', 1, '2012-04-12', 'www.xpsatqaxoqc.bwp'),
(157, 'Parks', 'Mariko', 82, '1.50', 'eu', 'FR', 'adipiscing.elit.Etiam@massaMaurisvestibulum.net', 1, '2012-03-31', 'www.bvmpmorjejd.bye'),
(158, 'Albert', 'Rhea', 44, '1.95', 'af', 'NG', 'Aenean.eget.metus@sed.net', 1, '2012-05-01', 'www.zjdeshfqlgn.vec'),
(159, 'Potts', 'Gil', 43, '1.60', 'eu', 'FR', 'vestibulum.Mauris@necluctus.net', 0, '2012-04-19', 'www.uytffgajjun.tkp'),
(160, 'Morgan', 'Illana', 40, '1.89', 'na', 'US', 'tellus.id.nunc@etmagnaPraesent.co.uk', 0, '2012-03-01', 'www.wakfuyzfopw.xmu'),
(161, 'Hyde', 'Celeste', 19, '1.61', 'na', 'US', 'sem@euenimEtiam.ca', 1, '2012-02-20', 'www.opvcfrzrllf.maj'),
(162, 'Summers', 'Donovan', 67, '1.02', 'af', 'ZA', 'Nullam@aliquet.org', 0, '2012-02-15', 'www.vkbgvgtwpqa.hqf'),
(163, 'David', 'Haley', 34, '1.21', 'eu', 'FR', 'egestas@duinec.org', 0, '2012-02-20', 'www.mdectejkjpa.qwe'),
(164, 'Raymond', 'Quamar', 35, '1.56', 'af', 'ZA', 'eu.tellus.Phasellus@enimMauris.net', 0, '2012-04-01', 'www.ictssuiozcx.grn'),
(165, 'Clarke', 'Talon', 70, '1.93', 'eu', 'FR', 'interdum.Curabitur.dictum@scelerisquedui.co.uk', 0, '2012-03-23', 'www.nfrnhptycxi.vwt'),
(166, 'Sears', 'Karyn', 34, '1.57', 'na', 'CA', 'sagittis@maurisInteger.ca', 1, '2012-04-22', 'www.ojrqhamdthw.zvo'),
(167, 'Ellis', 'Clinton', 85, '1.12', 'eu', 'FR', 'blandit.mattis.Cras@ametrisusDonec.com', 0, '2012-03-31', 'www.nqegyagupnw.nrc'),
(168, 'Christensen', 'Jane', 62, '1.92', 'eu', 'FR', 'lobortis@Vivamusnisi.ca', 0, '2012-04-01', 'www.kwdakanbdss.tra'),
(169, 'Branch', 'Isadora', 18, '1.56', 'na', 'US', 'eget.nisi.dictum@duiFusce.ca', 1, '2012-03-04', 'www.zcbcuuvluyd.vnu'),
(170, 'Farley', 'Aimee', 19, '1.82', 'na', 'US', 'ad.litora.torquent@tincidunt.org', 1, '2012-04-24', 'www.meghdjcqekb.ggh'),
(171, 'George', 'Shoshana', 62, '1.87', 'na', 'US', 'ac.arcu.Nunc@Sed.ca', 0, '2012-03-01', 'www.mrbrbdxikgg.acz'),
(172, 'Price', 'Nissim', 21, '1.18', 'na', 'CA', 'non.hendrerit@facilisisnon.com', 1, '2012-02-04', 'www.oexykdzndsv.fwq'),
(173, 'Gamble', 'Brian', 29, '1.40', 'na', 'US', 'enim@fringillaDonec.edu', 1, '2012-03-08', 'www.hclkvhqsxyt.clu'),
(174, 'Walters', 'Roanna', 23, '1.74', 'na', 'US', 'montes.nascetur@vulputatenisisem.co.uk', 1, '2012-04-18', 'www.eonbngdybcv.ewh'),
(175, 'Hester', 'Natalie', 80, '1.34', 'na', 'US', 'eget.mollis.lectus@Nullamvelitdui.co.uk', 0, '2012-04-24', 'www.pcdrfzvbggw.coh'),
(176, 'Watts', 'Zephr', 49, '1.36', 'na', 'US', 'libero.at.auctor@nonarcuVivamus.co.uk', 1, '2012-05-02', 'www.bubiaylofjo.rrg'),
(177, 'Cline', 'Meredith', 25, '1.66', 'na', 'US', 'Lorem.ipsum.dolor@acturpisegestas.com', 1, '2012-02-13', 'www.utiadxsvdxq.gph'),
(178, 'Hodges', 'Hanna', 62, '1.33', 'eu', 'NL', 'libero.Morbi.accumsan@ante.co.uk', 0, '2012-01-25', 'www.bqdfntmcaxs.qfc'),
(179, 'Fleming', 'Ross', 50, '1.74', 'eu', 'FR', 'vestibulum.massa@molestietellus.com', 0, '2012-03-11', 'www.grehpxxuzfe.lyp'),
(180, 'English', 'Veda', 22, '1.10', 'eu', 'FR', 'enim.consequat@sagittisNullamvitae.org', 0, '2012-02-21', 'www.qjgqokbnzim.cno'),
(181, 'Bruce', 'Bryar', 61, '1.14', 'na', 'CA', 'massa.Integer.vitae@Namconsequat.net', 0, '2012-05-01', 'www.nvqnecpsrsf.hxq'),
(182, 'Summers', 'Chastity', 17, '1.00', 'eu', 'FR', 'nisl.Quisque@NullafacilisiSed.edu', 0, '2012-02-01', 'www.iqwzjbhgseu.tew'),
(183, 'George', 'Sophia', 68, '1.31', 'eu', 'BE', 'nec.tellus.Nunc@ridiculusmus.com', 1, '2012-03-06', 'www.soblsvexsnv.kwz'),
(184, 'Branch', 'Clayton', 55, '1.23', 'na', 'CA', 'lacus@at.org', 1, '2012-04-17', 'www.aqvseqdaqgc.enl'),
(185, 'Griffith', 'Dai', 54, '1.25', 'af', 'ZW', 'lacus.Quisque@sed.net', 0, '2012-04-29', 'www.bxlrdovrzff.nlu'),
(186, 'Vang', 'Marshall', 67, '1.64', 'af', 'ZW', 'vel.mauris.Integer@lorem.ca', 0, '2012-02-20', 'www.xmzxsfkdzik.rzw'),
(187, 'Steele', 'Ann', 51, '1.79', 'af', 'ZW', 'nulla@Nulla.org', 1, '2012-03-08', 'www.ktbkbmcbiyn.usm'),
(188, 'Leonard', 'Veda', 89, '1.71', 'eu', 'FR', 'fringilla@mauris.co.uk', 0, '2012-03-02', 'www.radzyqurdiq.cct'),
(189, 'Simon', 'Bernard', 88, '1.55', 'na', 'US', 'nonummy.Fusce.fermentum@lacusUtnec.com', 1, '2012-03-20', 'www.rapuifxlytm.yga'),
(190, 'Stewart', 'Iris', 51, '1.01', 'eu', 'UK', 'Cras@necmetus.com', 1, '2012-03-28', 'www.zfeyyqwfrtw.dub'),
(191, 'Gray', 'Herrod', 38, '1.31', 'af', 'ZA', 'orci.lacus.vestibulum@ullamcorper.ca', 0, '2012-03-17', 'www.pmjggfkbhtg.pck'),
(192, 'Butler', 'Philip', 67, '1.84', 'na', 'CA', 'luctus.aliquet@turpis.edu', 0, '2012-04-04', 'www.ykogevvgfyp.xva'),
(193, 'Dunlap', 'Geraldine', 24, '1.60', 'af', 'ZA', 'quis.massa.Mauris@egestas.ca', 0, '2012-04-29', 'www.bmsglidgjkw.mcy'),
(194, 'Morse', 'Abbot', 25, '1.00', 'eu', 'FR', 'luctus.ut@nuncsedpede.ca', 0, '2012-03-28', 'www.qqoablmdjdd.neg'),
(195, 'Mclean', 'Yvette', 28, '1.82', 'eu', 'UK', 'nulla.In@metusIn.net', 1, '2012-02-24', 'www.ngqxjuloaao.fxv'),
(196, 'Deleon', 'Lee', 77, '1.37', 'na', 'CA', 'cursus.vestibulum.Mauris@Duiselementumdui.org', 0, '2012-03-28', 'www.gxvhyjnvftp.adj'),
(197, 'David', 'Kirk', 49, '1.64', 'af', 'NG', 'leo@vestibulumnec.org', 0, '2012-02-17', 'www.jyiosypvivc.tmo'),
(198, 'Bonner', 'Buckminster', 84, '1.76', 'eu', 'UK', 'Proin.vel@porttitorvulputate.co.uk', 0, '2012-02-20', 'www.wndeifyutaw.rto'),
(199, 'Merritt', 'Regan', 48, '1.49', 'af', 'ZA', 'ornare.sagittis@vel.net', 0, '2012-03-26', 'www.yqhsqekksag.eme'),
(200, 'Carroll', 'Shaine', 34, '1.23', 'na', 'US', 'Donec.nibh@arcu.com', 1, '2012-02-23', 'www.wpjpppubuxz.bei'),
(201, 'Allison', 'Castor', 44, '1.26', 'af', 'NG', 'pede.ac@velit.ca', 1, '2012-03-28', 'www.pkskirlmzlo.kse'),
(202, 'Lawrence', 'Ramona', 78, '1.55', 'af', 'NG', 'nisi.Aenean.eget@lacus.org', 1, '2012-02-19', 'www.ixbiipsbugy.qvn'),
(203, 'Russo', 'Nerea', 41, '1.69', 'na', 'CA', 'cursus.et.eros@Aliquam.com', 0, '2012-03-02', 'www.mxnhelxzzsu.iju'),
(204, 'Warner', 'Briar', 89, '1.81', 'eu', 'FR', 'amet.faucibus@fames.net', 0, '2012-02-06', 'www.nqkmievrzte.zqh'),
(205, 'William', 'Russell', 25, '1.26', 'af', 'NG', 'eleifend.nunc.risus@cursus.co.uk', 0, '2012-03-12', 'www.isbimghcogm.rnc'),
(206, 'Sherman', 'Paloma', 79, '1.11', 'eu', 'FR', 'Etiam.gravida.molestie@euismodacfermentum.co.uk', 0, '2012-01-26', 'www.fdotkakxdgt.zkx'),
(207, 'Vega', 'Solomon', 77, '1.22', 'eu', 'BE', 'quis@ametmetusAliquam.org', 0, '2012-03-30', 'www.xwhadaanyyx.tde'),
(208, 'Wheeler', 'Uriel', 75, '1.68', 'eu', 'BE', 'in.hendrerit.consectetuer@sitametdiam.ca', 1, '2012-02-13', 'www.hqkfpiztnyd.hoz'),
(209, 'Whitfield', 'Leslie', 76, '1.44', 'eu', 'FR', 'enim.gravida@Etiamlaoreetlibero.net', 0, '2012-01-26', 'www.csdqqgyfgxy.bjk'),
(210, 'Kidd', 'Helen', 35, '1.55', 'na', 'CA', 'vulputate.dui@anteNuncmauris.org', 0, '2012-03-13', 'www.viocfndoxqf.eeu'),
(211, 'Cline', 'Kyra', 84, '1.65', 'na', 'US', 'gravida.Praesent.eu@eutellus.com', 1, '2012-03-02', 'www.ykjwbobgjfz.hwn'),
(212, 'Jennings', 'Travis', 39, '1.75', 'na', 'US', 'pede@tempusscelerisque.co.uk', 1, '2012-03-08', 'www.byykdyralel.uxz'),
(213, 'Ware', 'Thor', 46, '1.61', 'af', 'ZA', 'Fusce.aliquet.magna@Phasellus.org', 0, '2012-01-27', 'www.oekaivugutq.fkv'),
(214, 'Gray', 'Jessamine', 88, '1.80', 'eu', 'BE', 'augue@in.com', 0, '2012-04-17', 'www.ozrjsipcdyu.ctv'),
(215, 'Hodge', 'Darius', 37, '1.75', 'af', 'NG', 'in.lobortis@gravidaPraesenteu.co.uk', 0, '2012-02-04', 'www.momqmhsgddj.kxw'),
(216, 'Huber', 'Glenna', 78, '1.49', 'af', 'ZW', 'pede@vitaeeratvel.ca', 0, '2012-05-03', 'www.agrdkaohwax.slw'),
(217, 'Hopper', 'Ivor', 39, '1.20', 'af', 'ZW', 'quis@Crasvulputate.ca', 1, '2012-03-31', 'www.vbesbbknxvs.gbt'),
(218, 'Ratliff', 'Brynn', 28, '1.13', 'na', 'US', 'Curabitur.egestas.nunc@felis.com', 0, '2012-02-27', 'www.zqpxmienbxa.gak'),
(219, 'Dominguez', 'Macey', 53, '1.98', 'na', 'CA', 'a.purus@sed.org', 1, '2012-03-30', 'www.hnailbomlvg.yvc'),
(220, 'Shelton', 'Kaye', 46, '1.53', 'eu', 'FR', 'lobortis.tellus@dapibusidblandit.co.uk', 0, '2012-02-21', 'www.onwaiczdfuw.qkf'),
(221, 'Freeman', 'Chanda', 68, '1.31', 'af', 'ZA', 'vitae.purus.gravida@diam.com', 0, '2012-03-06', 'www.wdobykripzw.ihz'),
(222, 'Warner', 'Vera', 25, '1.59', 'eu', 'FR', 'nunc.nulla@diamdictumsapien.net', 1, '2012-02-18', 'www.omyelvmtuks.yyr'),
(223, 'Nelson', 'Desiree', 33, '1.87', 'eu', 'UK', 'a.nunc.In@ipsumCurabiturconsequat.co.uk', 0, '2012-04-30', 'www.sldnwwmvndk.tae'),
(224, 'Burch', 'Bruce', 38, '1.69', 'af', 'ZA', 'mi.tempor@nascetur.org', 0, '2012-02-01', 'www.mwzaajtanwc.voc'),
(225, 'Sanford', 'Quentin', 71, '1.14', 'na', 'US', 'at.iaculis@nullaanteiaculis.ca', 1, '2012-03-13', 'www.xkulhwhvyce.sfo'),
(226, 'Mcknight', 'Hadley', 79, '1.51', 'af', 'ZW', 'augue.ut.lacus@Suspendisseacmetus.co.uk', 0, '2012-02-12', 'www.qdbpfghlvxb.rmg'),
(227, 'Moody', 'Donna', 81, '1.08', 'na', 'CA', 'Quisque.ornare@Phasellusdolorelit.org', 0, '2012-03-13', 'www.rummrndetts.qun'),
(228, 'Acevedo', 'Lilah', 31, '1.52', 'na', 'US', 'nec.euismod@cursusnon.org', 0, '2012-04-21', 'www.qplkieadsax.ypc'),
(229, 'Good', 'Liberty', 30, '1.81', 'eu', 'FR', 'feugiat@dolor.org', 0, '2012-04-25', 'www.zkqrknqaqzu.vwz'),
(230, 'Santos', 'Jaquelyn', 55, '1.48', 'eu', 'NL', 'at@pedeblanditcongue.net', 0, '2012-04-25', 'www.gjfwizsfynw.myr'),
(231, 'Hicks', 'Giselle', 61, '1.36', 'na', 'US', 'varius@fermentumfermentumarcu.net', 0, '2012-04-19', 'www.fkkexgrwybm.olc'),
(232, 'Morrow', 'Dustin', 74, '1.38', 'na', 'US', 'Aliquam@disparturientmontes.com', 1, '2012-03-18', 'www.xymwaykmbbp.vlm'),
(233, 'Neal', 'Hedwig', 27, '1.34', 'eu', 'UK', 'mollis.vitae@sit.edu', 0, '2012-02-02', 'www.bntcojyzvpq.axb'),
(234, 'Guerra', 'Suki', 20, '1.78', 'eu', 'FR', 'eu.arcu.Morbi@convallisestvitae.org', 0, '2012-04-15', 'www.vigqywrwxau.zvq'),
(235, 'Hayes', 'Myles', 53, '1.81', 'eu', 'FR', 'Mauris@sit.net', 0, '2012-04-15', 'www.jmahmvhilrq.ynt'),
(236, 'Nelson', 'Brooke', 84, '1.87', 'eu', 'NL', 'diam.vel@cursusdiam.net', 0, '2012-03-26', 'www.laiwryvfsms.qhl'),
(237, 'Suarez', 'Anthony', 65, '1.10', 'eu', 'BE', 'neque.non.quam@atauctorullamcorper.net', 1, '2012-03-28', 'www.gnvyzoohzli.qqk'),
(238, 'Hubbard', 'Raphael', 72, '1.61', 'af', 'NG', 'commodo.hendrerit.Donec@etultricesposuere.ca', 1, '2012-02-25', 'www.hcggooxezjn.taq'),
(239, 'Thornton', 'Bethany', 15, '1.93', 'af', 'ZW', 'dui.lectus@vitaevelit.net', 0, '2012-04-01', 'www.iqfizsbajym.jyw'),
(240, 'Pacheco', 'Sydnee', 15, '1.22', 'eu', 'UK', 'Aenean@acliberonec.co.uk', 1, '2012-03-06', 'www.bawlzjuxgmw.guc'),
(241, 'Sawyer', 'Dahlia', 35, '1.95', 'af', 'NG', 'vel.est.tempor@Namnulla.co.uk', 0, '2012-01-30', 'www.frkmegsyjon.qmb'),
(242, 'Jacobson', 'Zena', 20, '1.38', 'af', 'ZW', 'euismod.enim.Etiam@ornarelectusjusto.co.uk', 1, '2012-01-28', 'www.osxygkoslas.nkp'),
(243, 'Scott', 'Oprah', 88, '1.26', 'eu', 'NL', 'mauris.ut.mi@Donec.co.uk', 1, '2012-05-02', 'www.blgmmzaxovt.nck'),
(244, 'Gregory', 'Nina', 38, '1.58', 'af', 'ZW', 'sociis.natoque.penatibus@Loremipsum.edu', 1, '2012-04-14', 'www.zdvozobczlx.hau'),
(245, 'Medina', 'Kristen', 27, '1.78', 'af', 'ZA', 'orci@Aenean.ca', 0, '2012-02-02', 'www.srhrcfydzow.dis'),
(246, 'Eaton', 'Andrew', 64, '1.52', 'af', 'ZW', 'nunc.est.mollis@Duis.net', 0, '2012-05-02', 'www.etidhehqwoq.ndy'),
(247, 'Brock', 'Neve', 27, '1.05', 'eu', 'BE', 'venenatis@feugiatplacerat.co.uk', 1, '2012-04-03', 'www.ofgluxyywbt.aci'),
(248, 'Juarez', 'Adele', 70, '1.41', 'eu', 'FR', 'vestibulum.neque@maurisipsum.co.uk', 0, '2012-03-15', 'www.tuhpwbqzkdk.doo'),
(249, 'Mullen', 'Haley', 56, '1.02', 'eu', 'UK', 'risus@Nullatincidunt.net', 0, '2012-03-07', 'www.lljwpuzdjqt.xsb'),
(250, 'Beck', 'Lev', 75, '1.17', 'na', 'US', 'in@parturientmontesnascetur.org', 0, '2012-03-24', 'www.llkubesugub.bxt'),
(251, 'Whitney', 'Indigo', 42, '1.68', 'eu', 'UK', 'massa.Vestibulum@inconsectetueripsum.net', 0, '2012-04-04', 'www.clvifwjcqit.zyq'),
(252, 'Oconnor', 'Moses', 86, '1.27', 'af', 'ZW', 'consequat.purus@tristiquepharetra.org', 1, '2012-04-08', 'www.fwxwfrwehnl.gtg'),
(253, 'Palmer', 'Mollie', 26, '1.33', 'eu', 'FR', 'nec@sit.co.uk', 0, '2012-03-26', 'www.wuoeiakcgcx.kmf'),
(254, 'Acevedo', 'Baxter', 15, '1.06', 'eu', 'FR', 'amet.consectetuer@lectus.co.uk', 1, '2012-04-15', 'www.xjrdlooyuoz.upq'),
(255, 'Petty', 'Griffin', 24, '1.16', 'af', 'ZA', 'nisl.elementum@egestasrhoncusProin.edu', 0, '2012-02-17', 'www.vshpggkwxdb.ahr'),
(256, 'Walton', 'Fulton', 81, '1.89', 'na', 'US', 'Vivamus@Praesentinterdumligula.net', 0, '2012-04-04', 'www.vddsgetowss.snr'),
(257, 'Estes', 'Christen', 32, '1.76', 'af', 'NG', 'pede@tellus.net', 0, '2012-04-16', 'www.qnzmfsesjlg.pgy'),
(258, 'Wade', 'Dane', 72, '1.22', 'af', 'ZW', 'magnis@lectusjusto.net', 1, '2012-01-27', 'www.azjjlqzrpxu.idc'),
(259, 'Conley', 'Allistair', 68, '1.10', 'af', 'ZA', 'velit@id.com', 1, '2012-03-29', 'www.fehvccegejg.wmj'),
(260, 'Dejesus', 'Patience', 59, '1.49', 'na', 'US', 'molestie.orci@velitAliquamnisl.edu', 0, '2012-02-05', 'www.ughypoubxax.nmw'),
(261, 'Daniel', 'Alexandra', 32, '1.42', 'eu', 'UK', 'odio.vel@interdumNuncsollicitudin.org', 0, '2012-04-01', 'www.neikfgyscdd.iqj'),
(262, 'Carson', 'Gretchen', 30, '1.76', 'eu', 'FR', 'nibh.sit@quamCurabitur.co.uk', 1, '2012-05-03', 'www.xviazmjpvnf.bgw'),
(263, 'Snyder', 'Willow', 80, '1.23', 'eu', 'BE', 'tincidunt.adipiscing@orciconsectetuer.com', 0, '2012-04-27', 'www.eraafgbmdxl.aeu'),
(264, 'Figueroa', 'Amber', 89, '1.67', 'af', 'ZA', 'sem@elementumategestas.org', 0, '2012-04-02', 'www.hmrlkcloxta.wjt'),
(265, 'Downs', 'Judith', 30, '1.33', 'na', 'US', 'Cras.lorem.lorem@orciUt.net', 1, '2012-03-28', 'www.pdlmxljgepz.kai'),
(266, 'Pena', 'Tanisha', 68, '1.61', 'eu', 'FR', 'Aliquam@sagittislobortis.org', 0, '2012-02-04', 'www.xsscirmiafg.svj'),
(267, 'Blackwell', 'Ray', 20, '1.08', 'eu', 'FR', 'sed.leo.Cras@Donec.ca', 0, '2012-03-28', 'www.jaqkfxdbhek.jgf'),
(268, 'Burns', 'Channing', 72, '1.02', 'eu', 'BE', 'Phasellus.ornare.Fusce@sedest.ca', 1, '2012-04-16', 'www.itupyeyekbg.edl'),
(269, 'Stanley', 'Joel', 62, '1.08', 'af', 'NG', 'Nam.consequat@Vivamusmolestiedapibus.net', 1, '2012-02-15', 'www.oqwzscdwozc.fcx'),
(270, 'Ford', 'Ronan', 68, '1.85', 'af', 'NG', 'erat@cursusa.org', 0, '2012-03-24', 'www.gmdvmfaochx.uek'),
(271, 'Savage', 'Alisa', 37, '1.65', 'na', 'CA', 'In.ornare@id.com', 1, '2012-02-27', 'www.shevpbqumlg.udt'),
(272, 'Watts', 'Joseph', 49, '1.71', 'af', 'ZW', 'lacus.Quisque.imperdiet@gravida.ca', 1, '2012-04-22', 'www.cgporwiuqhb.cbf'),
(273, 'Butler', 'Rinah', 66, '1.39', 'eu', 'FR', 'risus.Nulla@aliquetnec.ca', 0, '2012-03-04', 'www.vydlgenhjre.bzd'),
(274, 'Small', 'Odessa', 66, '1.97', 'eu', 'FR', 'Aliquam.fringilla.cursus@massarutrum.com', 1, '2012-02-28', 'www.evxomcpmflh.xjc'),
(275, 'Wise', 'Jerry', 65, '1.60', 'eu', 'FR', 'auctor@Maurisvelturpis.co.uk', 0, '2012-03-16', 'www.hmrmyzkhcjn.tao'),
(276, 'Guy', 'Kimberley', 46, '1.54', 'af', 'NG', 'Donec.est.mauris@vestibulumMauris.ca', 0, '2012-03-18', 'www.oarqkekktud.djp'),
(277, 'Sims', 'Allen', 62, '1.28', 'na', 'US', 'tempor.augue@necdiam.co.uk', 1, '2012-02-08', 'www.mgjgankjcgk.tlf'),
(278, 'Fischer', 'Phillip', 22, '1.40', 'af', 'NG', 'Donec.vitae.erat@arcuiaculis.co.uk', 1, '2012-02-04', 'www.ujxxphqbmyk.pkm'),
(279, 'Marquez', 'Wynter', 46, '1.81', 'na', 'CA', 'accumsan.laoreet.ipsum@ornare.net', 1, '2012-01-31', 'www.yltljdauppu.aly'),
(280, 'Thornton', 'Hakeem', 53, '1.71', 'eu', 'FR', 'pharetra.ut@Proinegetodio.org', 0, '2012-01-28', 'www.glawauxlsuq.gou'),
(281, 'Lindsey', 'Elmo', 68, '1.18', 'eu', 'BE', 'scelerisque.scelerisque.dui@Proin.ca', 0, '2012-04-29', 'www.nnsgiinxdbb.wdv'),
(282, 'Clark', 'Erin', 31, '1.10', 'eu', 'NL', 'non.enim.commodo@vehiculaetrutrum.co.uk', 0, '2012-04-01', 'www.widzjewnaac.ffd'),
(283, 'Clarke', 'Lara', 61, '1.67', 'af', 'ZW', 'malesuada@Integervitaenibh.ca', 0, '2012-03-14', 'www.hkqhltnqxsj.nkd'),
(284, 'Hensley', 'Ray', 65, '1.83', 'af', 'ZA', 'nonummy@ipsum.edu', 1, '2012-03-09', 'www.oqimiszswkb.nfk'),
(285, 'Brewer', 'Kyle', 38, '1.40', 'af', 'ZW', 'placerat@tempusscelerisquelorem.net', 0, '2012-04-07', 'www.fsxbdypjjsp.req'),
(286, 'Foley', 'Yvonne', 84, '1.93', 'eu', 'UK', 'auctor.ullamcorper.nisl@nascetur.org', 0, '2012-02-26', 'www.qzsarirwyzw.wye'),
(287, 'Vazquez', 'McKenzie', 63, '1.43', 'eu', 'BE', 'rutrum@laoreetipsumCurabitur.edu', 0, '2012-03-07', 'www.fsiereaqiyl.zjt'),
(288, 'Gates', 'Tarik', 79, '1.25', 'af', 'NG', 'ante.bibendum.ullamcorper@risus.net', 1, '2012-02-09', 'www.lumusxtbrcl.njy'),
(289, 'Williams', 'Randall', 82, '1.27', 'eu', 'NL', 'erat.vitae@est.ca', 0, '2012-03-13', 'www.aicrlneumed.jlw'),
(290, 'Wilson', 'Jacob', 16, '1.03', 'na', 'CA', 'Suspendisse@vel.net', 1, '2012-04-30', 'www.sameepnpmnv.mpf'),
(291, 'Bullock', 'Macy', 43, '1.52', 'eu', 'BE', 'vitae.dolor@aultricies.com', 1, '2012-02-29', 'www.mvkziflxkor.ucz'),
(292, 'Thornton', 'Hanna', 60, '1.03', 'eu', 'FR', 'mauris@etmagnaPraesent.ca', 0, '2012-04-21', 'www.ubffpxaswxi.mzq'),
(293, 'Martinez', 'Mannix', 71, '1.40', 'eu', 'FR', 'sagittis@enim.net', 1, '2012-02-23', 'www.kskhpttojiw.ctx'),
(294, 'Mendoza', 'William', 75, '1.52', 'af', 'ZW', 'eu.nulla@libero.org', 1, '2012-04-18', 'www.sfiboeehbus.wiy'),
(295, 'Pennington', 'Summer', 63, '1.62', 'eu', 'FR', 'tellus.eu@turpisIn.ca', 1, '2012-02-28', 'www.xsfymyvvwnt.ndz'),
(296, 'Terry', 'Wanda', 89, '1.15', 'na', 'US', 'odio.Aliquam.vulputate@rutrum.edu', 1, '2012-02-10', 'www.yxqvlkiojgo.ijb'),
(297, 'Rutledge', 'Lee', 40, '1.99', 'af', 'ZW', 'faucibus.lectus.a@arcuCurabiturut.com', 0, '2012-04-12', 'www.vpsevgneiil.rgj'),
(298, 'Howard', 'Hollee', 44, '1.02', 'eu', 'FR', 'metus.In@lorem.com', 1, '2012-03-09', 'www.pueydqpjzba.jdh'),
(299, 'Hogan', 'Hedy', 36, '1.45', 'eu', 'BE', 'interdum.Curabitur.dictum@nequeetnunc.edu', 1, '2012-04-20', 'www.nsgntgxxoin.vud'),
(300, 'Trujillo', 'Cameron', 20, '1.46', 'af', 'NG', 'eget.nisi.dictum@adipiscingelit.edu', 0, '2012-05-02', 'www.gzavinqdrof.tbv'),
(301, 'Guerrero', 'Lydia', 21, '1.70', 'eu', 'BE', 'non.lorem@liberoDonec.co.uk', 1, '2012-02-27', 'www.eoyvdeoezyx.brz'),
(302, 'Freeman', 'Camille', 57, '1.43', 'eu', 'UK', 'neque.pellentesque@tellusfaucibusleo.ca', 1, '2012-04-03', 'www.tbdtabvrade.poo'),
(303, 'Gilmore', 'Savannah', 43, '1.61', 'eu', 'FR', 'rutrum.urna@justo.com', 0, '2012-03-12', 'www.qbzreehttqr.dgt'),
(304, 'Rosario', 'Lael', 29, '1.27', 'af', 'ZW', 'augue.id@loremauctorquis.co.uk', 0, '2012-02-21', 'www.odxhtokaift.nmn'),
(305, 'Heath', 'Sacha', 15, '1.80', 'af', 'NG', 'a.odio@Donecnibh.org', 0, '2012-04-30', 'www.bufjzzxmmhj.mdk'),
(306, 'Daniel', 'Rhiannon', 20, '1.01', 'na', 'US', 'sit.amet@variusultricesmauris.net', 1, '2012-05-02', 'www.upkhxttaezx.gzb'),
(307, 'Snow', 'Forrest', 65, '1.98', 'eu', 'BE', 'eu.eleifend@Nuncpulvinar.org', 0, '2012-01-28', 'www.vfkzeifejbi.bae'),
(308, 'Middleton', 'Kirby', 77, '1.56', 'na', 'US', 'cursus.purus.Nullam@vitaeodio.net', 1, '2012-02-13', 'www.lbsvcawdfmw.acn'),
(309, 'Moss', 'Jonas', 46, '1.07', 'eu', 'FR', 'neque.non@adipiscingligulaAenean.net', 1, '2012-04-20', 'www.joaoaxpdkgj.vgd'),
(310, 'Blackwell', 'Keegan', 61, '1.63', 'af', 'ZA', 'eu.tellus@magnisdis.com', 0, '2012-04-09', 'www.otmzavugywm.pnu'),
(311, 'Stanton', 'Troy', 15, '1.26', 'eu', 'NL', 'Suspendisse@fringilla.org', 0, '2012-02-10', 'www.qhhpeuerobb.pgt'),
(312, 'Lowe', 'Abra', 56, '1.28', 'eu', 'UK', 'adipiscing@duilectusrutrum.org', 1, '2012-03-20', 'www.grovtqkajzl.xfi'),
(313, 'Best', 'Leilani', 34, '1.12', 'af', 'ZW', 'tellus.Phasellus@Suspendissenonleo.org', 1, '2012-02-21', 'www.oxqywbvbjxv.qcb'),
(314, 'Bennett', 'Jena', 40, '1.75', 'eu', 'FR', 'varius.orci.in@Sedeunibh.org', 1, '2012-04-05', 'www.pfuydpofrqx.aik'),
(315, 'Blair', 'Scarlet', 62, '1.68', 'na', 'US', 'Nullam@Pellentesquehabitant.org', 1, '2012-04-06', 'www.lxudordwcfu.swp'),
(316, 'Reeves', 'Timon', 89, '1.18', 'eu', 'BE', 'arcu.imperdiet.ullamcorper@nonantebibendum.edu', 0, '2012-03-14', 'www.hhfjnzbjpvu.pyo'),
(317, 'Wilcox', 'Nigel', 32, '1.64', 'eu', 'NL', 'pellentesque@arcuNunc.org', 1, '2012-02-24', 'www.hohwjbmiqlq.wbc'),
(318, 'Washington', 'Wyatt', 26, '1.33', 'eu', 'FR', 'quis.massa@habitantmorbi.com', 1, '2012-01-28', 'www.xueofukhxjs.bra'),
(319, 'Cameron', 'Hu', 34, '1.95', 'af', 'ZW', 'Donec.nibh@placeratCras.edu', 1, '2012-02-16', 'www.ilzgusimtlr.zkg'),
(320, 'Lewis', 'Hiram', 36, '1.71', 'af', 'ZW', 'velit.eget@leo.com', 1, '2012-01-28', 'www.dokwabwkikp.pdt'),
(321, 'Stokes', 'Germane', 37, '1.67', 'eu', 'NL', 'primis.in.faucibus@Nulla.edu', 0, '2012-03-14', 'www.lyptiejlygb.gwu'),
(322, 'Robles', 'Heidi', 21, '1.00', 'na', 'CA', 'interdum.Nunc@risus.net', 0, '2012-03-01', 'www.hbxfhzletgv.vhw'),
(323, 'Stephenson', 'Basil', 37, '1.98', 'eu', 'NL', 'ligula.elit.pretium@eu.net', 1, '2012-02-25', 'www.oguhnpdulav.tzs'),
(324, 'Carney', 'Dalton', 67, '1.87', 'af', 'ZA', 'in.consectetuer@acipsumPhasellus.com', 0, '2012-03-15', 'www.uiggiczivdl.nze'),
(325, 'Garrison', 'Zia', 46, '1.33', 'na', 'US', 'Aliquam@cursusetmagna.org', 0, '2012-03-23', 'www.riqmmbzlfil.qst'),
(326, 'Lynn', 'Rhonda', 88, '1.23', 'eu', 'FR', 'dignissim.lacus@conubianostra.co.uk', 0, '2012-03-01', 'www.ivloewexptu.oae'),
(327, 'House', 'Wylie', 88, '1.11', 'eu', 'NL', 'gravida.mauris.ut@maurissitamet.ca', 0, '2012-02-04', 'www.bsbrlwflarw.zwa'),
(328, 'Gordon', 'Fritz', 18, '1.01', 'eu', 'NL', 'arcu.et.pede@lacinia.net', 1, '2012-03-04', 'www.qyerqbrmcaq.dct'),
(329, 'Hensley', 'Dana', 29, '1.46', 'eu', 'NL', 'et.rutrum@sagittisplaceratCras.com', 1, '2012-03-31', 'www.pvarwrvylgn.qre'),
(330, 'Hardin', 'Sharon', 82, '1.71', 'eu', 'FR', 'arcu.iaculis.enim@nulla.co.uk', 1, '2012-02-08', 'www.nvyzblpspzq.msu'),
(331, 'Ortiz', 'Amber', 28, '1.50', 'eu', 'BE', 'egestas.a@Proinvel.edu', 1, '2012-04-05', 'www.ysgorwbkqtw.vgx'),
(332, 'Heath', 'Shelley', 22, '1.22', 'na', 'CA', 'taciti.sociosqu@ornareelit.net', 0, '2012-02-08', 'www.rwnipjewhot.kwb'),
(333, 'White', 'Olga', 15, '1.14', 'eu', 'FR', 'scelerisque.scelerisque@hendrerit.edu', 1, '2012-03-22', 'www.igqqvkarlzn.ldx'),
(334, 'Bird', 'Brennan', 89, '1.72', 'af', 'NG', 'elit@et.org', 1, '2012-03-09', 'www.ampmmcypaar.zty'),
(335, 'Rollins', 'Lila', 69, '1.88', 'eu', 'FR', 'Donec.at@nonegestasa.com', 0, '2012-03-12', 'www.fdufelexkzr.cwm'),
(336, 'Strickland', 'Leo', 22, '1.91', 'eu', 'UK', 'consectetuer.adipiscing.elit@atortorNunc.com', 1, '2012-01-30', 'www.dkunjlqgymn.akr'),
(337, 'Mckee', 'Raja', 56, '1.79', 'af', 'NG', 'Sed.dictum@nonduinec.ca', 0, '2012-04-19', 'www.rgmptzpdqfm.fzm'),
(338, 'Serrano', 'Alexandra', 74, '1.27', 'eu', 'NL', 'interdum.ligula@Phasellusdapibus.com', 0, '2012-02-04', 'www.bukszwxzisl.dyd'),
(339, 'Russo', 'Alyssa', 23, '1.09', 'eu', 'UK', 'non.magna@erat.com', 0, '2012-04-26', 'www.uefdxqgvubh.xdg'),
(340, 'Humphrey', 'Sarah', 76, '1.36', 'eu', 'FR', 'nonummy.ipsum.non@eratSed.com', 0, '2012-02-25', 'www.tmconklrrxo.mge'),
(341, 'Berger', 'Buckminster', 19, '1.94', 'na', 'CA', 'sodales@Maurisut.com', 1, '2012-04-14', 'www.rtqirfuxjwy.lvj'),
(342, 'Sosa', 'Griffin', 68, '1.98', 'na', 'CA', 'egestas@nequeMorbiquis.ca', 0, '2012-01-31', 'www.xjihghsbrof.jmc'),
(343, 'Mercado', 'Rahim', 68, '1.72', 'sa', 'BR', 'cursus@sitametdapibus.org', 0, '2012-04-26', 'www.vbbmqhwdkmm.cgs'),
(344, 'Henson', 'Malcolm', 62, '1.88', 'eu', 'BE', 'imperdiet.erat.nonummy@aliquetmagnaa.com', 1, '2012-03-06', 'www.jertqewwwge.mbb'),
(345, 'Black', 'Oren', 76, '1.37', 'af', 'ZW', 'Sed.malesuada@lorem.edu', 1, '2012-02-22', 'www.kaphhutjvvr.qfk'),
(346, 'Miranda', 'Carlos', 63, '1.59', 'af', 'ZA', 'Suspendisse.non@imperdiet.com', 0, '2012-02-12', 'www.tzupvlgbwwd.nlb'),
(347, 'Decker', 'Yen', 62, '1.95', 'na', 'CA', 'commodo@nuncullamcorpereu.org', 1, '2012-01-30', 'www.ksuhoxuayaa.ozo'),
(348, 'Pennington', 'Ishmael', 18, '1.49', 'af', 'ZW', 'dui@aliquamarcuAliquam.com', 0, '2012-04-05', 'www.zakxakmayff.zsf'),
(349, 'Molina', 'Perry', 84, '1.00', 'eu', 'FR', 'amet.orci.Ut@Maurisnulla.org', 0, '2012-03-04', 'www.twkscqruvhc.tif'),
(350, 'Fletcher', 'Vivien', 84, '1.41', 'eu', 'NL', 'quis.accumsan@tristique.edu', 0, '2012-04-16', 'www.kvyfdbylggl.eqo'),
(351, 'Travis', 'Aurora', 76, '1.28', 'eu', 'BE', 'nunc@euaccumsansed.edu', 1, '2012-04-28', 'www.dbhkhsoygml.csg'),
(352, 'Kerr', 'Murphy', 80, '1.85', 'eu', 'UK', 'tincidunt.nibh.Phasellus@arcu.com', 1, '2012-02-16', 'www.swmziybbeoj.aly'),
(353, 'Pearson', 'Carlos', 33, '1.32', 'af', 'NG', 'at@ipsumSuspendissesagittis.net', 0, '2012-02-23', 'www.rwdwknxwlpy.rxe'),
(354, 'Calderon', 'Sierra', 49, '1.46', 'af', 'NG', 'velit@Mauris.com', 1, '2012-04-11', 'www.sckeriwpmzn.ymf'),
(355, 'Stevens', 'Aquila', 54, '1.56', 'eu', 'FR', 'blandit@leoCrasvehicula.co.uk', 0, '2012-01-26', 'www.ttaftoeftag.gox'),
(356, 'Adams', 'Xena', 18, '1.70', 'na', 'CA', 'Sed@nectellusNunc.com', 1, '2012-04-07', 'www.wmxpndwcawb.bpd'),
(357, 'Kirk', 'Daquan', 63, '1.46', 'sa', 'BR', 'arcu.Aliquam.ultrices@facilisismagnatellus.net', 0, '2012-03-29', 'www.sojtklvzoic.ftt'),
(358, 'Wolf', 'Fuller', 67, '1.69', 'na', 'CA', 'blandit@placerat.ca', 0, '2012-05-03', 'www.vlmjtppnjor.bep'),
(359, 'Sharp', 'Lacey', 48, '1.65', 'af', 'ZW', 'luctus.felis@feugiat.co.uk', 1, '2012-01-30', 'www.plmyadaftvy.fml'),
(360, 'Osborn', 'Jescie', 78, '1.90', 'eu', 'NL', 'tellus@estNuncullamcorper.net', 1, '2012-02-19', 'www.wuapqyvcknu.gmv'),
(361, 'Zamora', 'Kyla', 16, '1.76', 'eu', 'NL', 'rutrum@Uttincidunt.ca', 0, '2012-02-05', 'www.zmkjzeqlaqe.ajw'),
(362, 'Berg', 'Upton', 89, '1.36', 'eu', 'NL', 'semper.pretium@auctor.edu', 0, '2012-04-14', 'www.esoeitespgc.opu'),
(363, 'Alford', 'Zahir', 56, '1.64', 'na', 'CA', 'lobortis.risus@enimnon.org', 1, '2012-03-31', 'www.vorkvuzkozv.crh'),
(364, 'Ferguson', 'Brennan', 75, '1.71', 'sa', 'BR', 'ultricies.ornare@massa.com', 1, '2012-04-23', 'www.xfgmfcowjwy.eqc'),
(365, 'Christian', 'Alma', 22, '1.53', 'af', 'ZA', 'elementum.at.egestas@adipiscingfringilla.ca', 1, '2012-03-15', 'www.abtkxronutz.whi'),
(366, 'Spears', 'Kylynn', 71, '1.31', 'sa', 'BR', 'consequat.dolor@Cras.ca', 0, '2012-04-18', 'www.ucpovolcxhv.qra'),
(367, 'Deleon', 'Berk', 45, '1.75', 'na', 'CA', 'a@liberoMorbiaccumsan.ca', 1, '2012-03-31', 'www.maqjhmazmga.wyo'),
(368, 'Buchanan', 'Morgan', 64, '1.87', 'eu', 'NL', 'donec@ornarefacilisiseget.edu', 0, '2012-04-15', 'www.uccgicchrfc.icx'),
(369, 'Buckley', 'Chandler', 74, '1.13', 'eu', 'FR', 'molestie.Sed@nullaCraseu.ca', 0, '2012-02-01', 'www.oqjgwmoyjra.ewi'),
(370, 'Holland', 'Stuart', 82, '1.81', 'sa', 'BR', 'sem@velnislQuisque.edu', 1, '2012-04-25', 'www.arrjisoebzo.ywt'),
(371, 'Craig', 'Signe', 49, '1.74', 'eu', 'NL', 'Cras@scelerisqueneque.co.uk', 1, '2012-02-27', 'www.omzplooiitf.tlr'),
(372, 'Love', 'Abel', 83, '1.38', 'sa', 'BR', 'non.bibendum@acfacilisisfacilisis.edu', 0, '2012-04-27', 'www.eppmivgunuu.keq'),
(373, 'Santiago', 'Emma', 28, '1.65', 'na', 'US', 'mus.Donec@nonarcu.com', 1, '2012-04-01', 'www.xkrkfmvkdqz.ihm'),
(374, 'Sears', 'Stacey', 51, '1.14', 'eu', 'UK', 'magna.Nam.ligula@aliquetliberoInteger.co.uk', 0, '2012-03-19', 'www.xvlalkjtxer.kic'),
(375, 'Dennis', 'Simon', 48, '1.29', 'eu', 'FR', 'parturient.montes@ornaretortorat.net', 0, '2012-04-02', 'www.iacgfuqowwx.iew'),
(376, 'Blanchard', 'Andrew', 18, '1.65', 'na', 'US', 'eu.sem.Pellentesque@tincidunt.edu', 0, '2012-04-13', 'www.wswtouctqet.rvh'),
(377, 'Gallagher', 'Nelle', 84, '1.45', 'af', 'NG', 'Donec.est@vel.co.uk', 1, '2012-04-24', 'www.czjtddkyktu.idi'),
(378, 'Watts', 'Drew', 36, '1.15', 'na', 'CA', 'lorem.ac.risus@inceptoshymenaeos.edu', 1, '2012-02-10', 'www.knsvgmdkvco.chd'),
(379, 'Hatfield', 'Heidi', 17, '1.82', 'eu', 'FR', 'dictum@Inatpede.co.uk', 0, '2012-02-01', 'www.hbqceeelhpb.ilj'),
(380, 'Mcguire', 'Garrison', 45, '1.11', 'af', 'ZA', 'lobortis@massalobortis.net', 1, '2012-04-23', 'www.wzaeocmzlce.wgi'),
(381, 'Wilkerson', 'Nomlanga', 75, '1.41', 'na', 'CA', 'Curabitur.dictum.Phasellus@vestibulumneceuismod.org', 0, '2012-02-16', 'www.cwmnyqjezja.tue'),
(382, 'Humphrey', 'Odessa', 71, '1.02', 'af', 'ZW', 'diam.Pellentesque.habitant@Fuscefermentum.ca', 0, '2012-03-09', 'www.wznvinpdsbz.lbg'),
(383, 'Byers', 'Kylee', 65, '1.17', 'af', 'ZA', 'risus@Donectempuslorem.co.uk', 0, '2012-03-21', 'www.fngxofiqlmj.cqc'),
(384, 'Bullock', 'Meghan', 15, '1.39', 'na', 'US', 'imperdiet.ornare.In@morbi.edu', 1, '2012-03-11', 'www.gmjsytvpwyk.wii'),
(385, 'French', 'Jocelyn', 52, '1.52', 'na', 'CA', 'natoque.penatibus@tincidunt.edu', 1, '2012-03-29', 'www.rwoouykchsu.uic'),
(386, 'Crosby', 'Mufutau', 21, '1.33', 'af', 'ZA', 'vel@nuncnulla.com', 0, '2012-04-13', 'www.sqozjitrkzz.mjj'),
(387, 'Daniel', 'Kirestin', 20, '1.71', 'eu', 'BE', 'eu.nulla.at@Nullamnisl.edu', 1, '2012-01-29', 'www.sxkdwjqfsvy.upd'),
(388, 'Blevins', 'Vincent', 19, '1.52', 'af', 'ZW', 'consequat.purus@magnamalesuadavel.com', 1, '2012-04-18', 'www.gxcytbtievt.fkz'),
(389, 'Baldwin', 'Kylan', 66, '1.25', 'eu', 'NL', 'leo.Cras@lobortis.org', 1, '2012-01-31', 'www.ncgryzxjzyc.qep'),
(390, 'Pope', 'Belle', 17, '1.52', 'na', 'US', 'sagittis.felis@necanteblandit.com', 1, '2012-04-14', 'www.qcgqaigfxzr.yoy'),
(391, 'Langley', 'Aretha', 23, '1.65', 'af', 'NG', 'luctus.aliquet.odio@ideratEtiam.org', 1, '2012-04-16', 'www.jqagqsffqsr.tig'),
(392, 'Duffy', 'Alea', 36, '1.25', 'sa', 'BR', 'dui.nec@Sedauctorodio.org', 0, '2012-04-03', 'www.esovlgotmvf.tcs'),
(393, 'Wells', 'Petra', 75, '1.07', 'af', 'ZA', 'diam.luctus@vitae.edu', 1, '2012-05-02', 'www.fqirlolohkk.bld'),
(394, 'Nieves', 'Orlando', 52, '1.80', 'af', 'ZA', 'bibendum@pretiumet.com', 1, '2012-04-19', 'www.dtokdympbex.oaz'),
(395, 'Johnston', 'Chiquita', 18, '1.41', 'eu', 'FR', 'sodales.Mauris@massarutrummagna.ca', 0, '2012-02-23', 'www.zbsbfppgpcu.qpy'),
(396, 'Cooke', 'Bianca', 85, '1.48', 'eu', 'NL', 'nunc@feugiatSednec.co.uk', 1, '2012-04-24', 'www.jmezozqdxvq.vgl'),
(397, 'Odonnell', 'Declan', 29, '1.00', 'eu', 'FR', 'lectus.justo@elitpretiumet.com', 0, '2012-03-30', 'www.oxnltehzqyc.uzd'),
(398, 'Weiss', 'Myra', 32, '1.05', 'af', 'ZA', 'sed.hendrerit@nuncest.org', 0, '2012-03-18', 'www.hrixqksporl.usy'),
(399, 'Reese', 'Serena', 85, '1.10', 'na', 'US', 'leo@justofaucibus.com', 0, '2012-04-04', 'www.vatjreejdxh.bch'),
(400, 'Gilliam', 'Eric', 71, '1.85', 'na', 'CA', 'feugiat.non@Duissitamet.com', 0, '2012-04-25', 'www.lmtokbpnjyr.ctg'),
(401, 'Wise', 'Emerald', 35, '1.65', 'na', 'CA', 'id.ante.Nunc@lorem.edu', 1, '2012-03-11', 'www.ntdwruylaya.hoo'),
(402, 'Haynes', 'Rama', 53, '1.83', 'eu', 'BE', 'Phasellus@vitaesodales.edu', 0, '2012-03-20', 'www.dzmdymlmbwi.osq'),
(403, 'Pearson', 'Amanda', 41, '1.13', 'af', 'NG', 'Vivamus.sit.amet@Maecenas.com', 0, '2012-03-02', 'www.xsqyozngqgs.zlc'),
(404, 'Randall', 'Nadine', 87, '1.18', 'eu', 'FR', 'luctus.felis.purus@nequeNullamnisl.org', 0, '2012-02-16', 'www.jzqzgizrksn.jwj'),
(405, 'Ryan', 'Idola', 49, '1.13', 'af', 'ZA', 'facilisis.Suspendisse@mollisneccursus.co.uk', 0, '2012-05-03', 'www.mvvwoigksbb.del'),
(406, 'Wade', 'Bianca', 68, '1.34', 'eu', 'BE', 'lobortis.quam.a@cursusdiam.com', 0, '2012-02-22', 'www.ymmqnnurzse.sap'),
(407, 'Reed', 'Adena', 51, '1.93', 'eu', 'FR', 'consequat.nec@facilisisSuspendissecommodo.co.uk', 0, '2012-03-08', 'www.krxkjcckrvv.evf'),
(408, 'Heath', 'Charity', 43, '1.21', 'af', 'ZW', 'ornare@Proin.ca', 0, '2012-02-23', 'www.ftwworbkxlx.gtb'),
(409, 'Key', 'Kirestin', 27, '1.00', 'eu', 'FR', 'sit.amet@Duismi.co.uk', 0, '2012-02-12', 'www.zyoxjmddoqw.stw'),
(410, 'Cooper', 'Minerva', 45, '1.67', 'af', 'ZA', 'eu.eros@mollis.edu', 0, '2012-01-29', 'www.senhukangfj.qxc'),
(411, 'Woodward', 'Leonard', 20, '1.34', 'af', 'NG', 'vestibulum@tristiqueneque.com', 0, '2012-03-29', 'www.bhwhnfykiyr.kgd'),
(412, 'Gilbert', 'Victor', 74, '1.76', 'sa', 'BR', 'morbi@risusInmi.org', 0, '2012-02-04', 'www.lhqtghenlnx.fgp'),
(413, 'Pennington', 'Basil', 63, '1.91', 'af', 'ZA', 'Curabitur.sed@Cras.net', 0, '2012-03-23', 'www.oyvzltfsixt.yww');
INSERT INTO `demo` (`id`, `name`, `firstname`, `age`, `height`, `id_continent`, `id_country`, `email`, `freelance`, `lastvisit`, `website`) VALUES
(414, 'Baker', 'Hiram', 22, '1.05', 'eu', 'UK', 'Proin@auctorvitaealiquet.ca', 0, '2012-03-23', 'www.ssxaqqznmas.pcg'),
(415, 'Gould', 'Colette', 32, '1.45', 'af', 'ZA', 'ridiculus@in.net', 1, '2012-02-12', 'www.vreisxyudhj.jux'),
(416, 'Graham', 'Alvin', 53, '1.12', 'eu', 'NL', 'Nam@porttitor.net', 1, '2012-02-09', 'www.fqpiyysswbs.jgz'),
(417, 'Estes', 'Solomon', 17, '1.24', 'af', 'ZA', 'convallis.ante@ideratEtiam.net', 1, '2012-02-13', 'www.znovphfvhmf.iuq'),
(418, 'Pitts', 'Victor', 76, '1.55', 'eu', 'NL', 'orci@temporerat.com', 0, '2012-03-19', 'www.dmakyfsswld.sas'),
(419, 'Blake', 'Denise', 82, '1.13', 'af', 'ZA', 'lacus.Quisque@Proin.org', 0, '2012-02-04', 'www.tdwqpaiqske.pno'),
(420, 'Wilder', 'Chadwick', 31, '1.71', 'sa', 'BR', 'et.pede.Nunc@placerat.net', 1, '2012-04-21', 'www.ralklqzyfza.lsd'),
(421, 'Hardin', 'Audrey', 73, '1.61', 'sa', 'BR', 'commodo.tincidunt.nibh@seddictum.com', 1, '2012-02-02', 'www.cgvhfwtyadk.uuo'),
(422, 'Vaughn', 'Harlan', 41, '1.68', 'af', 'ZW', 'tempor.lorem@egestasDuisac.com', 0, '2012-04-11', 'www.dxadakxuyvz.inx'),
(423, 'Mathis', 'Lareina', 56, '1.91', 'na', 'US', 'ac.turpis.egestas@Proin.com', 0, '2012-03-28', 'www.jdziyyqmwff.kfk'),
(424, 'Barrera', 'Chiquita', 81, '1.26', 'sa', 'BR', 'ipsum@tempus.org', 0, '2012-04-18', 'www.edrajxkohlc.esu'),
(425, 'Burgess', 'Freya', 54, '1.94', 'sa', 'BR', 'gravida.Praesent.eu@et.com', 1, '2012-02-23', 'www.mpguaiytdbi.qau'),
(426, 'Buck', 'Martena', 24, '1.63', 'eu', 'BE', 'Mauris@malesuadafringilla.edu', 0, '2012-04-28', 'www.sadwclndgpy.jhg'),
(427, 'Wheeler', 'Keelie', 33, '1.21', 'eu', 'NL', 'non@euturpis.edu', 1, '2012-04-17', 'www.wnxcdvlkbkc.hrg'),
(428, 'Patel', 'Ferris', 15, '1.54', 'af', 'ZA', 'lacus@pharetrasedhendrerit.edu', 1, '2012-02-28', 'www.umgwxjdoqws.qld'),
(429, 'Clark', 'Calvin', 26, '1.51', 'eu', 'UK', 'euismod@eratVivamusnisi.net', 1, '2012-02-14', 'www.txgjtzzfdeh.htk'),
(430, 'Bennett', 'Boris', 70, '1.14', 'af', 'ZA', 'nunc.interdum@loremutaliquam.edu', 1, '2012-05-02', 'www.vcxyhefbohc.hln'),
(431, 'Martin', 'Keiko', 33, '1.11', 'eu', 'BE', 'sed@justonecante.org', 0, '2012-02-23', 'www.cpdrwfyhsna.zqd'),
(432, 'Fleming', 'Tiger', 55, '1.41', 'eu', 'NL', 'fringilla@libero.edu', 0, '2012-03-17', 'www.qaljnlieoqo.cct'),
(433, 'Beard', 'Simon', 51, '1.32', 'eu', 'FR', 'sagittis.lobortis@dolorsit.co.uk', 0, '2012-04-07', 'www.leezutcxmdh.ynn'),
(434, 'Stephenson', 'Kevin', 19, '1.02', 'af', 'NG', 'sit.amet.ultricies@lectussitamet.ca', 1, '2012-02-05', 'www.qtncxubkiyr.kyy'),
(435, 'Morin', 'Trevor', 65, '1.36', 'af', 'ZA', 'fringilla.purus@necleoMorbi.co.uk', 1, '2012-02-29', 'www.uzfcywmwvdh.mmz'),
(436, 'Gordon', 'Callum', 47, '1.99', 'sa', 'BR', 'urna@Etiam.net', 0, '2012-03-05', 'www.kfwfjdsvcbx.ozv'),
(437, 'Bernard', 'Galvin', 33, '1.45', 'na', 'CA', 'consectetuer.cursus.et@elitsedconsequat.net', 0, '2012-05-01', 'www.xnyapwoorqs.ycg'),
(438, 'Rich', 'William', 87, '1.15', 'sa', 'BR', 'Vivamus.non.lorem@penatibusetmagnis.edu', 0, '2012-03-27', 'www.osafitekzyv.yal'),
(439, 'Ortega', 'Maya', 75, '1.37', 'eu', 'FR', 'ornare.In.faucibus@fermentumvelmauris.ca', 0, '2012-02-17', 'www.srtrpoqpaik.uqe'),
(440, 'Kent', 'Walter', 48, '1.84', 'na', 'CA', 'sodales@mollis.co.uk', 1, '2012-02-19', 'www.lmglvqglutw.goh'),
(441, 'Frank', 'Alexa', 80, '1.80', 'eu', 'NL', 'Nunc.pulvinar.arcu@Phasellusin.ca', 0, '2012-03-24', 'www.vuqqnnwcueo.rbp'),
(442, 'Gutierrez', 'Zeph', 54, '1.92', 'eu', 'FR', 'Nam.tempor.diam@Seddiam.net', 0, '2012-02-13', 'www.wqervsiwhsh.vqo'),
(443, 'Montoya', 'Justin', 81, '1.74', 'na', 'CA', 'vulputate@idantedictum.com', 1, '2012-02-12', 'www.wnkegrzwgqc.dkn'),
(444, 'Christensen', 'Noble', 31, '1.75', 'af', 'NG', 'at@pretiumaliquetmetus.co.uk', 0, '2012-02-26', 'www.ixbondsyrwg.xqt'),
(445, 'Mason', 'Ivory', 61, '1.23', 'sa', 'BR', 'Mauris@arcu.co.uk', 1, '2012-02-03', 'www.lqrcnyaerpv.huf'),
(446, 'Silva', 'Iola', 77, '1.03', 'eu', 'NL', 'enim@egetvarius.co.uk', 0, '2012-03-12', 'www.taglpbtjgoa.cqk'),
(447, 'Weeks', 'Galvin', 32, '1.87', 'af', 'ZW', 'blandit@convallisante.co.uk', 1, '2012-02-01', 'www.nriugiwxtvb.zrv'),
(448, 'Harper', 'Kameko', 53, '1.11', 'af', 'NG', 'purus@Cras.com', 0, '2012-04-29', 'www.ucfoyhopcyi.pdm'),
(449, 'Patel', 'Joshua', 90, '1.91', 'na', 'US', 'in@malesuada.co.uk', 0, '2012-03-21', 'www.rnstmajpnbv.nay'),
(450, 'Golden', 'Aline', 49, '1.38', 'eu', 'BE', 'eu.augue.porttitor@nec.com', 1, '2012-04-26', 'www.sogfqbsrzbc.lly'),
(451, 'Reyes', 'Barrett', 57, '1.92', 'eu', 'NL', 'dui.quis@natoquepenatibus.net', 0, '2012-04-25', 'www.sjrsluextxy.hwe'),
(452, 'Lynn', 'Kasimir', 23, '1.63', 'af', 'ZA', 'Curabitur@luctus.co.uk', 0, '2012-04-16', 'www.sbjlzhtvlhc.oym'),
(453, 'Donaldson', 'Kelsie', 50, '1.62', 'af', 'ZW', 'arcu.Nunc@neque.net', 0, '2012-02-29', 'www.zlyltaarngk.zyq'),
(454, 'Doyle', 'Ainsley', 81, '1.74', 'af', 'ZA', 'in.aliquet.lobortis@velconvallis.edu', 0, '2012-02-26', 'www.xdvkkgjixqt.tif'),
(455, 'Kline', 'Kiona', 78, '1.16', 'af', 'NG', 'libero.mauris@risusDonecegestas.org', 0, '2012-03-17', 'www.nvpkljeuorn.kvf'),
(456, 'Walter', 'Zena', 25, '1.38', 'na', 'US', 'arcu@vulputate.co.uk', 1, '2012-03-30', 'www.gdjvvxfrceq.gmn'),
(457, 'Emerson', 'Clark', 89, '1.58', 'eu', 'NL', 'ridiculus.mus@vestibulum.ca', 1, '2012-04-05', 'www.xtpaxggjunm.tdi'),
(458, 'Valenzuela', 'Basia', 17, '1.18', 'sa', 'BR', 'auctor.velit.Aliquam@velarcuCurabitur.net', 1, '2012-03-22', 'www.rzhlntfqcdd.dga'),
(459, 'Calhoun', 'Rose', 82, '1.29', 'sa', 'BR', 'imperdiet.dictum.magna@Suspendisse.edu', 1, '2012-04-06', 'www.xggzjkdpkgn.hmm'),
(460, 'Wolfe', 'Althea', 28, '1.61', 'af', 'NG', 'imperdiet.ullamcorper@Duisami.edu', 0, '2012-04-24', 'www.edwpjjwwvwi.aln'),
(461, 'Carey', 'Cherokee', 26, '1.25', 'af', 'NG', 'dui.semper.et@scelerisquescelerisque.co.uk', 1, '2012-02-26', 'www.cusyqbycocq.sie'),
(462, 'Moon', 'Constance', 36, '1.48', 'af', 'NG', 'volutpat.Nulla.dignissim@aliquet.com', 1, '2012-04-24', 'www.rhufjkysoog.wad'),
(463, 'Stewart', 'Pearl', 40, '1.58', 'na', 'US', 'mollis@leo.com', 1, '2012-03-20', 'www.jgjyvpuvtqr.ben'),
(464, 'Wilcox', 'Kane', 68, '1.95', 'eu', 'BE', 'netus@egettinciduntdui.co.uk', 1, '2012-01-29', 'www.fumykeapszv.kxk'),
(465, 'Lloyd', 'Heidi', 67, '1.18', 'af', 'ZW', 'pharetra@Vestibulumante.net', 1, '2012-03-21', 'www.xsmqsiaptog.lsb'),
(466, 'Hodge', 'Hayfa', 27, '1.02', 'eu', 'NL', 'enim.sit.amet@enimdiam.co.uk', 0, '2012-04-02', 'www.tyumnbygcjw.hjd'),
(467, 'Cannon', 'Lionel', 20, '1.56', 'na', 'CA', 'vulputate@tortorIntegeraliquam.org', 0, '2012-04-04', 'www.bjoesllcooj.qda'),
(468, 'Gaines', 'Tanek', 74, '1.10', 'eu', 'UK', 'enim.Etiam.imperdiet@asollicitudinorci.net', 0, '2012-03-14', 'www.vfokuyaxzih.tlh'),
(469, 'Bishop', 'Lee', 32, '1.32', 'eu', 'UK', 'convallis.erat.eget@Sed.edu', 1, '2012-02-28', 'www.iasiizbthda.noi'),
(470, 'Lane', 'Anastasia', 56, '1.09', 'eu', 'BE', 'nibh.Quisque@dictumplacerataugue.org', 0, '2012-02-17', 'www.gmyoqzcehpq.wro'),
(471, 'Allison', 'Carson', 54, '1.52', 'af', 'ZW', 'ut.cursus.luctus@pedeSuspendisse.net', 0, '2012-02-09', 'www.yukgkbcbpcd.cql'),
(472, 'Henson', 'Chloe', 56, '1.41', 'eu', 'FR', 'malesuada.ut.sem@liberonecligula.org', 0, '2012-01-29', 'www.joezqibhtmv.hza'),
(473, 'Rollins', 'Dennis', 86, '1.01', 'af', 'ZA', 'sociis@felisNullatempor.com', 0, '2012-04-11', 'www.njtgwpovpiy.okd'),
(474, 'Lynn', 'Melinda', 49, '1.24', 'af', 'ZA', 'mi.enim.condimentum@risusvariusorci.ca', 1, '2012-04-05', 'www.acmqllewosr.zyc'),
(475, 'Oconnor', 'McKenzie', 39, '1.25', 'na', 'CA', 'Mauris.vel@hendreritaarcu.net', 0, '2012-02-18', 'www.kazytryrtqm.bxb'),
(476, 'Steele', 'Martha', 72, '1.94', 'na', 'CA', 'et.rutrum.non@idenimCurabitur.ca', 1, '2012-02-01', 'www.oliicukzwht.qfg'),
(477, 'Kaufman', 'Rachel', 72, '1.27', 'eu', 'UK', 'id@tortor.org', 0, '2012-03-27', 'www.htfdazufggb.amu'),
(478, 'Sosa', 'Sheila', 58, '1.45', 'eu', 'BE', 'pellentesque.massa.lobortis@adui.co.uk', 1, '2012-04-26', 'www.cqvjxxjjrfh.gsv'),
(479, 'Keller', 'Lara', 56, '1.22', 'na', 'CA', 'tincidunt.congue.turpis@tellusnonmagna.edu', 1, '2012-04-05', 'www.mladrikjdxc.rei'),
(480, 'Noel', 'Sean', 19, '1.29', 'sa', 'BR', 'Nam.ligula.elit@nuncac.net', 0, '2012-04-13', 'www.gdrjauafdso.ezo'),
(481, 'Sampson', 'Meredith', 80, '1.52', 'eu', 'BE', 'sit.amet@utpellentesqueeget.co.uk', 1, '2012-04-16', 'www.bzxerljraem.wus'),
(482, 'Collier', 'Savannah', 22, '1.71', 'sa', 'BR', 'at.pede.Cras@placerat.edu', 1, '2012-04-09', 'www.gjngoadishg.vbk'),
(483, 'Lawson', 'Keegan', 41, '1.48', 'eu', 'UK', 'ut@magnatellusfaucibus.com', 1, '2012-02-20', 'www.phwipceqmrx.ves'),
(484, 'Nunez', 'Elmo', 69, '1.78', 'af', 'ZW', 'dictum.eleifend@rhoncusNullam.net', 0, '2012-01-31', 'www.lxxyputtnlx.fdu'),
(485, 'Blankenship', 'Lacy', 33, '1.20', 'eu', 'NL', 'sit.amet@lectusa.org', 1, '2012-03-16', 'www.fftsqqytlan.rfn'),
(486, 'Ware', 'Ila', 72, '1.19', 'af', 'ZA', 'ultrices.posuere@sem.org', 1, '2012-03-05', 'www.ujnfjawpovf.iad'),
(487, 'Noel', 'Skyler', 71, '1.29', 'af', 'ZW', 'non@ligulatortor.net', 1, '2012-03-10', 'www.vrkjmqrmujk.nqi'),
(488, 'Freeman', 'Brody', 70, '1.50', 'af', 'ZW', 'aliquet@Donecnibhenim.net', 0, '2012-01-30', 'www.dlzxvjlmstn.lhn'),
(489, 'Knapp', 'Belle', 30, '1.04', 'af', 'ZW', 'Quisque.purus.sapien@nonummy.co.uk', 1, '2012-04-23', 'www.ejjwdxhkkvx.qwj'),
(490, 'Mitchell', 'Lillian', 46, '1.82', 'af', 'ZA', 'vitae.aliquet.nec@aliquetmagna.co.uk', 1, '2012-02-23', 'www.zdzkyxavhqp.snv'),
(491, 'Kelley', 'Mariko', 84, '1.69', 'sa', 'BR', 'blandit@vitaenibh.ca', 0, '2012-04-13', 'www.bofifubtqon.nel'),
(492, 'Carrillo', 'Mona', 51, '1.52', 'af', 'NG', 'amet.orci.Ut@eros.net', 0, '2012-02-01', 'www.rwehksupdyk.pnr'),
(493, 'Cooper', 'Joshua', 38, '1.31', 'eu', 'UK', 'Ut.semper@non.co.uk', 1, '2012-05-02', 'www.hugltrbhign.qpq'),
(494, 'Shepard', 'Kelly', 81, '1.33', 'na', 'US', 'nec@laoreet.ca', 1, '2012-04-05', 'www.cqclwpbmgxt.cgb'),
(495, 'Shannon', 'Maile', 86, '1.63', 'sa', 'BR', 'turpis.Nulla.aliquet@et.net', 1, '2012-03-24', 'www.lwkruduaequ.dgd'),
(496, 'Garrison', 'Burke', 75, '1.07', 'af', 'NG', 'tristique.pellentesque.tellus@dolor.org', 0, '2012-04-15', 'www.jhcoxxrdbaf.vby'),
(497, 'Long', 'Tatiana', 50, '1.21', 'na', 'CA', 'lacus.Quisque@Donecnon.org', 0, '2012-02-24', 'www.maqnbvjctxb.gde'),
(498, 'Moore', 'Olga', 85, '1.98', 'eu', 'NL', 'est@arcuVestibulumante.net', 1, '2012-02-01', 'www.obyizaodefz.dfv'),
(499, 'Crosby', 'Sylvester', 57, '1.70', 'eu', 'NL', 'augue.malesuada.malesuada@malesuadavel.co.uk', 0, '2012-03-09', 'www.wlobrnewjjg.ydg'),
(500, 'Kinney', 'Veronica', 66, '1.64', 'af', 'ZW', 'blandit.mattis@nonleoVivamus.ca', 1, '2012-01-26', 'www.mujveqthwgg.oys');

-- --------------------------------------------------------

--
-- Table structure for table `EIPN`
--

CREATE TABLE `EIPN` (
  `recordNum` int(11) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `vendorNumber` text NOT NULL,
  `externalTransactionId` text NOT NULL,
  `shippingMethod` text NOT NULL,
  `trackCode` varchar(250) NOT NULL,
  `paymentStatus` text NOT NULL,
  `fulfillmentStatus` text NOT NULL,
  `customerId` int(11) NOT NULL,
  `customerIP` text NOT NULL,
  `billPerson` text NOT NULL,
  `billPersonStreet` text NOT NULL,
  `billPersonCity` text NOT NULL,
  `billPersonState` text NOT NULL,
  `billPersonZip` text NOT NULL,
  `billPersonCountry` text NOT NULL,
  `billPersonPhone` text NOT NULL,
  `shipPerson` text NOT NULL,
  `shipPersonStreet` text NOT NULL,
  `shipPersonCity` text NOT NULL,
  `shipPersonState` text NOT NULL,
  `shipPersonZip` text NOT NULL,
  `shipPersonCountry` text NOT NULL,
  `shipPersonPhone` text NOT NULL,
  `discountCost` double(10,2) NOT NULL,
  `subtotalCost` double(10,2) NOT NULL,
  `shippingCost` double(10,2) NOT NULL,
  `taxCost` double(10,2) NOT NULL,
  `totalCost` double(10,2) NOT NULL,
  `affiliateId` text NOT NULL,
  `items` text NOT NULL,
  `sku` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderComments` text NOT NULL,
  `supplyCode` text NOT NULL,
  `repID` int(11) NOT NULL,
  `groupID` int(11) NOT NULL,
  `paidOut` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EIPN`
--

INSERT INTO `EIPN` (`recordNum`, `orderNumber`, `orderDate`, `vendorNumber`, `externalTransactionId`, `shippingMethod`, `trackCode`, `paymentStatus`, `fulfillmentStatus`, `customerId`, `customerIP`, `billPerson`, `billPersonStreet`, `billPersonCity`, `billPersonState`, `billPersonZip`, `billPersonCountry`, `billPersonPhone`, `shipPerson`, `shipPersonStreet`, `shipPersonCity`, `shipPersonState`, `shipPersonZip`, `shipPersonCountry`, `shipPersonPhone`, `discountCost`, `subtotalCost`, `shippingCost`, `taxCost`, `totalCost`, `affiliateId`, `items`, `sku`, `quantity`, `orderComments`, `supplyCode`, `repID`, `groupID`, `paidOut`) VALUES
(286, 1, '2016-05-16', '1', '', '', '', 'QUEUED', '', 0, '184.97.252.116', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', '', '', '', '', '', '', '', 0.00, 6.00, 0.00, 0.00, 6.00, '', 'Gameday Headband Set - Green - Gold', 'HB500-GNG', 1, '', 'ACG', 0, 0, 0),
(284, 4, '2016-05-19', '4', '', '', '356346778769', 'QUEUED', 'Complete', 0, '184.97.188.18', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(285, 3, '2016-05-19', '3', '', '', '', 'QUEUED', 'Shipped', 0, '65.128.183.47', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(283, 9, '2016-05-19', '9', '4UV14740J0320194L', '', '312342314', 'ACCEPTED', 'Processing', 0, '184.97.188.18', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(282, 10, '2016-05-19', '10', '8WK86103W4220554R', '', 'ehtew5h4e5hg', 'ACCEPTED', '', 0, '184.97.188.18', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Jason Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(281, 11, '2016-05-19', '11', '08103878CT801984K', '', ' vv67bv4uy57bubu7756', 'ACCEPTED', 'Shipped', 0, '184.97.188.18', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(280, 13, '2016-05-19', '13', '7TL68850CL027494Y', '', '35464536345', 'ACCEPTED', 'Complete', 0, '184.97.188.18', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', 'jjw', 0, 0, 0),
(279, 14, '2016-05-19', '14', '9JS33400DA761584A', '', '', 'ACCEPTED', '', 0, '184.97.188.18', 'ckldsjfp', 'spkjvp\nspdmpq', 'pacjp', 'MN', '55411', 'US', 'o34u023u0', 'ckldsjfp', 'spkjvp\nspdmpq', 'pacjp', 'MN', '55411', 'US', 'o34u023u0', 0.00, 0.05, 0.00, 0.00, 0.05, '', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 0, 0),
(278, 15, '2016-05-25', '15', '', '', '', 'QUEUED', '', 0, '184.97.188.18', 'Jane j Doe', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(277, 16, '2016-05-25', '16', '0MR73278C3166981M', '', '', 'ACCEPTED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 1.00, 0.00, 0.00, 1.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(276, 17, '2016-05-25', '17', '', '', '', 'QUEUED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(275, 18, '2016-05-25', '18', '', '', '', 'ACCEPTED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(274, 19, '2016-05-25', '19', '', '', '', 'ACCEPTED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(273, 20, '2016-05-25', '20', '', '', '', 'ACCEPTED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '', 'test 12345', '92009', 1, '', '', 0, 0, 0),
(272, 22, '2016-05-25', '22', '', '', '', 'ACCEPTED', '', 0, '65.128.183.178', 'Cleo Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '6124302916', 0.00, 0.00, 0.00, 0.00, 0.00, '11623', 'test 12345', '92009', 1, '', '', 0, 9015, 0),
(310, 152, '2017-09-17', '1152', '', '', '', 'PAID', '', 0, '71.87.32.171', 'Thomas Brazill', '1300 Post Road  #301', 'Fitchburg', 'WI', '53713', 'United States', '3147371213', 'Thomas Brazill', '1300 Post Road  #301', 'Fitchburg', 'WI', '53713', 'US', '3147371213', 0.00, 10.99, 0.00, 0.00, 14.24, '', '', '', 0, 'test order from Tom Brazill.  \nSoffe sales rep', 'SOF', 0, 0, 0),
(270, 28, '2016-06-05', '28', '', '', '', 'ACCEPTED', '', 0, '184.97.234.254', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.11, 0.00, 0.00, 0.11, '9198', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 26597, 0),
(269, 29, '2016-06-05', '29', '', '', '', 'ACCEPTED', '', 0, '184.97.234.254', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Mary Johnson', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.11, 0.00, 0.00, 0.11, '9198', 'Houndstooth Military Hat.', 'SAN_DT619_OSFA_NewNavyBlue', 1, '', '', 0, 26597, 0),
(268, 36, '2016-11-04', '36', '3U626219H13500055', '', '', 'ACCEPTED', '', 0, '205.185.131.35', 'Alyssa Blank', '760 Sportsmans Valley Road', 'La Crescent', 'MN', '55947-9747', 'US', '', 'Alyssa Blank', '760 Sportsmans Valley Road', 'La Crescent', 'MN', '55947-9747', 'US', '', 0.00, 0.02, 0.02, 0.00, 0.04, '', 'Bear in the Morning Blue & Pink Kids PJ Set', 'LZO_KSS734B_KSS734A_BLUE_PINK_TEST', 1, '', '', 0, 0, 0),
(267, 37, '2016-11-07', '37', '99F26077LS414632G', '', '', 'ACCEPTED', '', 0, '184.97.140.171', 'Clint Harris', '1823 Irving', 'Minneapolis', 'MN', '55411', 'US', '2345246757', 'Clint Harris', '1823 Irving', 'Minneapolis', 'MN', '55411', 'US', '2345246757', 0.00, 0.02, 0.02, 0.00, 0.04, '24673', 'Bear in the Morning Blue & Pink Kids PJ Set', 'LZO_KSS734B_KSS734A_BLUE_PINK_TEST', 1, '', '', 9016, 16444, 0),
(266, 38, '2016-11-07', '38', '9D5880300L035180P', '', '', 'ACCEPTED', '', 0, '184.97.140.171', 'Clint Harris', '1823 Irving', 'Minneapolis', 'MN', '55411', 'US', '2345246757', 'Clint Harris', '1823 Irving', 'Minneapolis', 'MN', '55411', 'US', '2345246757', 0.00, 0.03, 0.03, 0.00, 0.06, '24673', 'Bear Bum Red Kid\'s Socks', 'LZO_KSK066_BEARBUMTEST', 3, '', 'ACG', 9016, 16444, 0),
(265, 101, '2016-11-22', '1101', '96D89751SG405734X', '', '', 'ACCEPTED', '', 0, '71.200.139.12', 'TAMMY', '10316 Plantation lane', 'Berlin', 'MD', '21811', 'US', '4107263641', 'TAMMY', '10316 Plantation lane', 'Berlin', 'MD', '21811', 'US', '4107263641', 0.00, 22.90, 12.97, 0.00, 35.87, '27771', 'Lunch Cooler Messenger', 'SAN-BG753-OSFA-MilitaryCamoBlack', 1, '', '', 0, 27027, 0),
(264, 107, '2017-03-23', '1107', '0BC57310P7400052X', '', '', 'ACCEPTED', '', 0, '184.97.137.149', 'Cleo', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '16129982061', 'Cleo', '3508 3rd st ne, 2\n2', 'Minneapolis', 'MN', '55418', 'US', '16129982061', 0.00, 0.01, 0.00, 0.00, 0.01, '', 'test product 1', '92062', 1, '', '', 0, 0, 0),
(263, 108, '2017-03-23', '1108', '4BP55658RV212973A', '', '', 'ACCEPTED', '', 0, '184.97.137.149', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', '', '3508 3rd st ne\nnull', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(262, 109, '2017-03-23', '1109', '0WA74449VM096751T', '', '', 'ACCEPTED', '', 0, '184.97.137.149', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.02, 0.00, 0.00, 0.02, '24673', 'test product 1', '92062', 2, '', '', 9016, 16444, 0),
(261, 110, '2017-03-23', '1110', '4V743614CV7791937', '', '', 'ACCEPTED', '', 0, '184.97.137.149', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(260, 111, '2017-03-24', '1111', '5TR56224PW179863F', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55411', 'US', '', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55411', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(259, 112, '2017-03-24', '1112', '33G04693D9091784P', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Jason Johnson', '211 Park ave\n14', 'Minneapolis', 'MN', '55405', 'US', '', 'Jason Johnson', '211 Park ave\n14', 'Minneapolis', 'MN', '55405', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(258, 113, '2017-03-24', '1113', '0CB553041L358452M', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(257, 114, '2017-03-24', '1114', '5TC93529WT908993V', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(256, 115, '2017-03-24', '1115', '58T9678602798702H', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(255, 116, '2017-03-24', '1116', '15B978766L940030X', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(254, 117, '2017-03-24', '1117', '5LX399261P4342439', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(253, 118, '2017-03-24', '1118', '7CE44318BV670263N', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(252, 120, '2017-03-25', '1120', '3X1050427J9379808', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(251, 121, '2017-03-25', '1121', '97C76079TK3459837', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(250, 122, '2017-03-25', '1122', '1JR20090G97980734', '', '', 'ACCEPTED', '', 0, '184.97.247.38', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(248, 110, '2017-03-23', '1110', '4V743614CV7791937', '', '', 'ACCEPTED', '', 0, '184.97.137.149', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n3e', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(249, 127, '2017-03-30', '1127', '2EL84007B49655617', '', '', 'ACCEPTED', '', 0, '184.97.209.49', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 'Cleo Johnson', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '', 0.00, 0.01, 0.00, 0.00, 0.01, '24673', 'test product 1', '92062', 1, '', '', 9016, 16444, 0),
(307, 150, '2017-08-09', '1150', '', '', '', 'PAID', '', 0, '107.4.202.221', 'Bernie Sanders', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Bernie Sanders', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.02, 0.00, 0.00, 0.02, '24673', '', '', 0, '', 'THW', 30820, 24673, 0),
(302, 147, '2017-08-07', '1147', '', '', 'i6j5e7u4w27', 'PAID', 'Processing', 0, '107.4.202.221', 'Alice Keth', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Alice Keth', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.03, 0.00, 0.00, 0.03, '24673', '', '', 0, 'Leave at back door', 'HSW', 30820, 24673, 0),
(308, 151, '2017-08-09', '1151', '', '', '', 'PAID', '', 0, '107.4.202.221', 'Jackie Baker', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Jackie Baker', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.05, 0.00, 0.00, 0.05, '24673', '', '', 0, 'Hope this test goes great', 'THW', 30820, 24673, 0),
(309, 151, '2017-08-09', '1151', '', '', '245345435345345', 'PAID', 'Processing', 0, '107.4.202.221', 'Jackie Baker', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Jackie Baker', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.05, 0.00, 0.00, 0.05, '24673', '', '', 0, 'Hope this test goes great', 'HSW', 30820, 24673, 0),
(311, 153, '2017-10-18', '1153', '', '', '', 'PAID', '', 0, '67.220.18.27', 'Hector Castellano', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Hector Castellano', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.08, 0.00, 0.00, 0.08, '24673', '', '', 0, '', 'HSW', 30820, 24673, 0),
(312, 153, '2017-10-18', '1153', '', '', '', 'PAID', '', 0, '67.220.18.27', 'Hector Castellano', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'United States', '6129982061', 'Hector Castellano', '3508 3rd st ne\n2', 'Minneapolis', 'MN', '55418', 'US', '6129982061', 0.00, 0.08, 0.00, 0.00, 0.08, '24673', '', '', 0, '', '', 30820, 24673, 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(63, 'Test Item', 'This is a test item', NULL, NULL),
(64, 'Testq', 'sbdfljksdc', NULL, NULL),
(65, 'Test 2', 'Test2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderItems`
--

CREATE TABLE `orderItems` (
  `recordNum` int(11) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `supplierCode` text NOT NULL,
  `itemName` text NOT NULL,
  `description` text NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `sku` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipCost` double(10,2) NOT NULL,
  `itemOptionName` text NOT NULL,
  `itemOptionValue` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderItems`
--

INSERT INTO `orderItems` (`recordNum`, `orderNumber`, `supplierCode`, `itemName`, `description`, `productPrice`, `price`, `sku`, `quantity`, `shipCost`, `itemOptionName`, `itemOptionValue`) VALUES
(24, 150, 'THW', 'Test Product 2', '', 0.01, 0.01, 'THW-92065', 1, 0.00, 'Size', 'Medium'),
(23, 150, 'HSW', 'Test Product 3', '', 0.01, 0.01, 'HSW-8978634', 1, 0.00, 'Size', 'Medium'),
(22, 147, 'HSW', 'Test Product 3', '', 0.01, 0.01, 'HSW-8978634', 1, 0.00, 'Size', 'Large'),
(21, 147, 'THW', 'Test Product 2', '', 0.01, 0.01, 'THW-92065', 1, 0.00, 'Size', 'Large'),
(20, 147, 'HSW', 'test product 1', '', 0.01, 0.01, 'HSW-92062', 1, 0.00, 'Size', 'Medium'),
(25, 151, 'THW', 'Test Product 2', '', 0.01, 0.01, 'THW-92065', 2, 0.00, 'Size', 'Large'),
(26, 151, 'HSW', 'test product 1', '', 0.01, 0.01, 'HSW-92062', 1, 0.00, 'Size', 'Medium'),
(27, 151, 'HSW', 'Test Product 3', '', 0.01, 0.01, 'HSW-8978634', 2, 0.00, 'Size', 'Medium'),
(28, 152, 'SOF', 'Soffe Baseball Jersey', '50/50 Cotton Poly Jersey Contrast sleeves and neckline Curved shirt tail', 10.99, 10.99, 'SOF_M209', 1, 0.00, 'Colors', 'White / Red'),
(29, 153, 'HSW', 'Test Product 3', '', 0.01, 0.01, 'HSW-8978634', 4, 0.00, 'Size', 'Large'),
(30, 153, 'HSW', 'test product 1', '', 0.01, 0.01, 'HSW-92062', 3, 0.00, 'Size', 'Medium'),
(31, 153, 'THW', 'Test Product 2', '', 0.01, 0.01, 'THW-92065', 1, 0.00, 'Size', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `supplyCode` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip` text NOT NULL,
  `rawPass` text NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `url1` varchar(250) NOT NULL COMMENT 'main site',
  `url2` varchar(250) NOT NULL COMMENT 'wholesale site',
  `conName` text NOT NULL,
  `conName2` text NOT NULL,
  `conEmail` varchar(250) NOT NULL,
  `conEmail2` varchar(250) NOT NULL,
  `conPhone` varchar(250) NOT NULL,
  `conPhone2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `supplyCode`, `phone`, `address`, `city`, `state`, `zip`, `rawPass`, `userPass`, `url1`, `url2`, `conName`, `conName2`, `conEmail`, `conEmail2`, `conPhone`, `conPhone2`) VALUES
(1, 'Heritage Sportsware', 'cleo@greatmoods.com', 'HSW', '6122254291', '123 Flower Lane', 'Minneaplois', 'MN', '55418', 'eleven11', 'd51694caa29cad42c5f5aad332e6145116b1995d7e97d31a74eb035163bf55e9', '', '', '', '', '', '', '', ''),
(2, 'Acme Goods', 'accounts@acme.com', 'ACG', '612-605-1238', '1225 hale Ave', 'Minneapolis', 'Minnesota', '55418', 'twelve12', '211f9bd736f338027a272cb1e9a23f4e4fb098ee56057bd4ad8c284d353f9ac3', '', '', '', '', '', '', '', ''),
(3, 'Jacobs Jewels', 'mark@jacobs.com', 'JJW', '(756)-586-7898', '123 Clark St', 'Minneapolis', 'Minnesota', '55427', 'eleve11', '7e5448a29ec99c9a8a999db9f46d91bf0d52007ecd59bee85db7866290d1a938', '', '', '', '', '', '', '', ''),
(4, 'Grant Luxury Goods', 'grant@yahoo.com', 'GLG', '(612)-223-2457', '1233 Clark St', 'Minneapolis', 'MN', '55311', 'eleven11', 'd51694caa29cad42c5f5aad332e6145116b1995d7e97d31a74eb035163bf55e9', '', '', '', '', '', '', '', ''),
(5, 'AccessorizeMe', 'accessorizemewholesale@gmail.com', 'ACC', '(563)-556-0240', '2794 University Ave', 'Dubuque', 'IA', '52001', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(6, 'Alashan Cashmere', 'scullian@att.net', 'ALC', '(401)-710-9653', '866 Broncos Highway', 'Mapleville ', 'RI', '2839', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(7, 'Allied Products/ Springbok-puz', 'sstreit@alliedmaterials.com', 'API', '(816)-241-8080', '1420 Kansas Ave', 'Kansas City', 'MO', '64127', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(8, 'Alpaca to Apparel', 'info@alpacatoapparel.com', 'ALP', '920-536-1394', '9428 Cedar St.  #3', 'Fish Creek', 'WI', '54212', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(9, 'Alternative', 'lrankin@alternativeapparel.com', 'ALT', '678-924-5253', '1650 Indian Brook Way, Bldg 200', 'Norcross', 'GA', '30093', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(10, 'Bella Canvas', 'sabrina.villatoro@bellacanvas.com', 'BLC', '800-537-2222', '102 Reliance Dr.', 'Hebron', 'OH', '43025', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(11, 'Blanks+', 'senri@blanksplus.net', 'BLA', '213-629-0006', '947 S. Alameda St., Unit A', 'Los Angeles', 'CA', '90021', 'twelve19', '54545e0babb793cbba10bef3fbd7a4a315a4cb02ebde36f48793fe5f8b9408e0', '', '', '', '', '', '', '', ''),
(12, 'Boxercraft ', 'websupport@boxercraft.com', 'BOX', '800-914-7774', '7131 Discovery Blvd', 'Mableton', 'GA', '30126', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(13, 'BryBelly', 'info@brybelly.com', 'BRY', '800-926-7241', '3334 Mesilla Ct.', 'Indianapolis', 'IN', '46226', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(14, 'Champro Sports', 'ron@promotionalsports.com', 'CHS', '847-279-2600', '1175 Wheeling Road', 'Wheeling', 'IL', '60090', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(15, 'Coast Fulfillment Corp', 'randy@coastfulfillmentcorp.com', 'CFC', '909-545-8548   ', '2240 E. Cedar St.', 'Ontario', 'CA', '91761', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(16, 'Cycle Force Group', 'nylen@cyclefg.com', 'CFG', '515-232-0277', '2105 SE 5th St.', 'Ames', 'IA', '50010', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(17, 'Denali', 'maxbentley22@tds.net', 'DEN', '800-588-0081', '1725 E. Delavan Dr', 'Janesville', 'WI', '53546', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(18, 'Dexsa', 'brian@dexsa.com', 'DEX', '715-386-3082', '1501 Livingstone Rd/PO Box 188', 'Hudson', 'WI', '54016', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(19, 'Eden Merry-James Lawrence', 'brian@jameslawrencecompany.com', 'EDM', '715-386-3082', '1501 Livingstone Rd/PO Box 188', 'Hudson', 'WI', '54016', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(20, 'Educa/John Hansen', 'ryans@johnhansenco.com', 'EDU', '650-697-7353', '369 Adrian Rd.', 'Millbrae', 'CA', '94030', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(21, 'Esschert Design', 'rebecca@esschertdesignusa.com', 'ESD', '301-271-0007', '13803 Glen Abbey Dr.', 'Charlotte', 'NC', '28278', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(22, 'Faceplant Dreams', 'brigitte@faceplantdreams.com', 'FPD', '813-443-4888', '2402 E. 7th Ave', 'Tampa', 'FL', '33605', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(23, 'Fashque', 'fashquedesigns@gmail.com', 'FAS', '305-266-5150', '777 NW 72nd Ave. #1106/1107', 'Miami', 'FL', '33126', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(24, '5280 Chocolates', 'julie@5280chocolates.com', 'FTE', '303-708-0300', '8600 Park Meadows Dr. #100', 'Lone Tree', 'CO', '80124', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(25, 'Flagsource', 'mpriesman@flagsource.com', 'FLS', '800-323-9127', '951 Swanson Dr.', 'Batabia', 'IL', '60510', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(26, 'Flying Colors Apparel', 'info@flyingcolorsapparel.com', 'FCA', '410-590-2798', '2600 Cabover Dr. #L', 'Hanover', 'MD', '21076', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(27, 'Green 3 Apparel', 'jim@green3apparel.com', 'GRA', '920-235-1288', '3345 Medalist Dr.', 'Oshkosh', 'WI', '54902', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(28, 'Heritage Sportswear', 'j.dunne@heritagesportswear.com', 'HSP', '800-537-2222', '102 Reliance Dr.', 'Hebron', 'OH', '43025', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(29, 'Holloway/Augusta', 'ken.rood@hollowayusa.com', 'HOL', '937-494-2501', '2633 Campbell Rd.', 'Sidney', 'OH', '45365', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(30, 'Howardâ€™s Jewelry', '', 'HWJ', '952-474-1400', '8140 Mallory Court', 'Chanhassen', 'MN', '55317', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(31, 'Imperial Home', 'garyd@httapparel.com', 'IPH', '951-304-0400', '414 Alaska Ave', 'Torrance', 'CA', '90503', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(32, 'InnovativeKids', 'mary@twistsales.com', 'INK', '651-270-5001', '49 Richmondville Ave', 'Westport', 'CT', '06880-2052', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(33, 'In Play Sportswear', 'kyle@inplaysportswear.com', 'IPS', '651-765-2494', '7162 4th St. N.', 'Oakdale', 'MN', '55128', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(34, 'In Your Face Apparel', 'doug@inyourfaceapparel.com', 'IYF', '972-267-9450', '3200 Commander  #100', 'Carrollton', 'TX', '75006', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(35, 'J America', 'jfenech@jamericablanks.com', 'JAM', '517-521-1105', '445 E. Van Riper', 'Fowlerville', 'MI', '48836', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(37, 'Kindred Hearts', 'jrb@kindredhearts.com', 'KDH', '815-230-2700', '23827 W. Industrial Dr. S.', 'Plainfield', 'IL', '60585', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(39, 'Laketown Chocolates', 'lwilheim@laketownchocolates.com', 'LTC', '952-442-1102', '141 W. 1st St.   #2', 'Waconia', 'MN', '55387', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(40, 'Latico', 'michael@laticoleathers.com', 'LAT', '800-969-8426', '321 Palmer Road   Suite A', 'Denville', 'NJ', '7834', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(41, 'Liberty Wear', 'cjackson@liberty-wear.com', 'LBW', '937-550-9466', '217-B S. Pioneer Blvd.', 'Springboro', 'OH', '45066', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(42, 'Lur', 'mark@lurapparel.com', 'LUR', '513-873-5657', '1646 Hoffner St.', 'Cincinnati', 'OH', '45223', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(43, 'Malabar Bay', 'sales@malabarbay.com', 'MBB', '203-359-9714', '15 Merwin St.  3rd floor', 'Norwalk', 'CT', '6850', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(44, 'Mangiacotti', 'jimmy@mangiacotti.com', 'MAN', '508-226-6900', '117 Pleasant St.', 'Attleboro', 'MN', '2703', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(45, 'Mark Steel', 'matt.marksteel@gmail.com', 'MKS', '866-999-0699', '568 S. Foothill Dr.  #1', 'Kamas', 'UT', '84036', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(46, 'Meissenburg Designs', 'laura@oldwoodsigns.com', 'MBD', '877-974-7446', '7583 Hwy 35', 'Bigfork', 'MT', '59911', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(47, 'Melissa & Doug', 'Sales@MelissaAndDoug.com', 'MND', '1-800-718-5365', '123 Main St.', 'Wilton', 'CT', '6897', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(48, 'Michael Tyler Collections', 'swfeiges@gmail.com', 'MTC', '715-381-7234', '1013 Saint Croix St.', 'Hudson', 'WI', '54016', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(49, 'Monag Apparel', 'amit@monag.com', 'MON', '585-924-1410', '5911 Loomis Rd.', 'Farmington', 'NY', '14425', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(50, 'Montana Silversmiths', 'kaddis@montanasilversmiths.com', 'MSS', '800-548-4511', '#1 Sterling Lane, PO Box 839', 'Columbus', 'MT', '59019', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(51, 'Mountain Mamas', 'customerservice@mountainmamas.net', 'MMM', '877-649-3160', 'PO Box 980203 ', 'Park City', 'UT', '84098', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(52, 'Next Innovations', 'sales@nextinnovations.net', 'NIN', '218-547-5990', '7981 Town Hall Rd. NW', 'Walker', 'MN', '56484', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(53, 'Palmer Candy', 'vicki@palmercandy.com', 'PAL', '712-258-5543', '2600 Hwy 75 N', 'Sioux City', 'IA', '51105', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(54, 'Pals Socks', 'richard@marvelgiftandhome.com', 'PAS', '516-603-4006', '123 Main St.', 'St. Paul', 'MN', '55116', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(55, 'Pavilion Gift', 'bporter@protowels.com', 'PIV', '888-762-4457', '8210 Buffalo Rd.', 'Bergen', 'NY', '14416', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(56, 'PC Bakery', 'customerservice@pcbakery.com', 'PCB', '847-573-9640  ', '100 N. Fairway Dr.', 'Vernon Hills', 'IL', '60061', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(57, 'Pella Products', 'miriah@pellaproducts.com', 'PEP', '888-618-6881', '835 Broadway', 'Pella', 'IA', '50219', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(58, 'Pro Golf Premiums', 'dick@progolfpremiums.com', 'PGP', '800-890-6068', '810 Krift Ave', 'Burlington', 'WI', '53105', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(60, 'Putorti', 'rterrell47@aol.com', 'PUT', '514-385-5150', '26342 Ivanhoe', 'Redford Twp', 'MI', '48239', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(61, 'Rico Industries', 'jjjasicki@aol.com', 'RIC', '855-608-4618', '7000 N. Austin Ave.', 'Niles', 'IL', '60714', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(62, 'Roman, Inc.', 'czagorski@roman.com', 'ROM', '1-800-729-7662', '472 Brighton Dr.', 'Bloomingdale', 'IL', '60108', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(63, 'Sanmar', 'johnoleson@sanmar.com', 'SAN', '206-727-3200', '22833 SE Black Nugget Rd. #130', 'Issaquah', 'WA', '98029', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(65, 'Scully', 'dalejalovec@msn.com', 'SCL', '303-733-9051', '1701 Pacific Ave', 'Oxnard', 'CA', '93033', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(66, 'Seattle Silver/Ann C. Designs', 'fromnathan@aol.com', 'SSV', '206-937-4633', '1206 4th Ave', 'Seattle', 'WA', '98161', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(67, 'Sea & Anchor', 'seaanchorapparel@gmail.com', 'SEA', '805-300-5945', '1104 E. 12th St', 'Los Angeles', 'CA', '90021', 'fifty55', 'c0309a8a00fb56c6215547b1a3c6b9cbbf19194990ec7db75accc1b22bc4eb1c', '', '', '', '', '', '', '', ''),
(68, 'Sinobrite', 'sinobrite@att.net', 'SIN', '847-599-9831', '227 Ambrogio Dr. Ste. C', 'Gurnee', 'IL', '60031', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(69, 'Sockclub', 'dane@sotmclub.com', 'SOC', '512-981-6437', '2400 E Cesar Chavez St Unit 102', 'Austin', 'TX', '78702', 'thirty33', 'fa97ad3ddee11ff2c935bb07ca367d2b9c2987c8531fc5c76e854424d0b12f76', '', '', '', '', '', '', '', ''),
(70, 'Southbend Chocolates', 'corey@sbchocolate.com', 'SBC', '800-301-4961', '3300 W. Sample St.', 'Southbend', 'IN', '46619', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(71, 'Softies', 'dennis@softiepjs.com', 'SOT', '952-926-7226', '7659 Washing Ave. S.', 'Edina', 'MN', '5439', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(72, 'Tickled Pink', 'cjs@cjscottage.com', 'TPK', '1-800-188-7176', '123 Main St.', 'St. Paul', 'MN', '55116', 'twenty2', 'c4e5051ab6cad0143742033719282bd50d36f2c2cdee8acc28185f6292406e62', '', '', '', '', '', '', '', ''),
(74, 'Woods Expressions', 'customerservice@woodexpressions.com', 'WEX', '310-329-9143', '444 E. Gardena Blvd. Bldg A', 'Gardena', 'CA', '90248', 'nine69 ', '5c250b0dc319efe696889c221b813bf71ffadf725ef687e04a8d77620377f6cd', '', '', '', '', '', '', '', ''),
(75, 'Santaâ€™s Workshop', 'cmc@santasworkshopinc.com', 'STA', '612-605-1238', '1650 Trumbull Ave', 'Girard', 'OH', '44420', 'eleven12', 'ca61e5c982ed125343e0a8be3449d8ec578df6516e5cfc31d83ce0548fd44da3', '', '', '', '', '', '', '', ''),
(76, 'John Hansen/Educa', 'salesinfo@johnhansenco.com', 'JHN', '650-697-7353', '369 Adrian Rd.', 'Millbrae', 'CA', '94030', 'twelve22', '9c2fbc7ec726d8975973cede4b7290e4e192358fc573949b95a523f02edccdef', '', '', '', '', '', '', '', ''),
(78, 'Wild Repbulic', 'sales@wildrepublic.com', 'WRP', '1-800-800-9678', '1955 Midway Dr.', 'Twinsburg', 'OH', '44087', 'thirteen13', '978476548800b16ca1563db1339cbfd876c8de443a0c698687c6c530a090ffb4', '', '', '', '', '', '', '', ''),
(79, 'Howardâ€™s Jewelry', 'customerservice@howardsjewelry', 'HWJ', '952-474-1400', '8140 Mallory Court', 'Chanhassen', 'MN', '55317', 'fourteen14', '960ba024f7b98a1b42c8fdb0e8afbdb25c69aa1832faf59a0659ab0bce6139d9', '', '', '', '', '', '', '', ''),
(80, 'Fun Timez', 'funtimez@gmail.com', '23424353', '(876)-425-8744', '34 Sand Lake Rd', 'Houston', 'TX', '23424', 'funtimez', '1807d71ce1a1fc92291920493d01cbe370929946f5f6156617b7e7438804835d', '', '', '', '', '', '', '', ''),
(82, 'Baloonz', 'fw46tgs@gmail.com', '943', '(355)-325-2533', '89', 'Lapoon', 'MA', '904995', '', 'c5757c0371ec546a8f3fc8ee3ab39f34701d5a1e0eb7e4659ea483c85a9a5c12', '', '', '', '', '', '', '', ''),
(83, 'Larz', '876@gmail.com', '765', '(873)-888-3837', '45', 'Lansing', 'MA', '83434', '', 'b43f6e83313e70631efff0f904f9543dca94a7ab12cb92de65ad9148e134d7b7', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CRUDClass`
--
ALTER TABLE `CRUDClass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `EIPN`
--
ALTER TABLE `EIPN`
  ADD PRIMARY KEY (`recordNum`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderItems`
--
ALTER TABLE `orderItems`
  ADD PRIMARY KEY (`recordNum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CRUDClass`
--
ALTER TABLE `CRUDClass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `EIPN`
--
ALTER TABLE `EIPN`
  MODIFY `recordNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `orderItems`
--
ALTER TABLE `orderItems`
  MODIFY `recordNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
