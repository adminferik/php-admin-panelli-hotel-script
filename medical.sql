-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Tem 2025, 17:36:06
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `medical`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT 0,
  `ayar_logo` varchar(250) NOT NULL,
  `ayar_siteurl` varchar(100) NOT NULL,
  `ayar_title` varchar(250) NOT NULL,
  `ayar_description` varchar(250) NOT NULL,
  `ayar_keywords` varchar(250) NOT NULL,
  `ayar_author` varchar(100) NOT NULL,
  `ayar_tel` varchar(50) NOT NULL,
  `ayar_gsm` varchar(50) NOT NULL,
  `ayar_faks` varchar(50) NOT NULL,
  `ayar_mail` varchar(50) NOT NULL,
  `ayar_adres` varchar(250) NOT NULL,
  `ayar_ilce` varchar(50) NOT NULL,
  `ayar_il` varchar(50) NOT NULL,
  `ayar_mesai` varchar(250) NOT NULL,
  `ayar_recapctha` varchar(250) NOT NULL,
  `ayar_goooglemap` varchar(250) NOT NULL,
  `ayar_zopim` text NOT NULL,
  `ayar_analystic` varchar(50) NOT NULL,
  `ayar_facebook` varchar(100) NOT NULL,
  `ayar_twitter` varchar(100) NOT NULL,
  `ayar_youtube` varchar(100) NOT NULL,
  `ayar_google` varchar(100) NOT NULL,
  `ayar_smtphost` varchar(50) NOT NULL,
  `ayar_smtpuser` varchar(50) NOT NULL,
  `ayar_smtppassword` varchar(50) NOT NULL,
  `ayar_smtpport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_siteurl`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_adres`, `ayar_ilce`, `ayar_il`, `ayar_mesai`, `ayar_recapctha`, `ayar_goooglemap`, `ayar_zopim`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_youtube`, `ayar_google`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`) VALUES
(0, 'dimg/29817aslion-loo.jpg', 'http://localhost/php_pdo_yonet_site/1', 'medical scripti ferik12', 'Integer ex nunc, tincidunt sit amet vehicula sit amet, ultricies quis mi. Pellentesque sed m1alesuada neque. Nunc tempus rhoncus turpis sed eleifend. Quisque at suscipit eros, a sodales libero. Nam dui metus, congue vel neque quis, ultrices blandit n', 'pdo, php, php eğitim seti, php dersleri11', 'ferik1', '0536 834 8242', '0536 834 8242', '0536 834 8242', 'info@ferikselahattin.com.tr1', 'HASANBEY MAH. NAMAZGAH CAD. BAYRAK10 APT. SİTESİ A BLOK  NO: 14  İÇ KAPI NO: 6 MUDANYA / BURSA', 'MUDANYA1', 'BURSA1', 'Hafta içi 08:00 -17:00 Hafta Sonu Kapalı11', '1', '121221e2', '12r21r12', '1', 'www.facebook.com1', 'www.twitter.com/adminferik1', 'www.youtube.com1', 'www.google.com1', 'mail.ferikyazilim.com1', 'eposta@ferikyazilim.com1', '12342423411', '2511');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_ad` varchar(50) NOT NULL,
  `galeri_resimyol` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `galeri_ad`, `galeri_resimyol`) VALUES
(33, '', 'dimg/galeri/2806327333286713105174-1.jpg'),
(34, '', 'dimg/galeri/279862203029673232631454076320462.jpg'),
(35, '', 'dimg/galeri/27704219642623821592analytics-technology-ss-1920-800x450.jpg'),
(36, '', 'dimg/galeri/21908293192677122711apple-for-business_thumb800.jpg'),
(37, '', 'dimg/galeri/29478210723175126172assemble-a-team-business-company-prezi-template.jpg'),
(38, '', 'dimg/galeri/25509302822233223417business foto.jpg'),
(39, '', 'dimg/galeri/22464275832431522698businessadvice.jpg'),
(40, '', 'dimg/galeri/25924252182911121950business-energy-comparison-blog.jpg'),
(41, '', 'dimg/galeri/21777224482342825849business-math_118287_large.jpg'),
(42, '', 'dimg/galeri/22846235062920924398business-planning-img.jpg'),
(43, '', 'dimg/galeri/29973255403123828789e9e912d3ae44d0cc3655bb4451b58d21.jpg'),
(44, '', 'dimg/galeri/26401247702975327385dsst-introduction-to-business-course_129463_large.jpg'),
(45, '', 'dimg/galeri/27176304852486722142how-to-do-market-research-for-your-online-business.jpg'),
(46, '', 'dimg/galeri/23512249052344126536intro-to-business-syllabus-resource-lesson-plans_138757_large.jpg'),
(47, '', 'dimg/galeri/28715226353186621536introduction-to-business-certificate-course_129464_large.jpg'),
(48, '', 'dimg/galeri/23107264272808720592mid-size-business.jpg'),
(49, '', 'dimg/galeri/27910287283067527476S4B.jpg'),
(50, '', 'dimg/galeri/24084226752192724939praxis-ii-business-education-test_118084_large.jpg'),
(51, '', 'dimg/galeri/28114246722730523830verizon-wireless-business-specials-mass.jpg'),
(52, '', 'dimg/galeri/30569312763008830200vr-virtual-reality-ss-1920-800x450.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) NOT NULL,
  `hakkimizda_icerik` text NOT NULL,
  `hakkimizda_video` varchar(50) NOT NULL,
  `hakkimizda_vizyon` text NOT NULL,
  `hakkimizda_misyon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'ferikyazilim Hakkında1', '<blockquote>\r\n<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n&nbsp;\r\n\r\n<p>Where does it come from?</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.11111</p>\r\n</blockquote>\r\n', 'cjFMitJDv4c1', 'Vizyon yazısı1', 'misyon yazısı1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_zaman` datetime NOT NULL,
  `icerik_resimyol` varchar(250) NOT NULL,
  `icerik_ad` varchar(250) NOT NULL,
  `icerik_detay` text NOT NULL,
  `icerik_keyword` varchar(250) NOT NULL,
  `icerik_durum` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_zaman`, `icerik_resimyol`, `icerik_ad`, `icerik_detay`, `icerik_keyword`, `icerik_durum`) VALUES
(5, '2017-01-06 20:28:57', 'dimg/icerik/22485318873076927431Professional-Hospital-Staff-Onboarding-1.jpg', 'Haber Test 1', '<p>Maddi imkansızlıklardan dolayı insanlar b&ouml;breklerini satmaya başladı.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(21, '2017-01-06 20:28:57', 'dimg/icerik/27419315552059031481Professional-Hospital-Staff-Onboarding-1.jpg', 'Haber Test 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(24, '2017-01-06 20:28:57', 'dimg/icerik/3181629543224043147788503-doctor-slide.png', 'Haber Test 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(25, '2017-01-06 20:28:57', 'dimg/icerik/2250725216300542207778674-doctor-ppt-presentation-01.png', 'Haber Test 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(26, '2017-01-06 20:28:57', 'dimg/icerik/21638225872599528235haber_gorsel.png', 'Haber Test 5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(27, '2017-01-06 20:28:57', 'dimg/icerik/21638225872599528235haber_gorsel.png', 'Haber Test 6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(28, '2017-01-06 20:28:57', 'dimg/icerik/21638225872599528235haber_gorsel.png', 'Haber Test 7', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nunc id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik4', '1'),
(29, '2017-01-06 20:28:57', 'dimg/icerik/20929319372194324469205312269826615246383113522743fullwidth-image-slider-in-wordpress.jpg', 'Haber Test 81111', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vulputate sem. Quisque dui orci, ultricies a bibendum nec, varius eget neque. Etiam sit amet ipsum vitae nisl tincidunt vestibulum. Donec vitae felis in urna congue pulvinar. Phasellus in posuere ex. Integer quis metus ut nisl accumsan tempor sit amet eget augue. Vestibulum sed augue sapien. Nulla porta ac lectus in eleifend. Integer tempor nun412421124124c id est eleifend, et aliquam augue feugiat. Fusce at eros risus. Vestibulum egestas gravida efficitur. Cras tincidunt dictum placerat. Sed venenatis erat at tellus tempus, sagittis viverra metus ullamcorper.</p>\r\n\r\n<p>Duis ut justo eu lacus finibus vestibulum. Vivamus congue urna eu finibus auctor. Aenean quam dolor, aliquam quis diam a, faucibus ultrices quam. Cras sit amet nisl diam. Etiam ultricies dui eget nulla ornare gravida. Sed condimentum rutrum diam, at imperdiet ante feugiat ut. Praesent ultricies imperdiet eros quis bibendum. Donec ultricies nulla sed mauris imperdiet vestibulum.</p>\r\n\r\n<p>Praesent nisi felis, posuere eu orci at, hendrerit euismod sapien. Nulla feugiat ut orci dapibus fermentum. Suspendisse potenti. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed volutpat tempus laoreet. Cras sodales mauris vel enim egestas, a vehicula nisi vestibulum. Nunc vulputate odio id nisi condimentum semper. Vestibulum ut arcu non nulla dapibus mollis. Duis fringilla dignissim eros, non maximus velit vulputate at. Nunc auctor arcu nec elit pharetra, id accumsan ipsum vehicula. Praesent tincidunt fringilla semper. Cras porta erat id ante egestas, ut vestibulum justo imperdiet. Donec egestas felis eget ultricies auctor. Quisque ut nibh efficitur, gravida nunc sit amet, venenatis metus. Vestibulum sagittis sed lectus a venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Phasellus iaculis, massa non tincidunt finibus, ex ante pulvinar leo, vel venenatis dui lacus a tortor. Duis erat dolor, finibus consequat accumsan eget, elementum ut urna. Mauris condimentum metus condimentum dui consequat dictum ut et lectus. Aenean non velit suscipit, hendrerit erat ac, imperdiet tellus. Duis lobortis est in velit varius ultrices. Integer ac velit iaculis, vestibulum lectus nec, fringilla justo. Suspendisse potenti. Phasellus non massa ultrices, mollis eros nec, molestie urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec at dolor in eros commodo tincidunt ac vel massa. Maecenas eget tortor est. Pellentesque tincidunt tellus non neque efficitur, nec tempus lacus pretium. Ut tristique rhoncus tristique. Quisque orci enim, laoreet placerat gravida eu, pulvinar eget neque.</p>\r\n\r\n<p>Nullam accumsan eleifend hendrerit. Aliquam sed ipsum at leo consequat pulvinar nec nec urna. Integer elementum augue quis finibus interdum. Fusce fringilla, purus quis dignissim consequat, diam augue sollicitudin urna, quis egestas risus erat at ex. Suspendisse blandit metus sed nunc maximus vulputate. Praesent ut vulputate lacus. Nunc leo erat, rutrum vel venenatis eget, condimentum et augue. Phasellus metus erat, venenatis quis fermentum a, convallis egestas odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar eget tellus quis eleifend. Maecenas sed purus ut purus aliquam dictum.</p>\r\n', 'icerik1, icerik2, icerik3, icerik411111', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) NOT NULL,
  `kullanici_ad` varchar(50) NOT NULL,
  `kullanici_password` varchar(50) NOT NULL,
  `kullanici_adsoyad` varchar(50) NOT NULL,
  `kullanici_yetki` varchar(50) NOT NULL,
  `kullanici_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_ad`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2017-01-07 20:00:00', 'dimg/kullanici/21003Ekran görüntüsü 2025-07-07 115826.png', 'admin', '25f9e794323b453885f5181f1b624d0b', 'selahattin ferik', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `menu_ust` int(11) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `menu_ad` varchar(100) NOT NULL,
  `menu_detay` text NOT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `kategori_id`, `menu_ust`, `menu_icon`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`) VALUES
(1, 0, 0, 'fa-home', 'Anasayfa', '', 'index.php', 1, 1),
(2, 0, 0, '', 'Hakkımızda', '', 'hakkimizda', 2, 1),
(5, 0, 0, '', 'İletişim', '', 'bize-ulasin', 9, 1),
(6, 0, 0, '', 'Haberler', '', 'haberler', 7, 1),
(9, 0, 0, '', 'Referanslar', '', 'referanslar', 7, 1),
(11, 0, 0, '', 'S.S.Sss', '<p>safafsafasfsafsa</p>\r\n', 'sik-sorulan-sorular', 8, 1),
(12, 0, 0, '', 'Media Galeri', '', 'javascript:(void);', 8, 1),
(13, 0, 12, '', 'Resim Galerisi', '', 'resim-galeri', 0, 1),
(14, 0, 12, '', 'Video Galeri', '', 'video-galeri', 1, 1),
(15, 0, 9, '', 'Alt Menü', '<p>http:///www.emrahyuksel.com.tr</p>\r\n', '', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referans`
--

CREATE TABLE `referans` (
  `referans_id` int(11) NOT NULL,
  `referans_ad` varchar(100) NOT NULL,
  `referans_resimyol` varchar(500) NOT NULL,
  `referans_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(150) NOT NULL,
  `slider_resimyol` varchar(250) NOT NULL,
  `slider_link` varchar(250) NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_durum` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(41, '1', 'dimg/slider/26104298402273528428Adsız_snapshot_05-24-2025_17_52_21.jpeg', '1', 1, '1'),
(42, 'resim1', 'dimg/slider/28830254982409523405newyorkcity336475_1280.jpg', 'resim1', 1, '1'),
(43, '1', 'dimg/slider/22674262662274528418Professional-Hospital-Staff-Onboarding-1.jpg', '1', 1, '1'),
(44, '1', 'dimg/slider/2592526795208642988288503-doctor-slide.png', '1', 1, '1'),
(45, '1', 'dimg/slider/2126829232279913076378674-doctor-ppt-presentation-01.png', '1', 1, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `sss_id` int(11) NOT NULL,
  `sss_ad` varchar(250) NOT NULL,
  `sss_detay` text NOT NULL,
  `sss_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`sss_id`, `sss_ad`, `sss_detay`, `sss_sira`) VALUES
(2, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(3, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(5, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(6, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(7, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(8, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(9, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(10, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(11, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(12, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(13, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(28, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(29, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(30, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(31, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(32, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(33, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(34, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, tortor id ultricies mattis, dolor diam dapibus odio, sit amet aliquam nisi tellus in enim. Suspendisse feugiat luctus massa eu rutrum. Duis sodales volutpat magna et dictum. Aenean vehicula vestibulum metus sit amet viverra. Sed in leo at nisl ornare blandit. Sed consectetur elit ac fermentum sodales. Donec finibus mi diam, a fermentum ex posuere eget. Quisque et massa dui. Nullam eu mi orci. Aliquam sit amet leo vitae nulla luctus dapibus. Fusce sollicitudin sodales dolor, eu consequat augue vestibulum vitae. Phasellus sit amet ante in lorem vehicula consequat a convallis odio. Donec egestas elit at neque imperdiet facilisis. Ut erat ex, scelerisque ut lorem ac, pretium dapibus nisi. Curabitur nec est maximus justo ultrices luctus.</p>\r\n\r\n<p>Nam auctor augue quam, sed egestas elit condimentum eu. Aenean dignissim ante eget ante venenatis maximus. Nam imperdiet felis a ex mollis venenatis. Vivamus a massa ultricies, fringilla elit id, efficitur est. Sed mattis libero quis posuere ultricies. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In at commodo orci. Aenean quam nisl, viverra nec ipsum eu, porta feugiat lacus. Aliquam tortor nisi, condimentum sed lacus id, blandit malesuada arcu. Etiam aliquam massa quis tristique elementum. Vivamus vulputate fringilla lectus, in cursus nisl malesuada vel. Morbi iaculis mauris lorem.</p>\r\n', 0),
(35, 'Sık sorulanlar konu başlığı, dilediğiniz sayıda sık sorulan soru girebilir ve düzenleyebilirsiniz...', '<p>1111111111111111111111</p>\r\n', 0),
(36, '123', '<p>123</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_ad` varchar(250) NOT NULL,
  `video_code` varchar(50) NOT NULL,
  `video_resimyol` varchar(250) NOT NULL,
  `video_yed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `referans`
--
ALTER TABLE `referans`
  ADD PRIMARY KEY (`referans_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`sss_id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `referans`
--
ALTER TABLE `referans`
  MODIFY `referans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `sss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
