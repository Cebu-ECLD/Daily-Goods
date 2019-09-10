-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rakuten_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `product_table`
--

CREATE TABLE `product_table` (
  `GUID` int(11) NOT NULL,
  `itemPrice` int(11) NOT NULL,
  `mediumImageUrls` varchar(500) NOT NULL,
  `itemName` varchar(200) NOT NULL,
  `reviewCount` int(11) NOT NULL,
  `reviewAverage` int(11) NOT NULL,
  `itemnumber` varchar(50) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `itemCaption` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `product_table`
--

INSERT INTO `product_table` (`GUID`, `itemPrice`, `mediumImageUrls`, `itemName`, `reviewCount`, `reviewAverage`, `itemnumber`, `itemquantity`, `itemCaption`) VALUES
(1, 1748, 'https://thumbnail.image.rakuten.co.jp/@0_mall/rakuten24/cabinet/068/10068.jpg?_ex=128x128', 'コカ・コーラ 森の水だより ペコらくボトル(2L*12本セット)【コカコーラ(Coca-Cola)】[水 ミネラルウォーター 2l 12本]', 2, 5, '1', 12, 'お店TOP＞水・飲料＞水・ミネラルウォーター＞ミネラルウォーター＞国内ミネラルウォーター＞コカ・コーラ 森の水だより ペコらくボトル (2L*12本セット)合わせ買いは商品合計税抜2500円で送料無料（北海道・沖縄除く）【コカ・コーラ 森の水だより ペコらくボトルの商品詳細】●大型PETで不満に感じられていた、飲用後のつぶしにくさや注ぎにくさを改善した、「つぶしやすい、しかも、注ぎやすい。」新しい大型ペットボトルです。●自然の恵みを含んだおいしい天然水を、徹底した品質管理のもと、採水地で汲み上げその場でボトリングする、「採水地パック製法」を採用。新鮮でやさしいおいしさを、そのままお楽しみいただけます。【品名・名称】ナチュラルミネラルウォーター【コカ・コーラ 森の水だより ペコらくボトルの原材料】水(鉱水)【原産国】日本【ブランド】コカコーラ(Coca-Cola)【発売元、製造元、輸入元又は販売元】日本コカ・コーラ※お届けする地域により、採水地が異なります。予めご了承ください。※お届けは、12本セット(6本入*2コ)となります。※説明文は単品の内容です。リニューアルに伴い、パッケージ・内容等予告なく変更する場合がございます。予めご了承ください。(2000mL)・単品JAN：4902102112062/ケース/日本コカ・コーラ150-0002 東京都渋谷区渋谷4-6-30120-308509広告文責：楽天株式会社電話：050-5577-5043[ミネラルウォーター/ブランド：コカコーラ(Coca-Cola)/]　'),
(2, 2420, 'https://thumbnail.image.rakuten.co.jp/@0_mall/rakuten24/cabinet/074/9000009984074.jpg?_ex=128x128', 'クリスタルガイザー 水(500mL*48本入)【イチオシ】【bnad02】【WSpe06】【cga01】【クリスタルガイザー(Crystal Geyser)】[水 ミネラルウォーター 500ml 48本入]', 20431, 5, '1', 48, 'お店TOP＞水・飲料＞水・ミネラルウォーター＞ミネラルウォーター＞ミネラルウォーター全部＞クリスタルガイザー 水 (500mL*48本入)合わせ買いは商品合計税抜2500円で送料無料（北海道・沖縄除く）【クリスタルガイザー 水の商品詳細】アメリカの定番ミネラルウォーター、クリスタルガイザー。まとめ買いに最適！クセが少なく飲みやすいので、水分補給にそのまま飲むもよし、コーヒー・お茶などの飲料用、お米やお料理等、体に取り入れる水としていろいろな場所場面で大活躍！また、職場・学校・お店・レジャー等外出先にも持って行っていろいろな場面で使えますよ。非常時の備えとして防災グッズとあわせて備蓄しておくのもおすすめです。【クリスタルガイザー 水の原材料】水(湧水)【栄養成分】カリフォルニア・オランチャ水源(100mLあたり)エネルギー・・・0kcaLたんぱく質・・・0g脂質・・・0g炭水化物・・・0gナトリウム・・・1.91mgカルシウム・・・2.24mgマグネシウム・・・0.27mgカリウム・・・0.26mg硬度・・・67mg／Lウィード・シャスタ水源(100mLあたり)エネルギー・・・0kcaLタンパク質・・・0g脂質・・・ 0g炭水化物・・・0gナトリウム・・・1.13mgカルシウム・・・ 0.64mgマグネシウム・・・0.54mgカリウム・・・0.18mgバナジウム・・・ 5μg硬度・・・38mg／L【保存方法】・高温、直射日光をさけて保存してください。・開栓後は冷蔵庫に入れ、お早めにお飲みください。・容器のまま、加熱、凍結はしないでください。・加熱、凍結、長期保存等により白い沈殿物ができる事がありますが、天然のミネラル成分の結晶ですのでご安心ください。【注意事項】・キャップが小さく、開けづらくなっております。開封時にはプラスチック部分で指などを切らないようご注意ください。【原産国】アメリカ【ブランド】クリスタルガイザー(Crystal Geyser)【発売元、製造元、輸入元又は販売元】楽天本品は並行輸入品です。パッケージ等、予告なく変更される場合がございます。予めご了承ください。賞味期限はボトル上部にSELL　BY　MM.DD.YYと記載されております。 例）10.08.20XX→20XX年10月8日まで採水地は2か所（オランチャ・シャスタ）ございますがお選びいただくことはできません。リニューアルに伴い、パッケージ・内容等予告なく変更する場合がございます。予めご了承ください。(ケース セット Crystal Geyser クリスタルカイザー 0.5L クリスタルゲイザー)/ケース/楽天810-0001 福岡県福岡市中央区天神1丁目15番6号050-5306-1825広告文責：楽天株式会社電話：050-5577-5043[ミネラルウォーター/ブランド：クリスタルガイザー(Crystal Geyser)/]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`GUID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `GUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
