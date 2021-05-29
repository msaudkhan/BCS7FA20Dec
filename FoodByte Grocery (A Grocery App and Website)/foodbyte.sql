-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 03:40 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbyte`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart items`
--

CREATE TABLE `cart items` (
  `Cart_Id` int(11) NOT NULL,
  `Cust_Id` int(11) DEFAULT NULL,
  `Prod_Id` int(11) DEFAULT NULL,
  `Mart_Id` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Date_Of_Birth` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_Id`, `Name`, `Gender`, `Phone`, `Email`, `Password`, `Address`, `Date_Of_Birth`) VALUES
(1, 'Waris Ahmad', 'Male', '03221548678', 'bilal12@gmail.com', 'Hamza town peoples colony attock', '1234', '09/08/1998'),
(2, 'Muhammad Afshal', 'Male', '03485001141', 'afshal12@gmail.com', 'afshal123', 'People Colony Attock', '3/4/1998'),
(3, 'Muhammad Khalil', 'male', '03125511678', 'khalil@gmail.com', '1234', 'Saghri village, Attock', '1/1/1974'),
(4, 'Muhammad Shariq', 'male', '03441183406', 'Muhammadshariq288@gmail.com', '1234', 'Saghri village, Attock', '1/1/1970'),
(6, 'amjad khan', 'Male', '08526580745', 'amjad@gmail.com', 'amjad123', 'shakardara', '1/2/1998'),
(7, 'hamza javed', 'Male', '03154624587', 'hamza@gmail.com', 'faisal123', 'people colony attock', '2/5/2000');

-- --------------------------------------------------------

--
-- Table structure for table `favourite items`
--

CREATE TABLE `favourite items` (
  `Favt_Id` int(11) NOT NULL,
  `Cust_Id` int(11) NOT NULL,
  `Prod_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite items`
--

INSERT INTO `favourite items` (`Favt_Id`, `Cust_Id`, `Prod_Id`) VALUES
(10, 1, 38),
(13, 1, 21),
(14, 1, 22),
(15, 1, 14),
(16, 4, 51),
(17, 4, 50),
(18, 4, 52),
(19, 4, 16),
(20, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Img_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Id`, `Name`, `Img_Id`) VALUES
(1, 'WhatsApp Image 2020-07-06 at 8.32.38 PM.jpeg', NULL),
(2, 'WhatsApp Image 2020-07-06 at 8.32.38 PM.jpeg', NULL),
(3, 'WhatsApp Image 2020-07-06 at 8.32.38 PM.jpeg', NULL),
(4, 'WhatsApp Image 2020-07-06 at 8.32.38 PM.jpeg', NULL),
(5, 'WhatsApp Image 2020-07-06 at 8.32.38 PM.jpeg', NULL),
(6, '20170330_212129.jpg', NULL),
(7, 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg', NULL),
(8, 'johnsons_baby_powder_nourishing_100g_babybodycare.jpg', NULL),
(9, 'lactogen-2-gentleplus-200gm_1_1_babymild.jpg', NULL),
(10, 'nestle-nido.jpg', NULL),
(11, 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers.jpg', NULL),
(12, 'pigeon-babypowder_1_babybodycare.jpg', NULL),
(13, 'cake.jpg', NULL),
(14, 'jamshereen.jpg', NULL),
(15, 'kolson-pasta-vermicelli-400g.jpg', NULL),
(16, 'lipton-yellowlabel.jpg', NULL),
(17, 'olper.jpg', NULL),
(18, '1419667697_1_1_air_freshner.jpg', NULL),
(19, 'ariel_laundary.jpg', NULL),
(20, 'babq-trey_1_1_BBQ_Accessoreis.jpg', NULL),
(21, 'capstan_by_pall_mall_1_Cigereateandlighters.jpg', NULL),
(22, 'cobra-spray_1_Homecare.jpg', NULL),
(23, 'detol_cleaning.jpg', NULL),
(24, 'dunhill_switch_cigrateandlighters.jpg', NULL),
(25, 'excel_launday.jpg', NULL),
(26, 'glade_morning_fresh.jpg', NULL),
(27, 'hankies-hotpot_toilet_paper.jpg', NULL),
(28, 'Harpic_Cleaning.jpg', NULL),
(29, 'lemon-max-big.jpg', NULL),
(30, 'maxbar-long_1_1_kitchen_accessories.jpg', NULL),
(31, 'mortien-liquidator_1_Other_household.jpg', NULL),
(32, 'toilet-tissue_1_toilet_paper.jpg', NULL),
(33, 'westpoint-chopper-vegetable-cutter.jpg', NULL),
(34, 'safi_other_products.jpg', NULL),
(35, 'sualin_other_products.jpg', NULL),
(36, 'tiger-balm_other_products.jpg', NULL),
(37, 'vicks-vaporub_other_products.jpg', NULL),
(38, 'dog-food-meal__withbones.jpg', NULL),
(39, 'dog-food-meal_boneless.jpg', NULL),
(40, 'Felix_cat_food_sachcet.jpg', NULL),
(41, 'meo_cat_sea_food.jpg', NULL),
(42, 'nova_fish_food.jpg', NULL),
(43, 'Queen_bajra.jpg', NULL),
(44, 'deer_24_pcs_1_colors.jpg', NULL),
(45, 'deer_selecta_black_lead_pencil_pencil.jpg', NULL),
(46, 'dollar_pointer_plus_10s_box_black_pens.jpg', NULL),
(47, 'dollar_pointer_plus_10s_box_blue_pens.jpg', NULL),
(48, 'pencil_color.jpg', NULL),
(49, 'pencil-06P_pencils.jpg', NULL),
(50, '1_6_perfumes.jpg', NULL),
(51, 'colgate__tooth__brush__extra__clean_2_1_oralcare.jpg', NULL),
(52, 'dettol__handwash__original_2__body_care.jpg', NULL),
(53, 'dove_cottonbuds_01_1_1_body_care.jpg', NULL),
(54, 'fair_lovely.jpg', NULL),
(55, 'head_shoulder__silky__black_2_1_haircare.jpg', NULL),
(56, 'perfect_perfumes.jpg', NULL),
(57, 'sensodyne__toothpaste__flouride_2_1_oralcare.jpg', NULL),
(58, 'skinwhite-creamjar_1_beautycare.jpg', NULL),
(59, 'sunsilk__shampo__hair_fall_solution__root_lock_1_haircare.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mart01 products`
--

CREATE TABLE `mart01 products` (
  `Prod_Id` int(11) NOT NULL,
  `Prod_Name` varchar(255) NOT NULL,
  `Ml_Name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Prod_Price` int(10) NOT NULL,
  `Prod_Desp` varchar(255) NOT NULL,
  `Prod_Size` varchar(255) NOT NULL,
  `Prod_Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mart01 products`
--

INSERT INTO `mart01 products` (`Prod_Id`, `Prod_Name`, `Ml_Name`, `Category`, `Prod_Price`, `Prod_Desp`, `Prod_Size`, `Prod_Img`) VALUES
(1, 'Cussons Baby Diapers', 'CussonsBabyDiapers', 'Baby Body Care', 1599, '50_sheets_in_one_pack_diapers', '50_sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.png'),
(2, 'Fanta Candy', 'FantaCandy', 'Candy', 55, 'candyland fanty candy pack of 35', 'Pack of 35', 'candyland_fanty_candy_pack_of_35.jpg'),
(3, 'Coffex Candy', 'CoffexCandy', 'Candy', 80, 'coffex coffee candy 300g', '300 g', 'coffex-coffee-candy-300g.jpg'),
(4, 'Amrus Candy', 'AmrusCandy', 'Candy', 45, 'hilal amrus candy', '30 g', 'hilal_amrus_candy.jpg'),
(5, 'Mentos Candy', 'MentosCandy', 'Candy', 75, 'mentosrollcandy', '200 g', 'mentos-roll-candy.jpg'),
(6, 'Tayas Orange Candy', 'TayasOrangeCandy', 'Candy', 100, 'tayas damla orange candy 90gm', '90 g', 'tayas_damla_orange_candy_90gm.jpg'),
(7, 'Tayas Candy', 'TayasCandy', 'Candy', 75, 'tayas candy 90', '90 g', 'hilal_amrus_candy.jpg'),
(8, 'Parlor Macaroni', 'ParlorMacaroni', 'Pasta', 90, 'bake parlor macaroni penne 400g', '400 g', 'bake_parlor_macaroni_penne_400g.jpg'),
(9, 'bake parlor Vermicelli', 'bakeparlorVermicelli', 'Pasta', 30, 'bake parlor vermicelli u shape 150g', '150 g', 'bake_parlor_vermicelli_u_shape_150g.jpg'),
(10, 'Vegeterian Pasta', 'VegeterianPasta', 'Pasta', 50, 'bake parlor Vagetarian Pasta', '100 g', 'bake-parlor-veg-pasta.jpg'),
(11, 'Crispo Macaroni', 'CrispoMacaroni', 'Pasta', 90, 'crispo elbow macroni', '400 g', 'crispo_elbow_macroni.jpg'),
(12, 'Granoro Pasta', 'GranoroPasta', 'Pasta', 60, 'granoro pasta', '90 g', 'granoro-pasta.jpg'),
(13, 'Kolson Pasta', 'KolsonPasta', 'Pasta', 70, 'kolson pasta vermicelli 400g', '400 g', 'kolson-pasta-vermicelli-400g.jpg'),
(14, 'Everyday powder', 'Everydaypowder', 'Milk', 50, 'everyday_powder_400g', '50g', 'everyday_powder_400g.jpg'),
(15, 'Milk Pack', 'MilkPack', 'Milk', 50, 'milk-pack_1L', '50g', 'milk-pack_1L.jpg'),
(16, 'Nurpur', 'Nurpur', 'Milk', 50, 'nurpur-250ml', '50g', 'nurpur-250ml.jpg'),
(17, 'Olper', 'Olper', 'Milk', 50, 'olper', '100g', 'olper.jpg'),
(18, 'Olpers Carton', 'OlpersCarton', 'Milk', 50, 'olpers-carton-1.5L', '100g', 'olpers-carton-1.5L.jpg'),
(19, 'Tarang', 'Tarang', 'Milk', 50, 'tarang_500g', '100g', 'tarang_500g.jpg'),
(20, 'chocolate cake', 'chocolatecake', 'Cake', 500, 'chocolate-cake', '1.5 pound', 'chocolate-cake.jpg'),
(21, 'chocolate mabble cake', 'chocolatemabblecake', 'Cake', 250, 'chocolate-mabble-cake', '1.5 pound', 'chocolate-mabble-cake.jpg'),
(22, 'cofee crunch cake', 'cofeecrunchcake', 'Cake', 250, 'cofee-crunch-cake', '1.5 pound', 'cofee-crunch-cake.jpg'),
(23, 'pineapple cake', 'pineapplecake', 'Cake', 450, 'pineapple-cake', '1 pound', 'pineapple-cake.jpg'),
(24, 'red velvet cake', 'redvelvetcake', 'Cake', 450, 'red-velvet-cake', '1 pound', 'red-velvet-cake.jpg'),
(25, 'UK Chocolate Banana Cake', 'UKChocolateBananaCake', 'Cake', 750, 'united_king_chocolate_banana_cake', '2 pound', 'united_king_chocolate_banana_cake.jpg'),
(26, 'bisconni chocolatto biscuit', 'bisconnichocolattobiscuit', 'Biscuit', 30, 'bisconni-chocolatto-biscuit-6-packs', '15g', 'bisconni-chocolatto-biscuit-6-packs.jpg'),
(27, 'mayfair cafe biscuit', 'mayfaircafebiscuit', 'Biscuit', 30, 'mayfair-cafe-biscuit-6-half-roll', '15g', 'mayfair-cafe-biscuit-6-half-roll.jpg'),
(28, 'oreo mini biscuits', 'oreominibiscuits', 'Biscuit', 30, 'oreo_mini_biscuits', '15g', 'oreo_mini_biscuits.jpg'),
(29, 'royalty digestive biscuits', 'royaltydigestivebiscuits', 'Biscuit', 230, 'royalty_digestive_biscuits_400g', '400g', 'royalty_digestive_biscuits_400g.jpg'),
(30, 'saltish biscuit', 'saltishbiscuit', 'Biscuit', 130, 'saltish_biscuit', '100g', 'saltish_biscuit.jpg'),
(31, 'tiffany biscuits delight', 'tiffanybiscuitsdelight', 'Biscuit', 130, 'tiffany_biscuits_delight-200g', '200g', 'tiffany_biscuits_delight-200g.jpg'),
(32, 'ACTIVADE SPORTS ENERGY DRINK', 'ACTIVADESPORTSENERGYDRINK', 'Beverages', 130, 'ACTIVADE SPORTS ENERGY DRINK RED 510ML', '510 ML', 'ACTIVADE SPORTS ENERGY DRINK RED 510ML.jpg'),
(33, 'EVERVESS DRINK CLUB SODA', 'EVERVESSDRINKCLUBSODA', 'Beverages', 230, 'EVERVESS DRINK CLUB SODA – 300 ML. TIN', '300 ML', 'EVERVESS DRINK CLUB SODA – 300 ML. TIN.jpg'),
(34, 'FREEZ STRAWBERRY DRINK', 'FREEZSTRAWBERRYDRINK', 'Beverages', 130, 'FREEZ STRAWBERRY DRINK - 275ML', '275 L', 'FREEZ STRAWBERRY DRINK - 275ML.jpg'),
(35, 'GRENADE ENERGY DRINK REGULAR', 'GRENADEENERGYDRINKREGULAR', 'Beverages', 230, 'GRENADE ENERGY DRINK REGULAR – 250 ML', '250 ML', 'GRENADE ENERGY DRINK REGULAR – 250 ML.jpg'),
(36, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR', 'NESTLEFRUITAVITALSPINEAPPLENECTAR', 'Beverages', 130, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML', '1 L', 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML.jpg'),
(37, 'SHEZAN MANGO SQUASH', 'SHEZANMANGOSQUASH', 'Beverages', 430, 'SHEZAN MANGO SQUASH 1.5LITER', '1.5 L', 'SHEZAN MANGO SQUASH 1.5LITER.jpg'),
(38, 'Air wick aerosol rose', 'Airwickaerosolrose', 'Air Freshner', 430, 'air_wick_aerosol_rose_300ml', '300 ML', 'air_wick_aerosol_rose_300ml.jpg'),
(39, 'Cobra spray Homecare', 'CobrasprayHomecare', 'Air Freshner', 430, 'cobra-spray_1_Homecare', '300 ML', 'cobra-spray_1_Homecare.jpg'),
(40, 'cobra spray', 'cobraspray', 'Air Freshner', 430, 'cobra-spray-300ml', '300 ML', 'cobra-spray-300ml.jpg'),
(41, 'Glade morning fresh', 'Glademorningfresh', 'Air Freshner', 430, 'glade_morning_fresh', '300 ML', 'glade_morning_fresh.jpg'),
(42, 'Glade i love you', 'Gladeiloveyou', 'Air Freshner', 430, 'glade-i-love-you-300ml', '300 ML', 'glade-i-love-you-300ml.jpg'),
(43, 'Godrej imported air freshner', 'Godrejimportedairfreshner', 'Air Freshner', 430, 'godrej_imported_air_freshner_fresh_300ml', '300 ML', 'godrej_imported_air_freshner_fresh_300ml.jpg'),
(44, 'camel lights', 'camellights', 'Cigaret', 90, 'camel-lights', '15 ', 'camel-lights.jpg'),
(45, 'capstan Cigaret', 'capstanCigaret', 'Cigaret', 90, 'capstan_by_pall_mall_1_Cigereateandlighters', '15 ', 'capstan_by_pall_mall_1_Cigereateandlighters.jpg'),
(46, 'davidoff lights', 'davidofflights', 'Cigaret', 130, 'davidoff-lights', '15', 'davidoff-lights.jpg'),
(47, 'jomo tech electronic lighter', 'jomotechelectroniclighter', 'Cigaret', 130, 'jomo_tech_electronic_lighter', '15 g', 'jomo_tech_electronic_lighter.jpg'),
(48, 'Seesha', 'Seesha', 'Cigaret', 130, 'seesha_mini_blue_color_with_box__mini_hookha', '15 g', 'seesha_mini_blue_color_with_box__mini_hookha.jpg'),
(49, 'cigratte lighter', 'cigrattelighter', 'Cigaret', 130, 'cigratte_lighter_metal_body', '15 g', 'cigratte_lighter_metal_body.jpg'),
(50, 'Dettol disinfectant', 'Dettoldisinfectant', 'Cleaning', 130, 'dettol-disinfectant-4-in-1-aqua_1', '1 L', '0008189_dettol-disinfectant-4-in-1-aqua_1.jpg'),
(51, 'ariel laundary', 'ariellaundary', 'Cleaning', 130, 'ariel_laundary', '1 KG', 'ariel_laundary.jpg'),
(52, 'excel launday', 'excellaunday', 'Cleaning', 130, 'excel_launday', '1 KG', 'excel_launday.jpg'),
(53, 'finish daily', 'finishdaily', 'Cleaning', 130, 'finis-daily', '1 KG', 'finis-daily.jpg'),
(54, 'Harpic Cleaning', 'HarpicCleaning', 'Cleaning', 130, 'Harpic_Cleaning', '1 L', 'Harpic_Cleaning.jpg'),
(55, 'lemon max big', 'lemonmaxbig', 'Cleaning', 130, 'lemon-max-big', '1 L', 'lemon-max-big.jpg'),
(56, 'BBQ Accessoreis', 'BBQAccessoreis', 'Kitchen', 430, 'babq-trey_1_1_BBQ_Accessoreis', '1 KG', 'babq-trey_1_1_BBQ_Accessoreis.jpg'),
(57, 'glint steel cleaner', 'glintsteelcleaner', 'Kitchen', 430, 'glintsteelcleaner', '1 KG', 'glintsteelcleaner.jpg'),
(58, 'lemon max small', 'lemonmaxsmall', 'Kitchen', 430, 'lemon-max-small', '1 KG', 'lemon-max-small.jpg'),
(59, 'maxbar long kitchen accessories', 'maxbarlongkitchenaccessories', 'Kitchen', 430, 'maxbar-long_1_1_kitchen_accessories', '1 KG', 'maxbar-long_1_1_kitchen_accessories.jpg'),
(60, 'paper plate', 'paperplate', 'Kitchen', 430, 'paper_plate', '1 KG', 'paper_plate.jpg'),
(61, 'westpoint chopper vegetable cutter', 'westpointchoppervegetablecutter', 'Kitchen', 430, 'westpoint-chopper-vegetable-cutter', '1 KG', 'westpoint-chopper-vegetable-cutter.jpg'),
(62, 'bigroll', 'bigroll', 'Toilet Paper', 430, 'bigroll', '1 roll', 'bigroll.jpg'),
(63, 'hankies hotpot toilet paper', 'hankieshotpottoiletpaper', 'Toilet Paper', 430, 'hankies-hotpot_toilet_paper', '1 roll', 'hankies-hotpot_toilet_paper.jpg'),
(64, 'maxob rose petal', 'maxobrosepetal', 'Toilet Paper', 430, 'maxob_rose_petal_toilet_tissue_paper_roll', '1 roll', 'maxob_rose_petal_toilet_tissue_paper_roll.jpg'),
(65, 'Rose petal tissue deluxe', 'Rosepetaltissuedeluxe', 'Toilet Paper', 430, 'rose_petal_tissue_deluxe_200x2_ply_box', '1 roll', 'rose_petal_tissue_deluxe_200x2_ply_box.jpg'),
(66, 'Rose petal toilet roll', 'Rosepetaltoiletroll', 'Toilet Paper', 430, 'rose-petal-toilet-roll-1-10-pack', '1 roll', 'rose-petal-toilet-roll-1-10-pack.jpg'),
(67, 'toilet tissue toilet paper', 'toilettissuetoiletpaper', 'Toilet Paper', 430, 'toilet-tissue_1_toilet_paper', '1 roll', 'toilet-tissue_1_toilet_paper.jpg'),
(68, 'johnsons baby cologine', 'johnsonsbabycologine', 'Baby Body care', 200, 'johnsons_baby_cologine_regular_125ml', '125 ML', 'johnsons_baby_cologine_regular_125ml.jpg'),
(69, 'johnsons baby powder nourishing', 'johnsonsbabypowdernourishing', 'Baby Body care', 200, 'johnsons_baby_powder_nourishing_100g_babybodycare', '100 g', 'johnsons_baby_powder_nourishing_100g_babybodycare.jpg'),
(70, 'johnsons baby shampoo', 'johnsonsbabyshampoo', 'Baby Body care', 200, 'johnsons_baby_shampoo_gold_500ml', '500 ML', 'johnsons_baby_shampoo_gold_500ml.jpg'),
(71, 'pigeon baby powder', 'pigeonbabypowder', 'Baby Body care', 300, 'pigeon-babypowder_1_babybodycare', '1', 'pigeon-babypowder_1_babybodycare.jpg'),
(72, 'biomil lf lactose free', 'biomillflactosefree', 'Baby Milk', 300, 'biomil-lf-lactose-free', '1 L', 'biomil-lf-lactose-free.jpg'),
(73, 'ensure chocolate', 'ensurechocolate', 'Baby Milk', 300, 'ensure-chocolate', '1 L', 'ensure-chocolate.jpg'),
(74, 'kellogs coco pops free seed', 'kellogscocopopsfreeseed', 'Baby Milk', 300, 'kellogs-coco-pops-free-seed', '1 L', 'kellogs-coco-pops-free-seed.jpg'),
(75, 'lactogen gentlestart', 'lactogengentlestart', 'Baby Milk', 300, 'lactogen-1-gentlestart-400gm', '400 gm', 'lactogen-1-gentlestart-400gm.jpg'),
(76, 'nestle cerelac cereal rice', 'nestlecerelaccerealrice', 'Baby Milk', 300, 'nestle_cerelac_cereal_rice', '400 gm', 'nestle_cerelac_cereal_rice.jpg'),
(77, 'nestle nido', 'nestlenido', 'Baby Milk', 300, 'nestle-nido', '400 gm', 'nestle-nido.jpg'),
(78, 'baby tender baby wipes', 'babytenderbabywipes', 'Diapers', 200, 'baby_tender_baby_wipes', '400 gm', 'baby_tender_baby_wipes.jpg'),
(79, 'canbebe jumbo maxi', 'canbebejumbomaxi', 'Diapers', 150, 'canbebe_jumbo_maxi', '400 gm', 'canbebe_jumbo_maxi.jpg'),
(80, 'cool baby wipes', 'coolbabywipes', 'Diapers', 150, 'cool_baby_wipes', '400 gm', 'cool_baby_wipes.jpg'),
(81, 'cussons baby wipes', 'cussonsbabywipes', 'Diapers', 150, 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers', '50 sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg'),
(82, 'pampers baby dry', 'pampersbabydry', 'Diapers', 150, 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers', '20 Piece', 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers.jpg'),
(83, 'pampers premium care', 'pamperspremiumcare', 'Diapers', 150, 'pampers_premium_care', '400 gm', 'pampers_premium_care.jpg'),
(84, 'blackcat powder', 'blackcatpowder', 'Beauty care', 250, 'blackcat-powder', '125 g', 'blackcat-powder.jpg'),
(85, 'fair lovely', 'fairlovely', 'Beauty care', 200, 'fair_lovely', '125 g', 'fair_lovely.jpg'),
(86, 'fair lovely maxfresh', 'fairlovelymaxfresh', 'Beauty care', 200, 'fair_lovely-maxfresh', '125 g', 'fair_lovely-maxfresh.jpg'),
(87, 'lifebuoy soap', 'lifebuoysoap', 'Beauty care', 200, 'lifebuoy__soap', '125 g', 'lifebuoy__soap.jpg'),
(88, 'ponds flawless white', 'pondsflawlesswhite', 'Beauty care', 200, 'ponds-flawless-white', '125 g', 'ponds-flawless-white.jpg'),
(89, 'skinwhite', 'skinwhite', 'Beauty care', 200, 'skinwhite-creamjar_1_beautycare', '125 g', 'skinwhite-creamjar_1_beautycare.jpg'),
(90, 'Dettol handwash', 'Dettolhandwash', 'Body care', 200, 'dettol__handwash__original_2__body_care', '125 g', 'dettol__handwash__original_2__body_care.jpg'),
(91, 'Dove cottonbuds', 'Dovecottonbuds', 'Body care', 200, 'dove_cottonbuds_01_1_1_body_care', '125 g', 'dove_cottonbuds_01_1_1_body_care.jpg'),
(92, 'Gillette blue 3 razor', 'Gilletteblue3razor', 'Body care', 35, 'gillette_blue_3_razor', '12', 'gillette_blue_3_razor.jpg'),
(93, 'Pears shower gel', 'Pearsshowergel', 'Body care', 35, 'pears_shower_gel', '12', 'pears_shower_gel.jpg'),
(94, 'vaseline', 'vaseline', 'Body care', 350, 'vaseline pure jelly 250ml', '250 ML', 'vaseline pure jelly 250ml.jpg'),
(95, 'wild argan oil', 'wildarganoil', 'Body care', 350, 'wild-argan-oil-shower-gel', '250 ML', 'wild-argan-oil-shower-gel.jpg'),
(96, 'Dove nourishingoilcare', 'Dovenourishingoilcare', 'Hair Care', 350, 'dove-nourishingoilcare', '250 ML', 'dove-nourishingoilcare.jpg'),
(97, 'Head shoulder', 'Headshoulder', 'Hair Care', 350, 'head_shoulder', '250 ML', 'head_shoulder.jpg'),
(98, 'lifebuoy', 'lifebuoy', 'Hair Care', 350, 'lifebuoy', '250 ML', 'lifebuoy.jpg'),
(99, 'sunsilk', 'sunsilk', 'Hair Care', 350, 'sunsilk', '250 ML', 'sunsilk.jpg'),
(100, 'Sunsilk antidandruff', 'Sunsilkantidandruff', 'Hair Care', 350, 'sunsilk-antidandruff', '250 ML', 'sunsilk-antidandruff.jpg'),
(101, 'Sunsilk blackshine', 'Sunsilkblackshine', 'Hair Care', 350, 'sunsilk-blackshine', '250 ML', 'sunsilk-blackshine.jpg'),
(102, 'Closeup gel', 'Closeupgel', 'Oral Care', 350, 'closeup_gel_red_hot', '250g', 'closeup_gel_red_hot.jpg'),
(103, 'Colgate', 'Colgate', 'Oral Care', 350, 'colgate__tooth__brush__extra__clean_2_1_oralcare', '250g', 'colgate__tooth__brush__extra__clean_2_1_oralcare.jpg'),
(104, 'Colgate plax', 'Colgateplax', 'Oral Care', 350, 'colgate_plax_original_mouthwash', '250g', 'colgate_plax_original_mouthwash.jpg'),
(105, 'Himalaya toothpaste', 'Himalayatoothpaste', 'Oral Care', 350, 'himalaya_toothpaste', '250g', 'himalaya_toothpaste.jpg'),
(106, 'lucky hand senetizer', 'luckyhandsenetizer', 'Oral Care', 350, 'lucky hand senetizer', '250 ML', 'lucky hand senetizer.jpg'),
(107, 'Sensodyne toothpaste', 'Sensodynetoothpaste', 'Oral Care', 350, 'sensodyne__toothpaste__flouride_2_1_oralcare', '250 ML', 'sensodyne__toothpaste__flouride_2_1_oralcare.jpg'),
(108, 'adolecant plus perfume', 'adolecantplusperfume', 'Perfumes', 500, 'closeup_gel_red_hot', '50 ML', 'adolecant plus perfume 50ml.jpg'),
(109, 'elpaso for women', 'elpasoforwomen', 'Perfumes', 450, 'elpaso for women 100ml', '100 ML', 'elpaso for women 100ml.jpg'),
(110, 'emper perfume', 'emperperfume', 'Perfumes', 450, 'emper perfume saga 100ml', '100 ML', 'emper perfume saga 100ml.jpg'),
(111, 'le chameau perfume', 'lechameauperfume', 'Perfumes', 450, 'le chameau perfume 100ml', '100 ML', 'le chameau perfume 100ml.jpg'),
(112, 'perfect perfumes', 'perfectperfumes', 'Perfumes', 450, 'perfect_perfumes', '100 ML', 'perfect_perfumes.jpg'),
(113, 'prime perfume for women', 'primeperfumeforwomen', 'Perfumes', 450, 'prime perfume for women', '100 ML', 'prime perfume for women.jpg'),
(114, 'butchers dog food', 'butchersdogfood', 'Pet Food', 350, 'butchers_dog_food_fresh_tripe_mix_tin_400gm', '400 mg', 'butchers_dog_food_fresh_tripe_mix_tin_400gm.jpg'),
(115, 'dog food meal withbones', 'dogfoodmealwithbones', 'Pet Food', 350, 'dog-food-meal__withbones', '400 mg', 'dog-food-meal__withbones.jpg'),
(116, 'dog food meal boneless', 'dogfoodmealboneless', 'Pet Food', 350, 'dog-food-meal_boneless', '400 mg', 'dog-food-meal_boneless.jpg'),
(117, 'Felix cat food', 'Felixcatfood', 'Pet Food', 350, 'Felix_cat_food_sachcet', '400 mg', 'Felix_cat_food_sachcet.jpg'),
(118, 'meo cat sea food', 'meocatseafood', 'Pet Food', 350, 'meo_cat_sea_food', '400 mg', 'meo_cat_sea_food.jpg'),
(119, 'Nova fish food', 'Novafishfood', 'Pet Food', 350, 'nova_fish_food', '400 mg', 'nova_fish_food.jpg'),
(120, 'Queen bajra', 'Queenbajra', 'Pet Food', 350, 'Queen_bajra', '400 mg', 'Queen_bajra.jpg'),
(121, 'smart heart dog food', 'smartheartdogfood', 'Pet Food', 350, 'smart_heart_dog_food_chicken_8kg', '8 Kg', 'smart_heart_dog_food_chicken_8kg.jpg'),
(122, 'Thomas cat', 'Thomascat', 'Pet Food', 350, 'thomas_cat_litter_5l', '5 L', 'thomas_cat_litter_5l.jpg'),
(123, 'casio scientific calculator', 'casioscientificcalculator', 'stationary', 350, 'casio scientific calculator', '50 g', 'casio scientific calculator.jpg'),
(124, 'Deer colors', 'Deercolors', 'stationary', 350, 'deer_24_pcs_1_colors', '24', 'deer_24_pcs_1_colors.jpg'),
(125, 'Deer pencil', 'Deerpencil', 'stationary', 350, 'deer_selecta_black_lead_pencil_pencil', '24', 'deer_selecta_black_lead_pencil_pencil.jpg'),
(126, 'Dollar', 'Dollar', 'stationary', 350, 'dollar_my_pencil_12s_packet', '12', 'dollar_my_pencil_12s_packet.jpg'),
(127, 'dollar pointer', 'dollarpointer', 'stationary', 350, 'dollar_pointer_plus_10s_box_black_pens', '10', 'dollar_pointer_plus_10s_box_black_pens.jpg'),
(128, 'Dollar pointer plus', 'Dollarpointerplus', 'stationary', 350, 'dollar_pointer_plus_10s_box_blue_pens', '10', 'dollar_pointer_plus_10s_box_blue_pens.jpg'),
(129, 'fountain pen ink', 'fountainpenink', 'stationary', 350, 'fountain_pen_ink', '24 ML', 'fountain_pen_ink.jpg'),
(130, 'glitter gel pen', 'glittergelpen', 'stationary', 350, 'glitter gel pen 12p', '12', 'glitter gel pen 12p.jpg'),
(131, 'Pencil color', 'Pencilcolor', 'stationary', 350, 'pencil_color', '12', 'pencil_color.jpg'),
(132, 'Mix Boti Beef', 'MixBotiBeef', 'Meat', 1100, 'beef veal mix boti 1kg', '1kg', 'beef_veal_mix_boti_1kg.jpg'),
(133, 'Soup Bones Beef', 'SoupBonesBeef', 'Meat', 950, '1kg', 'beef veal soup bones 1kg', 'beef_veal_soup_bones_1kg.jpg'),
(134, 'chicken fresh breast', 'chickenfreshbreast', 'Meat', 350, '1kg', 'chicken fresh breast 1kg', 'chicken_fresh_breast.jpg'),
(135, 'chicken tikka', 'chickentikka', 'Meat', 300, '1.5kg', 'chicken tikka 1.5kg', 'chicken-tikka.jpg'),
(136, 'kn burger patties', 'knburgerpatties', 'Meat', 550, '10ps', 'k n burger patties 10ps', 'k_n_burger_patties.jpg'),
(137, 'k ns chicken samosa', 'knschickensamosa', 'Meat', 340, '15ps', 'k ns chicken samosa 15ps', 'k_ns_chicken_samosa.jpg'),
(138, 'Garlic', 'Garlic', 'Vegetable', 460, 'garlic 1kg', '1kg', 'garlic.jpg'),
(139, 'Green Chilli', 'GreenChilli', 'Vegetable', 80, 'green chilli 1kg', '1kg', 'green-chilli.jpg'),
(140, 'lemon', 'lemon', 'Vegetable', 460, 'lemon 1kg', '1kg', 'lemon.jpg'),
(141, 'Onion Pyaaz', 'OnionPyaaz', 'Vegetable', 60, 'onion pyaaz 1kg', '1kg', 'onion-pyaaz.jpg'),
(142, 'Palak Half', 'PalakHalf', 'Vegetable', 50, 'palak half 1kg', '1kg', 'palak half.jpg'),
(143, 'Tomato Tamatar', 'TomatoTamatar', 'Vegetable', 460, 'tomato-tamatar 1kg', '1kg', 'tomato-tamatar.jpg'),
(144, 'burfi Sweet', 'burfiSweet', 'Sweet', 380, 'burfi sweet 1kg', '1kg', 'burfi_sweet.jpg'),
(145, 'Cham Cham Sweet', 'ChamChamSweet', 'Sweet', 350, 'Cham Cham sweet 1kg', '1kg', 'cham-cham.jpg'),
(146, 'Gulab Jamun', 'GulabJamun', 'Sweet', 380, 'Gulab Jamun 1kg', '1kg', 'gulab-jamun.jpg'),
(147, 'Habshi Halwa', 'HabshiHalwa', 'Sweet', 290, 'Habshi-Halwa 1kg', '1kg', 'habshi-halwa.jpg'),
(148, 'Jalebi Halwa', 'JalebiHalwa', 'Sweet', 250, 'Jalebi-Halwa 1kg', '1kg', 'jalebi-halwa.jpg'),
(149, 'Methai Sweet', 'MethaiSweet', 'Sweet', 370, 'Methai sweet 1kg', '1kg', 'mithai.jpg'),
(150, 'Sohni Sweet Bread', 'SohniSweetBread', 'Bread', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(151, 'Eggs Dozen', 'EggsDozen', 'Bread', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(152, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Bread', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(153, 'Mitchels Mangojam', 'MitchelsMangojam', 'Bread', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(154, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Bread', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(155, 'Sohni Sweet Bread', 'SohniSweetBread', 'Break Fast', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(156, 'Eggs Dozen', 'EggsDozen', 'Break Fast', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(157, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Break Fast', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(158, 'Mitchels Mangojam', 'MitchelsMangojam', 'Break Fast', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(159, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Break Fast', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(160, 'Pine Apple Chocolate Cake ', 'PineAppleChocolateCake', 'Cake', 800, 'PINEAPPLE CAKE WITH WHITE CHOCOLATE ', '1 pound', 'pineapple-cake-kitchen-cuisine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mart02 products`
--

CREATE TABLE `mart02 products` (
  `Prod_Id` int(11) NOT NULL,
  `Prod_Name` varchar(255) NOT NULL,
  `Ml_Name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Prod_Price` int(10) NOT NULL,
  `Prod_Desp` varchar(255) NOT NULL,
  `Prod_Size` varchar(255) NOT NULL,
  `Prod_Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mart02 products`
--

INSERT INTO `mart02 products` (`Prod_Id`, `Prod_Name`, `Ml_Name`, `Category`, `Prod_Price`, `Prod_Desp`, `Prod_Size`, `Prod_Img`) VALUES
(1, 'Cussons Baby Diapers', 'CussonsBabyDiapers', 'Baby Care', 1599, '50_sheets_in_one_pack_diapers', '50_sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg'),
(2, 'Fanta Candy', 'FantaCandy', 'Candy', 55, 'candyland fanty candy pack of 35', 'Pack of 35', 'candyland_fanty_candy_pack_of_35.jpg'),
(3, 'Coffex Candy', 'CoffexCandy', 'Candy', 80, 'coffex coffee candy 300g', '300 g', 'coffex-coffee-candy-300g.jpg'),
(4, 'Amrus Candy', 'AmrusCandy', 'Candy', 45, 'hilal amrus candy', '30 g', 'hilal_amrus_candy.jpg'),
(5, 'Mentos Candy', 'MentosCandy', 'Candy', 75, 'mentosrollcandy', '200 g', 'mentos-roll-candy.jpg'),
(6, 'Tayas Orange Candy', 'TayasOrangeCandy', 'Candy', 100, 'tayas damla orange candy 90gm', '90 g', 'tayas_damla_orange_candy_90gm.jpg'),
(7, 'Tayas Candy', 'TayasCandy', 'Candy', 75, 'tayas candy 90', '90 g', 'hilal_amrus_candy.jpg'),
(8, 'Parlor Macaroni', 'ParlorMacaroni', 'Pasta', 90, 'bake parlor macaroni penne 400g', '400 g', 'bake_parlor_macaroni_penne_400g.jpg'),
(9, 'bake parlor Vermicelli', 'bakeparlorVermicelli', 'Pasta', 30, 'bake parlor vermicelli u shape 150g', '150 g', 'bake_parlor_vermicelli_u_shape_150g.jpg'),
(10, 'Vegeterian Pasta', 'VegeterianPasta', 'Pasta', 50, 'bake parlor Vagetarian Pasta', '100 g', 'bake-parlor-veg-pasta.jpg'),
(11, 'Crispo Macaroni', 'CrispoMacaroni', 'Pasta', 90, 'crispo elbow macroni', '400 g', 'crispo_elbow_macroni.jpg'),
(12, 'Granoro Pasta', 'GranoroPasta', 'Pasta', 60, 'granoro pasta', '90 g', 'granoro-pasta.jpg'),
(13, 'Kolson Pasta', 'KolsonPasta', 'Pasta', 70, 'kolson pasta vermicelli 400g', '400 g', 'kolson-pasta-vermicelli-400g.jpg'),
(14, 'Everyday powder', 'Everydaypowder', 'Milk', 50, 'everyday_powder_400g', '50g', 'everyday_powder_400g.jpg'),
(15, 'Milk Pack', 'MilkPack', 'Milk', 50, 'milk-pack_1L', '50g', 'milk-pack_1L.jpg'),
(16, 'Nurpur', 'Nurpur', 'Milk', 50, 'nurpur-250ml', '50g', 'nurpur-250ml.jpg'),
(17, 'Olper', 'Olper', 'Milk', 50, 'olper', '100g', 'olper.jpg'),
(18, 'Olpers Carton', 'OlpersCarton', 'Milk', 50, 'olpers-carton-1.5L', '100g', 'olpers-carton-1.5L.jpg'),
(19, 'Tarang', 'Tarang', 'Milk', 50, 'tarang_500g', '100g', 'tarang_500g.jpg'),
(20, 'chocolate cake', 'chocolatecake', 'Cake', 500, 'chocolate-cake', '1.5 pound', 'chocolate-cake.jpg'),
(21, 'chocolate mabble cake', 'chocolatemabblecake', 'Cake', 250, 'chocolate-mabble-cake', '1.5 pound', 'chocolate-mabble-cake.jpg'),
(22, 'cofee crunch cake', 'cofeecrunchcake', 'Cake', 250, 'cofee-crunch-cake', '1.5 pound', 'cofee-crunch-cake.jpg'),
(23, 'pineapple cake', 'pineapplecake', 'Cake', 450, 'pineapple-cake', '1 pound', 'pineapple-cake.jpg'),
(24, 'red velvet cake', 'redvelvetcake', 'Cake', 450, 'red-velvet-cake', '1 pound', 'red-velvet-cake.jpg'),
(25, 'UK Chocolate Banana Cake', 'UKChocolateBananaCake', 'Cake', 750, 'united_king_chocolate_banana_cake', '2 pound', 'united_king_chocolate_banana_cake.jpg'),
(26, 'bisconni chocolatto biscuit', 'bisconnichocolattobiscuit', 'Biscuit', 30, 'bisconni-chocolatto-biscuit-6-packs', '15g', 'bisconni-chocolatto-biscuit-6-packs.jpg'),
(27, 'mayfair cafe biscuit', 'mayfaircafebiscuit', 'Biscuit', 30, 'mayfair-cafe-biscuit-6-half-roll', '15g', 'mayfair-cafe-biscuit-6-half-roll.jpg'),
(28, 'oreo mini biscuits', 'oreominibiscuits', 'Biscuit', 30, 'oreo_mini_biscuits', '15g', 'oreo_mini_biscuits.jpg'),
(29, 'royalty digestive biscuits', 'royaltydigestivebiscuits', 'Biscuit', 230, 'royalty_digestive_biscuits_400g', '400g', 'royalty_digestive_biscuits_400g.jpg'),
(30, 'saltish biscuit', 'saltishbiscuit', 'Biscuit', 130, 'saltish_biscuit', '100g', 'saltish_biscuit.jpg'),
(31, 'tiffany biscuits delight', 'tiffanybiscuitsdelight', 'Biscuit', 130, 'tiffany_biscuits_delight-200g', '200g', 'tiffany_biscuits_delight-200g.jpg'),
(32, 'ACTIVADE SPORTS ENERGY DRINK', 'ACTIVADESPORTSENERGYDRINK', 'Beverages', 130, 'ACTIVADE SPORTS ENERGY DRINK RED 510ML', '510 ML', 'ACTIVADE SPORTS ENERGY DRINK RED 510ML.jpg'),
(33, 'EVERVESS DRINK CLUB SODA', 'EVERVESSDRINKCLUBSODA', 'Beverages', 230, 'EVERVESS DRINK CLUB SODA – 300 ML. TIN', '300 ML', 'EVERVESS DRINK CLUB SODA – 300 ML. TIN.jpg'),
(34, 'FREEZ STRAWBERRY DRINK', 'FREEZSTRAWBERRYDRINK', 'Beverages', 130, 'FREEZ STRAWBERRY DRINK - 275ML', '275 L', 'FREEZ STRAWBERRY DRINK - 275ML.jpg'),
(35, 'GRENADE ENERGY DRINK REGULAR', 'GRENADEENERGYDRINKREGULAR', 'Beverages', 230, 'GRENADE ENERGY DRINK REGULAR – 250 ML', '250 ML', 'GRENADE ENERGY DRINK REGULAR – 250 ML.jpg'),
(36, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR', 'NESTLEFRUITAVITALSPINEAPPLENECTAR', 'Beverages', 130, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML', '1 L', 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML.jpg'),
(37, 'SHEZAN MANGO SQUASH', 'SHEZANMANGOSQUASH', 'Beverages', 430, 'SHEZAN MANGO SQUASH 1.5LITER', '1.5 L', 'SHEZAN MANGO SQUASH 1.5LITER.jpg'),
(38, 'Air wick aerosol rose', 'Airwickaerosolrose', 'Air Freshner', 430, 'air_wick_aerosol_rose_300ml', '300 ML', 'air_wick_aerosol_rose_300ml.jpg'),
(39, 'Cobra spray Homecare', 'CobrasprayHomecare', 'Air Freshner', 430, 'cobra-spray_1_Homecare', '300 ML', 'cobra-spray_1_Homecare.jpg'),
(40, 'cobra spray', 'cobraspray', 'Air Freshner', 430, 'cobra-spray-300ml', '300 ML', 'cobra-spray-300ml.jpg'),
(41, 'Glade morning fresh', 'Glademorningfresh', 'Air Freshner', 430, 'glade_morning_fresh', '300 ML', 'glade_morning_fresh.jpg'),
(42, 'Glade i love you', 'Gladeiloveyou', 'Air Freshner', 430, 'glade-i-love-you-300ml', '300 ML', 'glade-i-love-you-300ml.jpg'),
(43, 'Godrej imported air freshner', 'Godrejimportedairfreshner', 'Air Freshner', 430, 'godrej_imported_air_freshner_fresh_300ml', '300 ML', 'godrej_imported_air_freshner_fresh_300ml.jpg'),
(44, 'camel lights', 'camellights', 'Cigaret', 90, 'camel-lights', '15 ', 'camel-lights.jpg'),
(45, 'capstan Cigaret', 'capstanCigaret', 'Cigaret', 90, 'capstan_by_pall_mall_1_Cigereateandlighters', '15 ', 'capstan_by_pall_mall_1_Cigereateandlighters.jpg'),
(46, 'davidoff lights', 'davidofflights', 'Cigaret', 130, 'davidoff-lights', '15', 'davidoff-lights.jpg'),
(47, 'jomo tech electronic lighter', 'jomotechelectroniclighter', 'Cigaret', 130, 'jomo_tech_electronic_lighter', '15 g', 'jomo_tech_electronic_lighter.jpg'),
(48, 'Seesha', 'Seesha', 'Cigaret', 130, 'seesha_mini_blue_color_with_box__mini_hookha', '15 g', 'seesha_mini_blue_color_with_box__mini_hookha.jpg'),
(49, 'cigratte lighter', 'cigrattelighter', 'Cigaret', 130, 'cigratte_lighter_metal_body', '15 g', 'cigratte_lighter_metal_body.jpg'),
(50, 'Dettol disinfectant', 'Dettoldisinfectant', 'Cleaning', 130, 'dettol-disinfectant-4-in-1-aqua_1', '1 L', '0008189_dettol-disinfectant-4-in-1-aqua_1.jpg'),
(51, 'ariel laundary', 'ariellaundary', 'Cleaning', 130, 'ariel_laundary', '1 KG', 'ariel_laundary.jpg'),
(52, 'excel launday', 'excellaunday', 'Cleaning', 130, 'excel_launday', '1 KG', 'excel_launday.jpg'),
(53, 'finish daily', 'finishdaily', 'Cleaning', 130, 'finis-daily', '1 KG', 'finis-daily.jpg'),
(54, 'Harpic Cleaning', 'HarpicCleaning', 'Cleaning', 130, 'Harpic_Cleaning', '1 L', 'Harpic_Cleaning.jpg'),
(55, 'lemon max big', 'lemonmaxbig', 'Cleaning', 130, 'lemon-max-big', '1 L', 'lemon-max-big.jpg'),
(56, 'BBQ Accessoreis', 'BBQAccessoreis', 'Kitchen', 430, 'babq-trey_1_1_BBQ_Accessoreis', '1 KG', 'babq-trey_1_1_BBQ_Accessoreis.jpg'),
(57, 'glint steel cleaner', 'glintsteelcleaner', 'Kitchen', 430, 'glintsteelcleaner', '1 KG', 'glintsteelcleaner.jpg'),
(58, 'lemon max small', 'lemonmaxsmall', 'Kitchen', 430, 'lemon-max-small', '1 KG', 'lemon-max-small.jpg'),
(59, 'maxbar long kitchen accessories', 'maxbarlongkitchenaccessories', 'Kitchen', 430, 'maxbar-long_1_1_kitchen_accessories', '1 KG', 'maxbar-long_1_1_kitchen_accessories.jpg'),
(60, 'paper plate', 'paperplate', 'Kitchen', 430, 'paper_plate', '1 KG', 'paper_plate.jpg'),
(61, 'westpoint chopper vegetable cutter', 'westpointchoppervegetablecutter', 'Kitchen', 430, 'westpoint-chopper-vegetable-cutter', '1 KG', 'westpoint-chopper-vegetable-cutter.jpg'),
(62, 'bigroll', 'bigroll', 'Toilet Paper', 430, 'bigroll', '1 roll', 'bigroll.jpg'),
(63, 'hankies hotpot toilet paper', 'hankieshotpottoiletpaper', 'Toilet Paper', 430, 'hankies-hotpot_toilet_paper', '1 roll', 'hankies-hotpot_toilet_paper.jpg'),
(64, 'maxob rose petal', 'maxobrosepetal', 'Toilet Paper', 430, 'maxob_rose_petal_toilet_tissue_paper_roll', '1 roll', 'maxob_rose_petal_toilet_tissue_paper_roll.jpg'),
(65, 'Rose petal tissue deluxe', 'Rosepetaltissuedeluxe', 'Toilet Paper', 430, 'rose_petal_tissue_deluxe_200x2_ply_box', '1 roll', 'rose_petal_tissue_deluxe_200x2_ply_box.jpg'),
(66, 'Rose petal toilet roll', 'Rosepetaltoiletroll', 'Toilet Paper', 430, 'rose-petal-toilet-roll-1-10-pack', '1 roll', 'rose-petal-toilet-roll-1-10-pack.jpg'),
(67, 'toilet tissue toilet paper', 'toilettissuetoiletpaper', 'Toilet Paper', 430, 'toilet-tissue_1_toilet_paper', '1 roll', 'toilet-tissue_1_toilet_paper.jpg'),
(68, 'johnsons baby cologine', 'johnsonsbabycologine', 'Baby Body care', 200, 'johnsons_baby_cologine_regular_125ml', '125 ML', 'johnsons_baby_cologine_regular_125ml.jpg'),
(69, 'johnsons baby powder nourishing', 'johnsonsbabypowdernourishing', 'Baby Body care', 200, 'johnsons_baby_powder_nourishing_100g_babybodycare', '100 g', 'johnsons_baby_powder_nourishing_100g_babybodycare.jpg'),
(70, 'johnsons baby shampoo', 'johnsonsbabyshampoo', 'Baby Body care', 200, 'johnsons_baby_shampoo_gold_500ml', '500 ML', 'johnsons_baby_shampoo_gold_500ml.jpg'),
(71, 'pigeon baby powder', 'pigeonbabypowder', 'Baby Body care', 300, 'pigeon-babypowder_1_babybodycare', '1', 'pigeon-babypowder_1_babybodycare.jpg'),
(72, 'biomil lf lactose free', 'biomillflactosefree', 'Baby Milk', 300, 'biomil-lf-lactose-free', '1 L', 'biomil-lf-lactose-free.jpg'),
(73, 'ensure chocolate', 'ensurechocolate', 'Baby Milk', 300, 'ensure-chocolate', '1 L', 'ensure-chocolate.jpg'),
(74, 'kellogs coco pops free seed', 'kellogscocopopsfreeseed', 'Baby Milk', 300, 'kellogs-coco-pops-free-seed', '1 L', 'kellogs-coco-pops-free-seed.jpg'),
(75, 'lactogen gentlestart', 'lactogengentlestart', 'Baby Milk', 300, 'lactogen-1-gentlestart-400gm', '400 gm', 'lactogen-1-gentlestart-400gm.jpg'),
(76, 'nestle cerelac cereal rice', 'nestlecerelaccerealrice', 'Baby Milk', 300, 'nestle_cerelac_cereal_rice', '400 gm', 'nestle_cerelac_cereal_rice.jpg'),
(77, 'nestle nido', 'nestlenido', 'Baby Milk', 300, 'nestle-nido', '400 gm', 'nestle-nido.jpg'),
(78, 'baby tender baby wipes', 'babytenderbabywipes', 'Diapers', 200, 'baby_tender_baby_wipes', '400 gm', 'baby_tender_baby_wipes.jpg'),
(79, 'canbebe jumbo maxi', 'canbebejumbomaxi', 'Diapers', 150, 'canbebe_jumbo_maxi', '400 gm', 'canbebe_jumbo_maxi.jpg'),
(80, 'cool baby wipes', 'coolbabywipes', 'Diapers', 150, 'cool_baby_wipes', '400 gm', 'cool_baby_wipes.jpg'),
(81, 'cussons baby wipes', 'cussonsbabywipes', 'Diapers', 150, 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers', '50 sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg'),
(82, 'pampers baby dry', 'pampersbabydry', 'Diapers', 150, 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers', '20 Piece', 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers.jpg'),
(83, 'pampers premium care', 'pamperspremiumcare', 'Diapers', 150, 'pampers_premium_care', '400 gm', 'pampers_premium_care.jpg'),
(84, 'blackcat powder', 'blackcatpowder', 'Beauty care', 200, 'blackcat-powder', '125 g', 'blackcat-powder.jpg'),
(85, 'fair lovely', 'fairlovely', 'Beauty care', 200, 'fair_lovely', '125 g', 'fair_lovely.jpg'),
(86, 'fair lovely maxfresh', 'fairlovelymaxfresh', 'Beauty care', 200, 'fair_lovely-maxfresh', '125 g', 'fair_lovely-maxfresh.jpg'),
(87, 'lifebuoy soap', 'lifebuoysoap', 'Beauty care', 200, 'lifebuoy__soap', '125 g', 'lifebuoy__soap.jpg'),
(88, 'ponds flawless white', 'pondsflawlesswhite', 'Beauty care', 200, 'ponds-flawless-white', '125 g', 'ponds-flawless-white.jpg'),
(89, 'skinwhite', 'skinwhite', 'Beauty care', 200, 'skinwhite-creamjar_1_beautycare', '125 g', 'skinwhite-creamjar_1_beautycare.jpg'),
(90, 'Dettol handwash', 'Dettolhandwash', 'Body care', 200, 'dettol__handwash__original_2__body_care', '125 g', 'dettol__handwash__original_2__body_care.jpg'),
(91, 'Dove cottonbuds', 'Dovecottonbuds', 'Body care', 200, 'dove_cottonbuds_01_1_1_body_care', '125 g', 'dove_cottonbuds_01_1_1_body_care.jpg'),
(92, 'Gillette blue 3 razor', 'Gilletteblue3razor', 'Body care', 35, 'gillette_blue_3_razor', '12', 'gillette_blue_3_razor.jpg'),
(93, 'Pears shower gel', 'Pearsshowergel', 'Body care', 35, 'pears_shower_gel', '12', 'pears_shower_gel.jpg'),
(94, 'vaseline', 'vaseline', 'Body care', 350, 'vaseline pure jelly 250ml', '250 ML', 'vaseline pure jelly 250ml.jpg'),
(95, 'wild argan oil', 'wildarganoil', 'Body care', 350, 'wild-argan-oil-shower-gel', '250 ML', 'wild-argan-oil-shower-gel.jpg'),
(96, 'Dove nourishingoilcare', 'Dovenourishingoilcare', 'Hair Care', 350, 'dove-nourishingoilcare', '250 ML', 'dove-nourishingoilcare.jpg'),
(97, 'Head shoulder', 'Headshoulder', 'Hair Care', 350, 'head_shoulder', '250 ML', 'head_shoulder.jpg'),
(98, 'lifebuoy', 'lifebuoy', 'Hair Care', 350, 'lifebuoy', '250 ML', 'lifebuoy.jpg'),
(99, 'sunsilk', 'sunsilk', 'Hair Care', 350, 'sunsilk', '250 ML', 'sunsilk.jpg'),
(100, 'Sunsilk antidandruff', 'Sunsilkantidandruff', 'Hair Care', 350, 'sunsilk-antidandruff', '250 ML', 'sunsilk-antidandruff.jpg'),
(101, 'Sunsilk blackshine', 'Sunsilkblackshine', 'Hair Care', 350, 'sunsilk-blackshine', '250 ML', 'sunsilk-blackshine.jpg'),
(102, 'Closeup gel', 'Closeupgel', 'Oral Care', 350, 'closeup_gel_red_hot', '250g', 'closeup_gel_red_hot.jpg'),
(103, 'Colgate', 'Colgate', 'Oral Care', 350, 'colgate__tooth__brush__extra__clean_2_1_oralcare', '250g', 'colgate__tooth__brush__extra__clean_2_1_oralcare.jpg'),
(104, 'Colgate plax', 'Colgateplax', 'Oral Care', 350, 'colgate_plax_original_mouthwash', '250g', 'colgate_plax_original_mouthwash.jpg'),
(105, 'Himalaya toothpaste', 'Himalayatoothpaste', 'Oral Care', 350, 'himalaya_toothpaste', '250g', 'himalaya_toothpaste.jpg'),
(106, 'lucky hand senetizer', 'luckyhandsenetizer', 'Oral Care', 350, 'lucky hand senetizer', '250 ML', 'lucky hand senetizer.jpg'),
(107, 'Sensodyne toothpaste', 'Sensodynetoothpaste', 'Oral Care', 350, 'sensodyne__toothpaste__flouride_2_1_oralcare', '250 ML', 'sensodyne__toothpaste__flouride_2_1_oralcare.jpg'),
(108, 'adolecant plus perfume', 'adolecantplusperfume', 'Perfumes', 500, 'closeup_gel_red_hot', '50 ML', 'adolecant plus perfume 50ml.jpg'),
(109, 'elpaso for women', 'elpasoforwomen', 'Perfumes', 450, 'elpaso for women 100ml', '100 ML', 'elpaso for women 100ml.jpg'),
(110, 'emper perfume', 'emperperfume', 'Perfumes', 450, 'emper perfume saga 100ml', '100 ML', 'emper perfume saga 100ml.jpg'),
(111, 'le chameau perfume', 'lechameauperfume', 'Perfumes', 450, 'le chameau perfume 100ml', '100 ML', 'le chameau perfume 100ml.jpg'),
(112, 'perfect perfumes', 'perfectperfumes', 'Perfumes', 450, 'perfect_perfumes', '100 ML', 'perfect_perfumes.jpg'),
(113, 'prime perfume for women', 'primeperfumeforwomen', 'Perfumes', 450, 'prime perfume for women', '100 ML', 'prime perfume for women.jpg'),
(114, 'butchers dog food', 'butchersdogfood', 'Pet Food', 350, 'butchers_dog_food_fresh_tripe_mix_tin_400gm', '400 mg', 'butchers_dog_food_fresh_tripe_mix_tin_400gm.jpg'),
(115, 'dog food meal withbones', 'dogfoodmealwithbones', 'Pet Food', 350, 'dog-food-meal__withbones', '400 mg', 'dog-food-meal__withbones.jpg'),
(116, 'dog food meal boneless', 'dogfoodmealboneless', 'Pet Food', 350, 'dog-food-meal_boneless', '400 mg', 'dog-food-meal_boneless.jpg'),
(117, 'Felix cat food', 'Felixcatfood', 'Pet Food', 350, 'Felix_cat_food_sachcet', '400 mg', 'Felix_cat_food_sachcet.jpg'),
(118, 'meo cat sea food', 'meocatseafood', 'Pet Food', 350, 'meo_cat_sea_food', '400 mg', 'meo_cat_sea_food.jpg'),
(119, 'Nova fish food', 'Novafishfood', 'Pet Food', 350, 'nova_fish_food', '400 mg', 'nova_fish_food.jpg'),
(120, 'Queen bajra', 'Queenbajra', 'Pet Food', 350, 'Queen_bajra', '400 mg', 'Queen_bajra.jpg'),
(121, 'smart heart dog food', 'smartheartdogfood', 'Pet Food', 350, 'smart_heart_dog_food_chicken_8kg', '8 Kg', 'smart_heart_dog_food_chicken_8kg.jpg'),
(122, 'Thomas cat', 'Thomascat', 'Pet Food', 350, 'thomas_cat_litter_5l', '5 L', 'thomas_cat_litter_5l.jpg'),
(123, 'casio scientific calculator', 'casioscientificcalculator', 'stationary', 350, 'casio scientific calculator', '50 g', 'casio scientific calculator.jpg'),
(124, 'Deer colors', 'Deercolors', 'stationary', 350, 'deer_24_pcs_1_colors', '24', 'deer_24_pcs_1_colors.jpg'),
(125, 'Deer pencil', 'Deerpencil', 'stationary', 350, 'deer_selecta_black_lead_pencil_pencil', '24', 'deer_selecta_black_lead_pencil_pencil.jpg'),
(126, 'Dollar', 'Dollar', 'stationary', 350, 'dollar_my_pencil_12s_packet', '12', 'dollar_my_pencil_12s_packet.jpg'),
(127, 'dollar pointer', 'dollarpointer', 'stationary', 350, 'dollar_pointer_plus_10s_box_black_pens', '10', 'dollar_pointer_plus_10s_box_black_pens.jpg'),
(128, 'Dollar pointer plus', 'Dollarpointerplus', 'stationary', 350, 'dollar_pointer_plus_10s_box_blue_pens', '10', 'dollar_pointer_plus_10s_box_blue_pens.jpg'),
(129, 'fountain pen ink', 'fountainpenink', 'stationary', 350, 'fountain_pen_ink', '24 ML', 'fountain_pen_ink.jpg'),
(130, 'glitter gel pen', 'glittergelpen', 'stationary', 350, 'glitter gel pen 12p', '12', 'glitter gel pen 12p.jpg'),
(131, 'Pencil color', 'Pencilcolor', 'stationary', 350, 'pencil_color', '12', 'pencil_color.jpg'),
(132, 'Mix Boti Beef', 'MixBotiBeef', 'Meat', 1100, 'beef veal mix boti 1kg', '1kg', 'beef_veal_mix_boti_1kg.jpg'),
(133, 'Soup Bones Beef', 'SoupBonesBeef', 'Meat', 950, '1kg', 'beef veal soup bones 1kg', 'beef_veal_soup_bones_1kg.jpg'),
(134, 'chicken fresh breast', 'chickenfreshbreast', 'Meat', 350, '1kg', 'chicken fresh breast 1kg', 'chicken_fresh_breast.jpg'),
(135, 'chicken tikka', 'chickentikka', 'Meat', 300, '1.5kg', 'chicken tikka 1.5kg', 'chicken-tikka.jpg'),
(136, 'kn burger patties', 'knburgerpatties', 'Meat', 550, '10ps', 'k n burger patties 10ps', 'k_n_burger_patties.jpg'),
(137, 'k ns chicken samosa', 'knschickensamosa', 'Meat', 340, '15ps', 'k ns chicken samosa 15ps', 'k_ns_chicken_samosa.jpg'),
(138, 'Garlic', 'Garlic', 'Vegetable', 460, 'garlic 1kg', '1kg', 'garlic.jpg'),
(139, 'Green Chilli', 'GreenChilli', 'Vegetable', 80, 'green chilli 1kg', '1kg', 'green-chilli.jpg'),
(140, 'lemon', 'lemon', 'Vegetable', 460, 'lemon 1kg', '1kg', 'lemon.jpg'),
(141, 'Onion Pyaaz', 'OnionPyaaz', 'Vegetable', 60, 'onion pyaaz 1kg', '1kg', 'onion-pyaaz.jpg'),
(142, 'Palak Half', 'PalakHalf', 'Vegetable', 50, 'palak half 1kg', '1kg', 'palak half.jpg'),
(143, 'Tomato Tamatar', 'TomatoTamatar', 'Vegetable', 460, 'tomato-tamatar 1kg', '1kg', 'tomato-tamatar.jpg'),
(144, 'burfi Sweet', 'burfiSweet', 'Sweet', 380, 'burfi sweet 1kg', '1kg', 'burfi_sweet.jpg'),
(145, 'Cham Cham Sweet', 'ChamChamSweet', 'Sweet', 350, 'Cham Cham sweet 1kg', '1kg', 'cham-cham.jpg'),
(146, 'Gulab Jamun', 'GulabJamun', 'Sweet', 380, 'Gulab Jamun 1kg', '1kg', 'gulab-jamun.jpg'),
(147, 'Habshi Halwa', 'HabshiHalwa', 'Sweet', 290, 'Habshi-Halwa 1kg', '1kg', 'habshi-halwa.jpg'),
(148, 'Jalebi Halwa', 'JalebiHalwa', 'Sweet', 250, 'Jalebi-Halwa 1kg', '1kg', 'jalebi-halwa.jpg'),
(149, 'Methai Sweet', 'MethaiSweet', 'Sweet', 370, 'Methai sweet 1kg', '1kg', 'mithai.jpg'),
(150, 'Sohni Sweet Bread', 'SohniSweetBread', 'Bread', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(151, 'Eggs Dozen', 'EggsDozen', 'Bread', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(152, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Bread', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(153, 'Mitchels Mangojam', 'MitchelsMangojam', 'Bread', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(154, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Bread', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(155, 'Sohni Sweet Bread', 'SohniSweetBread', 'Break Fast', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(156, 'Eggs Dozen', 'EggsDozen', 'Break Fast', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(157, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Break Fast', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(158, 'Mitchels Mangojam', 'MitchelsMangojam', 'Break Fast', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(159, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Break Fast', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(160, 'Pine Apple Chocolate Cake ', 'PineAppleChocolateCake', 'Cake', 800, 'PINEAPPLE CAKE WITH WHITE CHOCOLATE ', '1 pound', 'pineapple-cake-kitchen-cuisine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mart03 products`
--

CREATE TABLE `mart03 products` (
  `Prod_Id` int(11) NOT NULL,
  `Prod_Name` varchar(255) NOT NULL,
  `Ml_Name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Prod_Price` int(10) NOT NULL,
  `Prod_Desp` varchar(255) NOT NULL,
  `Prod_Size` varchar(255) NOT NULL,
  `Prod_Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mart03 products`
--

INSERT INTO `mart03 products` (`Prod_Id`, `Prod_Name`, `Ml_Name`, `Category`, `Prod_Price`, `Prod_Desp`, `Prod_Size`, `Prod_Img`) VALUES
(1, 'Cussons Baby Diapers', 'CussonsBabyDiapers', 'Baby Care', 1599, '50_sheets_in_one_pack_diapers', '50_sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg'),
(2, 'Fanta Candy', 'FantaCandy', 'Candy', 55, 'candyland fanty candy pack of 35', 'Pack of 35', 'candyland_fanty_candy_pack_of_35.jpg'),
(3, 'Coffex Candy', 'CoffexCandy', 'Candy', 80, 'coffex coffee candy 300g', '300 g', 'coffex-coffee-candy-300g.jpg'),
(4, 'Amrus Candy', 'AmrusCandy', 'Candy', 45, 'hilal amrus candy', '30 g', 'hilal_amrus_candy.jpg'),
(5, 'Mentos Candy', 'MentosCandy', 'Candy', 75, 'mentosrollcandy', '200 g', 'mentos-roll-candy.jpg'),
(6, 'Tayas Orange Candy', 'TayasOrangeCandy', 'Candy', 100, 'tayas damla orange candy 90gm', '90 g', 'tayas_damla_orange_candy_90gm.jpg'),
(7, 'Tayas Candy', 'TayasCandy', 'Candy', 75, 'tayas candy 90', '90 g', 'hilal_amrus_candy.jpg'),
(8, 'Parlor Macaroni', 'ParlorMacaroni', 'Pasta', 90, 'bake parlor macaroni penne 400g', '400 g', 'bake_parlor_macaroni_penne_400g.jpg'),
(9, 'bake parlor Vermicelli', 'bakeparlorVermicelli', 'Pasta', 30, 'bake parlor vermicelli u shape 150g', '150 g', 'bake_parlor_vermicelli_u_shape_150g.jpg'),
(10, 'Vegeterian Pasta', 'VegeterianPasta', 'Pasta', 50, 'bake parlor Vagetarian Pasta', '100 g', 'bake-parlor-veg-pasta.jpg'),
(11, 'Crispo Macaroni', 'CrispoMacaroni', 'Pasta', 90, 'crispo elbow macroni', '400 g', 'crispo_elbow_macroni.jpg'),
(12, 'Granoro Pasta', 'GranoroPasta', 'Pasta', 60, 'granoro pasta', '90 g', 'granoro-pasta.jpg'),
(13, 'Kolson Pasta', 'KolsonPasta', 'Pasta', 70, 'kolson pasta vermicelli 400g', '400 g', 'kolson-pasta-vermicelli-400g.jpg'),
(14, 'Everyday powder', 'Everydaypowder', 'Milk', 50, 'everyday_powder_400g', '50g', 'everyday_powder_400g.jpg'),
(15, 'Milk Pack', 'MilkPack', 'Milk', 50, 'milk-pack_1L', '50g', 'milk-pack_1L.jpg'),
(16, 'Nurpur', 'Nurpur', 'Milk', 50, 'nurpur-250ml', '50g', 'nurpur-250ml.jpg'),
(17, 'Olper', 'Olper', 'Milk', 50, 'olper', '100g', 'olper.jpg'),
(18, 'Olpers Carton', 'OlpersCarton', 'Milk', 50, 'olpers-carton-1.5L', '100g', 'olpers-carton-1.5L.jpg'),
(19, 'Tarang', 'Tarang', 'Milk', 50, 'tarang_500g', '100g', 'tarang_500g.jpg'),
(20, 'chocolate cake', 'chocolatecake', 'Cake', 500, 'chocolate-cake', '1.5 pound', 'chocolate-cake.jpg'),
(21, 'chocolate mabble cake', 'chocolatemabblecake', 'Cake', 250, 'chocolate-mabble-cake', '1.5 pound', 'chocolate-mabble-cake.jpg'),
(22, 'cofee crunch cake', 'cofeecrunchcake', 'Cake', 250, 'cofee-crunch-cake', '1.5 pound', 'cofee-crunch-cake.jpg'),
(23, 'pineapple cake', 'pineapplecake', 'Cake', 450, 'pineapple-cake', '1 pound', 'pineapple-cake.jpg'),
(24, 'red velvet cake', 'redvelvetcake', 'Cake', 450, 'red-velvet-cake', '1 pound', 'red-velvet-cake.jpg'),
(25, 'UK Chocolate Banana Cake', 'UKChocolateBananaCake', 'Cake', 750, 'united_king_chocolate_banana_cake', '2 pound', 'united_king_chocolate_banana_cake.jpg'),
(26, 'bisconni chocolatto biscuit', 'bisconnichocolattobiscuit', 'Biscuit', 30, 'bisconni-chocolatto-biscuit-6-packs', '15g', 'bisconni-chocolatto-biscuit-6-packs.jpg'),
(27, 'mayfair cafe biscuit', 'mayfaircafebiscuit', 'Biscuit', 30, 'mayfair-cafe-biscuit-6-half-roll', '15g', 'mayfair-cafe-biscuit-6-half-roll.jpg'),
(28, 'oreo mini biscuits', 'oreominibiscuits', 'Biscuit', 30, 'oreo_mini_biscuits', '15g', 'oreo_mini_biscuits.jpg'),
(29, 'royalty digestive biscuits', 'royaltydigestivebiscuits', 'Biscuit', 230, 'royalty_digestive_biscuits_400g', '400g', 'royalty_digestive_biscuits_400g.jpg'),
(30, 'saltish biscuit', 'saltishbiscuit', 'Biscuit', 130, 'saltish_biscuit', '100g', 'saltish_biscuit.jpg'),
(31, 'tiffany biscuits delight', 'tiffanybiscuitsdelight', 'Biscuit', 130, 'tiffany_biscuits_delight-200g', '200g', 'tiffany_biscuits_delight-200g.jpg'),
(32, 'ACTIVADE SPORTS ENERGY DRINK', 'ACTIVADESPORTSENERGYDRINK', 'Beverages', 130, 'ACTIVADE SPORTS ENERGY DRINK RED 510ML', '510 ML', 'ACTIVADE SPORTS ENERGY DRINK RED 510ML.jpg'),
(33, 'EVERVESS DRINK CLUB SODA', 'EVERVESSDRINKCLUBSODA', 'Beverages', 230, 'EVERVESS DRINK CLUB SODA – 300 ML. TIN', '300 ML', 'EVERVESS DRINK CLUB SODA – 300 ML. TIN.jpg'),
(34, 'FREEZ STRAWBERRY DRINK', 'FREEZSTRAWBERRYDRINK', 'Beverages', 130, 'FREEZ STRAWBERRY DRINK - 275ML', '275 L', 'FREEZ STRAWBERRY DRINK - 275ML.jpg'),
(35, 'GRENADE ENERGY DRINK REGULAR', 'GRENADEENERGYDRINKREGULAR', 'Beverages', 230, 'GRENADE ENERGY DRINK REGULAR – 250 ML', '250 ML', 'GRENADE ENERGY DRINK REGULAR – 250 ML.jpg'),
(36, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR', 'NESTLEFRUITAVITALSPINEAPPLENECTAR', 'Beverages', 130, 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML', '1 L', 'NESTLE FRUITA VITALS PINEAPPLE NECTAR 1000ML.jpg'),
(37, 'SHEZAN MANGO SQUASH', 'SHEZANMANGOSQUASH', 'Beverages', 430, 'SHEZAN MANGO SQUASH 1.5LITER', '1.5 L', 'SHEZAN MANGO SQUASH 1.5LITER.jpg'),
(38, 'Air wick aerosol rose', 'Airwickaerosolrose', 'Air Freshner', 430, 'air_wick_aerosol_rose_300ml', '300 ML', 'air_wick_aerosol_rose_300ml.jpg'),
(39, 'Cobra spray Homecare', 'CobrasprayHomecare', 'Air Freshner', 430, 'cobra-spray_1_Homecare', '300 ML', 'cobra-spray_1_Homecare.jpg'),
(40, 'cobra spray', 'cobraspray', 'Air Freshner', 430, 'cobra-spray-300ml', '300 ML', 'cobra-spray-300ml.jpg'),
(41, 'Glade morning fresh', 'Glademorningfresh', 'Air Freshner', 430, 'glade_morning_fresh', '300 ML', 'glade_morning_fresh.jpg'),
(42, 'Glade i love you', 'Gladeiloveyou', 'Air Freshner', 430, 'glade-i-love-you-300ml', '300 ML', 'glade-i-love-you-300ml.jpg'),
(43, 'Godrej imported air freshner', 'Godrejimportedairfreshner', 'Air Freshner', 430, 'godrej_imported_air_freshner_fresh_300ml', '300 ML', 'godrej_imported_air_freshner_fresh_300ml.jpg'),
(44, 'camel lights', 'camellights', 'Cigaret', 90, 'camel-lights', '15 ', 'camel-lights.jpg'),
(45, 'capstan Cigaret', 'capstanCigaret', 'Cigaret', 90, 'capstan_by_pall_mall_1_Cigereateandlighters', '15 ', 'capstan_by_pall_mall_1_Cigereateandlighters.jpg'),
(46, 'davidoff lights', 'davidofflights', 'Cigaret', 130, 'davidoff-lights', '15', 'davidoff-lights.jpg'),
(47, 'jomo tech electronic lighter', 'jomotechelectroniclighter', 'Cigaret', 130, 'jomo_tech_electronic_lighter', '15 g', 'jomo_tech_electronic_lighter.jpg'),
(48, 'Seesha', 'Seesha', 'Cigaret', 130, 'seesha_mini_blue_color_with_box__mini_hookha', '15 g', 'seesha_mini_blue_color_with_box__mini_hookha.jpg'),
(49, 'cigratte lighter', 'cigrattelighter', 'Cigaret', 130, 'cigratte_lighter_metal_body', '15 g', 'cigratte_lighter_metal_body.jpg'),
(50, 'Dettol disinfectant', 'Dettoldisinfectant', 'Cleaning', 130, 'dettol-disinfectant-4-in-1-aqua_1', '1 L', '0008189_dettol-disinfectant-4-in-1-aqua_1.jpg'),
(51, 'ariel laundary', 'ariellaundary', 'Cleaning', 130, 'ariel_laundary', '1 KG', 'ariel_laundary.jpg'),
(52, 'excel launday', 'excellaunday', 'Cleaning', 130, 'excel_launday', '1 KG', 'excel_launday.jpg'),
(53, 'finish daily', 'finishdaily', 'Cleaning', 130, 'finis-daily', '1 KG', 'finis-daily.jpg'),
(54, 'Harpic Cleaning', 'HarpicCleaning', 'Cleaning', 130, 'Harpic_Cleaning', '1 L', 'Harpic_Cleaning.jpg'),
(55, 'lemon max big', 'lemonmaxbig', 'Cleaning', 130, 'lemon-max-big', '1 L', 'lemon-max-big.jpg'),
(56, 'BBQ Accessoreis', 'BBQAccessoreis', 'Kitchen', 430, 'babq-trey_1_1_BBQ_Accessoreis', '1 KG', 'babq-trey_1_1_BBQ_Accessoreis.jpg'),
(57, 'glint steel cleaner', 'glintsteelcleaner', 'Kitchen', 430, 'glintsteelcleaner', '1 KG', 'glintsteelcleaner.jpg'),
(58, 'lemon max small', 'lemonmaxsmall', 'Kitchen', 430, 'lemon-max-small', '1 KG', 'lemon-max-small.jpg'),
(59, 'maxbar long kitchen accessories', 'maxbarlongkitchenaccessories', 'Kitchen', 430, 'maxbar-long_1_1_kitchen_accessories', '1 KG', 'maxbar-long_1_1_kitchen_accessories.jpg'),
(60, 'paper plate', 'paperplate', 'Kitchen', 430, 'paper_plate', '1 KG', 'paper_plate.jpg'),
(61, 'westpoint chopper vegetable cutter', 'westpointchoppervegetablecutter', 'Kitchen', 430, 'westpoint-chopper-vegetable-cutter', '1 KG', 'westpoint-chopper-vegetable-cutter.jpg'),
(62, 'bigroll', 'bigroll', 'Toilet Paper', 430, 'bigroll', '1 roll', 'bigroll.jpg'),
(63, 'hankies hotpot toilet paper', 'hankieshotpottoiletpaper', 'Toilet Paper', 430, 'hankies-hotpot_toilet_paper', '1 roll', 'hankies-hotpot_toilet_paper.jpg'),
(64, 'maxob rose petal', 'maxobrosepetal', 'Toilet Paper', 430, 'maxob_rose_petal_toilet_tissue_paper_roll', '1 roll', 'maxob_rose_petal_toilet_tissue_paper_roll.jpg'),
(65, 'Rose petal tissue deluxe', 'Rosepetaltissuedeluxe', 'Toilet Paper', 430, 'rose_petal_tissue_deluxe_200x2_ply_box', '1 roll', 'rose_petal_tissue_deluxe_200x2_ply_box.jpg'),
(66, 'Rose petal toilet roll', 'Rosepetaltoiletroll', 'Toilet Paper', 430, 'rose-petal-toilet-roll-1-10-pack', '1 roll', 'rose-petal-toilet-roll-1-10-pack.jpg'),
(67, 'toilet tissue toilet paper', 'toilettissuetoiletpaper', 'Toilet Paper', 430, 'toilet-tissue_1_toilet_paper', '1 roll', 'toilet-tissue_1_toilet_paper.jpg'),
(68, 'johnsons baby cologine', 'johnsonsbabycologine', 'Baby Body care', 200, 'johnsons_baby_cologine_regular_125ml', '125 ML', 'johnsons_baby_cologine_regular_125ml.jpg'),
(69, 'johnsons baby powder nourishing', 'johnsonsbabypowdernourishing', 'Baby Body care', 200, 'johnsons_baby_powder_nourishing_100g_babybodycare', '100 g', 'johnsons_baby_powder_nourishing_100g_babybodycare.jpg'),
(70, 'johnsons baby shampoo', 'johnsonsbabyshampoo', 'Baby Body care', 200, 'johnsons_baby_shampoo_gold_500ml', '500 ML', 'johnsons_baby_shampoo_gold_500ml.jpg'),
(71, 'pigeon baby powder', 'pigeonbabypowder', 'Baby Body care', 300, 'pigeon-babypowder_1_babybodycare', '1', 'pigeon-babypowder_1_babybodycare.jpg'),
(72, 'biomil lf lactose free', 'biomillflactosefree', 'Baby Milk', 300, 'biomil-lf-lactose-free', '1 L', 'biomil-lf-lactose-free.jpg'),
(73, 'ensure chocolate', 'ensurechocolate', 'Baby Milk', 300, 'ensure-chocolate', '1 L', 'ensure-chocolate.jpg'),
(74, 'kellogs coco pops free seed', 'kellogscocopopsfreeseed', 'Baby Milk', 300, 'kellogs-coco-pops-free-seed', '1 L', 'kellogs-coco-pops-free-seed.jpg'),
(75, 'lactogen gentlestart', 'lactogengentlestart', 'Baby Milk', 300, 'lactogen-1-gentlestart-400gm', '400 gm', 'lactogen-1-gentlestart-400gm.jpg'),
(76, 'nestle cerelac cereal rice', 'nestlecerelaccerealrice', 'Baby Milk', 300, 'nestle_cerelac_cereal_rice', '400 gm', 'nestle_cerelac_cereal_rice.jpg'),
(77, 'nestle nido', 'nestlenido', 'Baby Milk', 300, 'nestle-nido', '400 gm', 'nestle-nido.jpg'),
(78, 'baby tender baby wipes', 'babytenderbabywipes', 'Diapers', 200, 'baby_tender_baby_wipes', '400 gm', 'baby_tender_baby_wipes.jpg'),
(79, 'canbebe jumbo maxi', 'canbebejumbomaxi', 'Diapers', 150, 'canbebe_jumbo_maxi', '400 gm', 'canbebe_jumbo_maxi.jpg'),
(80, 'cool baby wipes', 'coolbabywipes', 'Diapers', 150, 'cool_baby_wipes', '400 gm', 'cool_baby_wipes.jpg'),
(81, 'cussons baby wipes', 'cussonsbabywipes', 'Diapers', 150, 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers', '50 sheets', 'cussons_baby_wipes_mild___gentle___50_sheets_in_one_pack__diapers.jpg'),
(82, 'pampers baby dry', 'pampersbabydry', 'Diapers', 150, 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers', '20 Piece', 'pampers_baby_dry_2___3-6_kg_mini_20_piece_in_one_pack__diapers.jpg'),
(83, 'pampers premium care', 'pamperspremiumcare', 'Diapers', 150, 'pampers_premium_care', '400 gm', 'pampers_premium_care.jpg'),
(84, 'blackcat powder', 'blackcatpowder', 'Beauty care', 200, 'blackcat-powder', '125 g', 'blackcat-powder.jpg'),
(85, 'fair lovely', 'fairlovely', 'Beauty care', 200, 'fair_lovely', '125 g', 'fair_lovely.jpg'),
(86, 'fair lovely maxfresh', 'fairlovelymaxfresh', 'Beauty care', 200, 'fair_lovely-maxfresh', '125 g', 'fair_lovely-maxfresh.jpg'),
(87, 'lifebuoy soap', 'lifebuoysoap', 'Beauty care', 200, 'lifebuoy__soap', '125 g', 'lifebuoy__soap.jpg'),
(88, 'ponds flawless white', 'pondsflawlesswhite', 'Beauty care', 200, 'ponds-flawless-white', '125 g', 'ponds-flawless-white.jpg'),
(89, 'skinwhite', 'skinwhite', 'Beauty care', 200, 'skinwhite-creamjar_1_beautycare', '125 g', 'skinwhite-creamjar_1_beautycare.jpg'),
(90, 'Dettol handwash', 'Dettolhandwash', 'Body care', 200, 'dettol__handwash__original_2__body_care', '125 g', 'dettol__handwash__original_2__body_care.jpg'),
(91, 'Dove cottonbuds', 'Dovecottonbuds', 'Body care', 200, 'dove_cottonbuds_01_1_1_body_care', '125 g', 'dove_cottonbuds_01_1_1_body_care.jpg'),
(92, 'Gillette blue 3 razor', 'Gilletteblue3razor', 'Body care', 35, 'gillette_blue_3_razor', '12', 'gillette_blue_3_razor.jpg'),
(93, 'Pears shower gel', 'Pearsshowergel', 'Body care', 35, 'pears_shower_gel', '12', 'pears_shower_gel.jpg'),
(94, 'vaseline', 'vaseline', 'Body care', 350, 'vaseline pure jelly 250ml', '250 ML', 'vaseline pure jelly 250ml.jpg'),
(95, 'wild argan oil', 'wildarganoil', 'Body care', 350, 'wild-argan-oil-shower-gel', '250 ML', 'wild-argan-oil-shower-gel.jpg'),
(96, 'Dove nourishingoilcare', 'Dovenourishingoilcare', 'Hair Care', 350, 'dove-nourishingoilcare', '250 ML', 'dove-nourishingoilcare.jpg'),
(97, 'Head shoulder', 'Headshoulder', 'Hair Care', 350, 'head_shoulder', '250 ML', 'head_shoulder.jpg'),
(98, 'lifebuoy', 'lifebuoy', 'Hair Care', 350, 'lifebuoy', '250 ML', 'lifebuoy.jpg'),
(99, 'sunsilk', 'sunsilk', 'Hair Care', 350, 'sunsilk', '250 ML', 'sunsilk.jpg'),
(100, 'Sunsilk antidandruff', 'Sunsilkantidandruff', 'Hair Care', 350, 'sunsilk-antidandruff', '250 ML', 'sunsilk-antidandruff.jpg'),
(101, 'Sunsilk blackshine', 'Sunsilkblackshine', 'Hair Care', 350, 'sunsilk-blackshine', '250 ML', 'sunsilk-blackshine.jpg'),
(102, 'Closeup gel', 'Closeupgel', 'Oral Care', 350, 'closeup_gel_red_hot', '250g', 'closeup_gel_red_hot.jpg'),
(103, 'Colgate', 'Colgate', 'Oral Care', 350, 'colgate__tooth__brush__extra__clean_2_1_oralcare', '250g', 'colgate__tooth__brush__extra__clean_2_1_oralcare.jpg'),
(104, 'Colgate plax', 'Colgateplax', 'Oral Care', 350, 'colgate_plax_original_mouthwash', '250g', 'colgate_plax_original_mouthwash.jpg'),
(105, 'Himalaya toothpaste', 'Himalayatoothpaste', 'Oral Care', 350, 'himalaya_toothpaste', '250g', 'himalaya_toothpaste.jpg'),
(106, 'lucky hand senetizer', 'luckyhandsenetizer', 'Oral Care', 350, 'lucky hand senetizer', '250 ML', 'lucky hand senetizer.jpg'),
(107, 'Sensodyne toothpaste', 'Sensodynetoothpaste', 'Oral Care', 350, 'sensodyne__toothpaste__flouride_2_1_oralcare', '250 ML', 'sensodyne__toothpaste__flouride_2_1_oralcare.jpg'),
(108, 'adolecant plus perfume', 'adolecantplusperfume', 'Perfumes', 500, 'closeup_gel_red_hot', '50 ML', 'adolecant plus perfume 50ml.jpg'),
(109, 'elpaso for women', 'elpasoforwomen', 'Perfumes', 450, 'elpaso for women 100ml', '100 ML', 'elpaso for women 100ml.jpg'),
(110, 'emper perfume', 'emperperfume', 'Perfumes', 450, 'emper perfume saga 100ml', '100 ML', 'emper perfume saga 100ml.jpg'),
(111, 'le chameau perfume', 'lechameauperfume', 'Perfumes', 450, 'le chameau perfume 100ml', '100 ML', 'le chameau perfume 100ml.jpg'),
(112, 'perfect perfumes', 'perfectperfumes', 'Perfumes', 450, 'perfect_perfumes', '100 ML', 'perfect_perfumes.jpg'),
(113, 'prime perfume for women', 'primeperfumeforwomen', 'Perfumes', 450, 'prime perfume for women', '100 ML', 'prime perfume for women.jpg'),
(114, 'butchers dog food', 'butchersdogfood', 'Pet Food', 350, 'butchers_dog_food_fresh_tripe_mix_tin_400gm', '400 mg', 'butchers_dog_food_fresh_tripe_mix_tin_400gm.jpg'),
(115, 'dog food meal withbones', 'dogfoodmealwithbones', 'Pet Food', 350, 'dog-food-meal__withbones', '400 mg', 'dog-food-meal__withbones.jpg'),
(116, 'dog food meal boneless', 'dogfoodmealboneless', 'Pet Food', 350, 'dog-food-meal_boneless', '400 mg', 'dog-food-meal_boneless.jpg'),
(117, 'Felix cat food', 'Felixcatfood', 'Pet Food', 350, 'Felix_cat_food_sachcet', '400 mg', 'Felix_cat_food_sachcet.jpg'),
(118, 'meo cat sea food', 'meocatseafood', 'Pet Food', 350, 'meo_cat_sea_food', '400 mg', 'meo_cat_sea_food.jpg'),
(119, 'Nova fish food', 'Novafishfood', 'Pet Food', 350, 'nova_fish_food', '400 mg', 'nova_fish_food.jpg'),
(120, 'Queen bajra', 'Queenbajra', 'Pet Food', 350, 'Queen_bajra', '400 mg', 'Queen_bajra.jpg'),
(121, 'smart heart dog food', 'smartheartdogfood', 'Pet Food', 350, 'smart_heart_dog_food_chicken_8kg', '8 Kg', 'smart_heart_dog_food_chicken_8kg.jpg'),
(122, 'Thomas cat', 'Thomascat', 'Pet Food', 350, 'thomas_cat_litter_5l', '5 L', 'thomas_cat_litter_5l.jpg'),
(123, 'casio scientific calculator', 'casioscientificcalculator', 'stationary', 350, 'casio scientific calculator', '50 g', 'casio scientific calculator.jpg'),
(124, 'Deer colors', 'Deercolors', 'stationary', 350, 'deer_24_pcs_1_colors', '24', 'deer_24_pcs_1_colors.jpg'),
(125, 'Deer pencil', 'Deerpencil', 'stationary', 350, 'deer_selecta_black_lead_pencil_pencil', '24', 'deer_selecta_black_lead_pencil_pencil.jpg'),
(126, 'Dollar', 'Dollar', 'stationary', 350, 'dollar_my_pencil_12s_packet', '12', 'dollar_my_pencil_12s_packet.jpg'),
(127, 'dollar pointer', 'dollarpointer', 'stationary', 350, 'dollar_pointer_plus_10s_box_black_pens', '10', 'dollar_pointer_plus_10s_box_black_pens.jpg'),
(128, 'Dollar pointer plus', 'Dollarpointerplus', 'stationary', 350, 'dollar_pointer_plus_10s_box_blue_pens', '10', 'dollar_pointer_plus_10s_box_blue_pens.jpg'),
(129, 'fountain pen ink', 'fountainpenink', 'stationary', 350, 'fountain_pen_ink', '24 ML', 'fountain_pen_ink.jpg'),
(130, 'glitter gel pen', 'glittergelpen', 'stationary', 350, 'glitter gel pen 12p', '12', 'glitter gel pen 12p.jpg'),
(131, 'Pencil color', 'Pencilcolor', 'stationary', 350, 'pencil_color', '12', 'pencil_color.jpg'),
(132, 'Mix Boti Beef', 'MixBotiBeef', 'Meat', 1100, 'beef veal mix boti 1kg', '1kg', 'beef_veal_mix_boti_1kg.jpg'),
(133, 'Soup Bones Beef', 'SoupBonesBeef', 'Meat', 950, '1kg', 'beef veal soup bones 1kg', 'beef_veal_soup_bones_1kg.jpg'),
(134, 'chicken fresh breast', 'chickenfreshbreast', 'Meat', 350, '1kg', 'chicken fresh breast 1kg', 'chicken_fresh_breast.jpg'),
(135, 'chicken tikka', 'chickentikka', 'Meat', 300, '1.5kg', 'chicken tikka 1.5kg', 'chicken-tikka.jpg'),
(136, 'kn burger patties', 'knburgerpatties', 'Meat', 550, '10ps', 'k n burger patties 10ps', 'k_n_burger_patties.jpg'),
(137, 'k ns chicken samosa', 'knschickensamosa', 'Meat', 340, '15ps', 'k ns chicken samosa 15ps', 'k_ns_chicken_samosa.jpg'),
(138, 'Garlic', 'Garlic', 'Vegetable', 460, 'garlic 1kg', '1kg', 'garlic.jpg'),
(139, 'Green Chilli', 'GreenChilli', 'Vegetable', 80, 'green chilli 1kg', '1kg', 'green-chilli.jpg'),
(140, 'lemon', 'lemon', 'Vegetable', 460, 'lemon 1kg', '1kg', 'lemon.jpg'),
(141, 'Onion Pyaaz', 'OnionPyaaz', 'Vegetable', 60, 'onion pyaaz 1kg', '1kg', 'onion-pyaaz.jpg'),
(142, 'Palak Half', 'PalakHalf', 'Vegetable', 50, 'palak half 1kg', '1kg', 'palak half.jpg'),
(143, 'Tomato Tamatar', 'TomatoTamatar', 'Vegetable', 460, 'tomato-tamatar 1kg', '1kg', 'tomato-tamatar.jpg'),
(144, 'burfi Sweet', 'burfiSweet', 'Sweet', 380, 'burfi sweet 1kg', '1kg', 'burfi_sweet.jpg'),
(145, 'Cham Cham Sweet', 'ChamChamSweet', 'Sweet', 350, 'Cham Cham sweet 1kg', '1kg', 'cham-cham.jpg'),
(146, 'Gulab Jamun', 'GulabJamun', 'Sweet', 380, 'Gulab Jamun 1kg', '1kg', 'gulab-jamun.jpg'),
(147, 'Habshi Halwa', 'HabshiHalwa', 'Sweet', 290, 'Habshi-Halwa 1kg', '1kg', 'habshi-halwa.jpg'),
(148, 'Jalebi Halwa', 'JalebiHalwa', 'Sweet', 250, 'Jalebi-Halwa 1kg', '1kg', 'jalebi-halwa.jpg'),
(149, 'Methai Sweet', 'MethaiSweet', 'Sweet', 370, 'Methai sweet 1kg', '1kg', 'mithai.jpg'),
(150, 'Sohni Sweet Bread', 'SohniSweetBread', 'Bread', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(151, 'Eggs Dozen', 'EggsDozen', 'Bread', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(152, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Bread', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(153, 'Mitchels Mangojam', 'MitchelsMangojam', 'Bread', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(154, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Bread', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(155, 'Sohni Sweet Bread', 'SohniSweetBread', 'Break Fast', 55, 'sohni sweet bread 300g', '300g', 'sohni sweet bread.jpg'),
(156, 'Eggs Dozen', 'EggsDozen', 'Break Fast', 120, 'eggs-dozen 12px', '12px', 'eggs-dozen.jpg'),
(157, 'Hmemade Nankhatae', 'HmemadeNankhatae', 'Break Fast', 350, 'homemade nankhatae 1kg', '1kg', 'homemade nankhatae.jpg'),
(158, 'Mitchels Mangojam', 'MitchelsMangojam', 'Break Fast', 430, 'mitchels mangojam 1kg', '1kg', 'mitchels-mangojam.jpg'),
(159, 'Nestle Podina Raita', 'NestlePodinaRaita', 'Break Fast', 250, 'nestle podina raita 1kg', '1kg', 'nestle-podina-raita.jpg'),
(160, 'Pine Apple Chocolate Cake ', 'PineAppleChocolateCake', 'Cake', 800, 'PINEAPPLE CAKE WITH WHITE CHOCOLATE ', '1 pound', 'pineapple-cake-kitchen-cuisine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mart notification`
--

CREATE TABLE `mart notification` (
  `Id` int(11) NOT NULL,
  `Mart_Id` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL DEFAULT 'New order arrived',
  `Status` varchar(255) NOT NULL DEFAULT 'Packing',
  `Rider_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mart notification`
--

INSERT INTO `mart notification` (`Id`, `Mart_Id`, `Description`, `Status`, `Rider_Id`) VALUES
(15, 2, 'New order arrived', 'Packing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mart owner`
--

CREATE TABLE `mart owner` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Mart_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mart owner`
--

INSERT INTO `mart owner` (`ID`, `Name`, `Email`, `Password`, `Mart_Id`) VALUES
(1, 'Ijaz Ahmed', 'ijazowner@local.com', 'ijaz123', 1),
(2, 'Amjad Islam', 'amjadowner@local.com', 'amjad123', 2),
(3, 'Qasim Khan', 'qasimowner@local.com', 'qasim123', 3),
(4, 'Admin', 'admin@local.com', 'admin123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marts`
--

CREATE TABLE `marts` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Mart_Owner_Id` int(11) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marts`
--

INSERT INTO `marts` (`Id`, `Name`, `Mart_Owner_Id`, `Stock`) VALUES
(1, 'The People Mart', 1, 160),
(2, 'Naseem Mart', 2, 160),
(3, 'Qasar Mart', 3, 160);

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `Rider_Id` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Phone` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Address` text CHARACTER SET latin1 NOT NULL,
  `Date_Of_Birth` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`Rider_Id`, `Name`, `Gender`, `Phone`, `Email`, `Password`, `Address`, `Date_Of_Birth`, `Latitude`, `Longitude`, `Status`) VALUES
(1, 'Waris Ahmad', 'Male', '03221548677', 'waris@gmail.com', '1234', 'Hamza town peoples colony attock', '1/2/2000', '37.4219566', '-122.0839911', 'Offline'),
(2, 'faisal javed', 'Male', '03125421525', 'faisal@gmail.com', 'faisal123', 'people colony attock', '2/5/2000', '33.785122', '72.361823', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `rider notification`
--

CREATE TABLE `rider notification` (
  `Order_Id` int(11) NOT NULL,
  `Cust_Id` int(11) NOT NULL,
  `Rider_Id` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL DEFAULT 'New Order Arrived'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user cart`
--

CREATE TABLE `user cart` (
  `Cart_Id` int(11) NOT NULL,
  `Cust_Id` int(11) DEFAULT NULL,
  `Prod_Id` int(11) DEFAULT NULL,
  `Mart_Id` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user cart`
--

INSERT INTO `user cart` (`Cart_Id`, `Cust_Id`, `Prod_Id`, `Mart_Id`, `Quantity`) VALUES
(98, 3, 112, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart items`
--
ALTER TABLE `cart items`
  ADD PRIMARY KEY (`Cart_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`),
  ADD KEY `Prod_Id` (`Prod_Id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `favourite items`
--
ALTER TABLE `favourite items`
  ADD PRIMARY KEY (`Favt_Id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mart01 products`
--
ALTER TABLE `mart01 products`
  ADD PRIMARY KEY (`Prod_Id`);

--
-- Indexes for table `mart02 products`
--
ALTER TABLE `mart02 products`
  ADD PRIMARY KEY (`Prod_Id`);

--
-- Indexes for table `mart03 products`
--
ALTER TABLE `mart03 products`
  ADD PRIMARY KEY (`Prod_Id`);

--
-- Indexes for table `mart notification`
--
ALTER TABLE `mart notification`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mart owner`
--
ALTER TABLE `mart owner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `marts`
--
ALTER TABLE `marts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`Rider_Id`);

--
-- Indexes for table `rider notification`
--
ALTER TABLE `rider notification`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `user cart`
--
ALTER TABLE `user cart`
  ADD PRIMARY KEY (`Cart_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`),
  ADD KEY `Prod_Id` (`Prod_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart items`
--
ALTER TABLE `cart items`
  MODIFY `Cart_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `favourite items`
--
ALTER TABLE `favourite items`
  MODIFY `Favt_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `mart01 products`
--
ALTER TABLE `mart01 products`
  MODIFY `Prod_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `mart02 products`
--
ALTER TABLE `mart02 products`
  MODIFY `Prod_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `mart03 products`
--
ALTER TABLE `mart03 products`
  MODIFY `Prod_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `mart notification`
--
ALTER TABLE `mart notification`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mart owner`
--
ALTER TABLE `mart owner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT for table `marts`
--
ALTER TABLE `marts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `Rider_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rider notification`
--
ALTER TABLE `rider notification`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user cart`
--
ALTER TABLE `user cart`
  MODIFY `Cart_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart items`
--
ALTER TABLE `cart items`
  ADD CONSTRAINT `cart items_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Customer_Id`),
  ADD CONSTRAINT `cart items_ibfk_2` FOREIGN KEY (`Prod_Id`) REFERENCES `mart01 products` (`Prod_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
