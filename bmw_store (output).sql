-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 05:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmw store`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_cabang`
--

CREATE TABLE `dim_cabang` (
  `PK_Cabang` int(11) NOT NULL,
  `cabang_id` int(11) DEFAULT NULL,
  `nama_cabang` varchar(255) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `nama_kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_cabang`
--

INSERT INTO `dim_cabang` (`PK_Cabang`, `cabang_id`, `nama_cabang`, `kota_id`, `nama_kota`) VALUES
(1, 1, 'Gaikindo', 1, 'Jakarta'),
(2, 2, 'Motorizento', 2, 'Surabaya'),
(3, 3, 'Raikindo', 1, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `dim_customer`
--

CREATE TABLE `dim_customer` (
  `customer_id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_customer`
--

INSERT INTO `dim_customer` (`customer_id`, `nama`) VALUES
(1, 'Lian'),
(2, 'Evan'),
(3, 'Sarah'),
(4, 'Andi'),
(5, 'Diana'),
(6, 'Budi'),
(7, 'Siti'),
(8, 'Rizal');

-- --------------------------------------------------------

--
-- Table structure for table `dim_karyawan`
--

CREATE TABLE `dim_karyawan` (
  `PK_karyawan` int(11) NOT NULL,
  `karyawan_id` int(11) DEFAULT NULL,
  `cabang_id` int(11) DEFAULT NULL,
  `nama_cabang` varchar(255) DEFAULT NULL,
  `Krywn_Full` tinytext DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_karyawan`
--

INSERT INTO `dim_karyawan` (`PK_karyawan`, `karyawan_id`, `cabang_id`, `nama_cabang`, `Krywn_Full`, `jabatan`) VALUES
(1, 1, 1, 'Gaikindo', 'Roy Pramudya', 'Sales Manager'),
(2, 2, 2, 'Motorizento', 'Cello Wijaya', 'Sales Executive'),
(3, 3, 1, 'Gaikindo', 'Doyok Santoso', 'Sales Representative');

-- --------------------------------------------------------

--
-- Table structure for table `dim_mobil`
--

CREATE TABLE `dim_mobil` (
  `PK_mobil` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_mobil`
--

INSERT INTO `dim_mobil` (`PK_mobil`, `product_id`, `kategori_id`, `harga`, `qty`, `nama_produk`, `jenis`) VALUES
(1, 1, 1, 80800, 20, 'BMW M3', 'Sedan'),
(2, 2, 2, 89300, 20, 'BMW X5', 'SUV'),
(3, 3, 3, 108514, 20, 'BMW 4 Series', 'Coupe');

-- --------------------------------------------------------

--
-- Table structure for table `dim_penjualan`
--

CREATE TABLE `dim_penjualan` (
  `PK_Sales` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `karyawan_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `tanggal_penjualan` datetime DEFAULT NULL,
  `jumlah_penjualan` int(11) DEFAULT NULL,
  `jumlah_harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_penjualan`
--

INSERT INTO `dim_penjualan` (`PK_Sales`, `product_id`, `karyawan_id`, `customer_id`, `promo_id`, `media_id`, `tanggal_penjualan`, `jumlah_penjualan`, `jumlah_harga`) VALUES
(1, 1, 1, 1, 1, 2, '2023-12-11 00:00:00', 2, 161600),
(2, 2, 2, 2, 1, 2, '2023-12-11 00:00:00', 3, 267900),
(3, 3, 3, 3, 2, 2, '2023-12-12 00:00:00', 1, 108514),
(4, 2, 2, 4, 1, 3, '2023-12-12 00:00:00', 2, 178600),
(5, 1, 1, 5, 2, 2, '2023-12-13 00:00:00', 1, 80800),
(6, 1, 2, 6, 1, 1, '2023-12-13 00:00:00', 2, 161600),
(7, 3, 3, 7, 2, 3, '2023-12-13 00:00:00', 1, 108514),
(8, 1, 3, 8, 2, 2, '2023-12-13 00:00:00', 1, 80800),
(9, 1, 3, 1, 2, 2, '2023-12-15 00:00:00', 4, 323200),
(10, 3, 1, 5, 2, 2, '2023-12-15 00:00:00', 5, 542570);

-- --------------------------------------------------------

--
-- Table structure for table `dim_promo`
--

CREATE TABLE `dim_promo` (
  `PK_promo` int(11) NOT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `nama_promo` varchar(255) DEFAULT NULL,
  `persen_diskon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_promo`
--

INSERT INTO `dim_promo` (`PK_promo`, `promo_id`, `nama_promo`, `persen_diskon`) VALUES
(1, 1, 'Promo A', 10),
(2, 2, 'Promo B', 15);

-- --------------------------------------------------------

--
-- Table structure for table `dim_sosmed`
--

CREATE TABLE `dim_sosmed` (
  `media_id` int(11) NOT NULL,
  `nama_media` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_sosmed`
--

INSERT INTO `dim_sosmed` (`media_id`, `nama_media`) VALUES
(1, 'Facebook'),
(2, 'Instagram'),
(3, 'Twitter');

-- --------------------------------------------------------

--
-- Table structure for table `fact_sales`
--

CREATE TABLE `fact_sales` (
  `PK_Sales` int(11) DEFAULT NULL,
  `PK_Karyawan` int(11) DEFAULT NULL,
  `PK_Cabang` int(11) DEFAULT NULL,
  `PK_Mobil` int(11) DEFAULT NULL,
  `PK_Customer` int(11) DEFAULT NULL,
  `PK_Sosmed` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `harga_sebelum_diskon` double DEFAULT NULL,
  `PK_Promo` int(11) DEFAULT NULL,
  `Total_Harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fact_sales`
--

INSERT INTO `fact_sales` (`PK_Sales`, `PK_Karyawan`, `PK_Cabang`, `PK_Mobil`, `PK_Customer`, `PK_Sosmed`, `Qty`, `harga_sebelum_diskon`, `PK_Promo`, `Total_Harga`) VALUES
(1, 1, 1, 1, 1, 2, 2, 161600, 1, 145440),
(2, 2, 2, 2, 2, 2, 3, 267900, 1, 241110),
(3, 3, 1, 3, 3, 2, 1, 108514, 2, 92237),
(4, 2, 2, 2, 4, 3, 2, 178600, 1, 160740),
(5, 1, 1, 1, 5, 2, 1, 80800, 2, 68680),
(6, 2, 2, 1, 6, 1, 2, 161600, 1, 145440),
(7, 3, 1, 3, 7, 3, 1, 108514, 2, 92237),
(8, 3, 1, 1, 8, 2, 1, 80800, 2, 68680),
(9, 3, 1, 1, 1, 2, 4, 323200, 2, 274720),
(10, 1, 1, 3, 5, 2, 5, 542570, 2, 461185);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_cabang`
--
ALTER TABLE `dim_cabang`
  ADD PRIMARY KEY (`PK_Cabang`);

--
-- Indexes for table `dim_customer`
--
ALTER TABLE `dim_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `dim_karyawan`
--
ALTER TABLE `dim_karyawan`
  ADD PRIMARY KEY (`PK_karyawan`);

--
-- Indexes for table `dim_mobil`
--
ALTER TABLE `dim_mobil`
  ADD PRIMARY KEY (`PK_mobil`);

--
-- Indexes for table `dim_penjualan`
--
ALTER TABLE `dim_penjualan`
  ADD PRIMARY KEY (`PK_Sales`);

--
-- Indexes for table `dim_promo`
--
ALTER TABLE `dim_promo`
  ADD PRIMARY KEY (`PK_promo`);

--
-- Indexes for table `dim_sosmed`
--
ALTER TABLE `dim_sosmed`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD KEY `PK_Sales` (`PK_Sales`,`PK_Karyawan`,`PK_Cabang`,`PK_Mobil`,`PK_Customer`,`PK_Sosmed`,`PK_Promo`),
  ADD KEY `PK_Karyawan` (`PK_Karyawan`),
  ADD KEY `PK_Cabang` (`PK_Cabang`),
  ADD KEY `PK_Mobil` (`PK_Mobil`),
  ADD KEY `PK_Customer` (`PK_Customer`),
  ADD KEY `PK_Sosmed` (`PK_Sosmed`),
  ADD KEY `PK_Promo` (`PK_Promo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dim_penjualan`
--
ALTER TABLE `dim_penjualan`
  ADD CONSTRAINT `dim_penjualan_ibfk_1` FOREIGN KEY (`PK_Sales`) REFERENCES `fact_sales` (`PK_Sales`);

--
-- Constraints for table `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD CONSTRAINT `fact_sales_ibfk_1` FOREIGN KEY (`PK_Karyawan`) REFERENCES `dim_karyawan` (`PK_karyawan`),
  ADD CONSTRAINT `fact_sales_ibfk_2` FOREIGN KEY (`PK_Cabang`) REFERENCES `dim_cabang` (`PK_Cabang`),
  ADD CONSTRAINT `fact_sales_ibfk_3` FOREIGN KEY (`PK_Mobil`) REFERENCES `dim_mobil` (`PK_mobil`),
  ADD CONSTRAINT `fact_sales_ibfk_4` FOREIGN KEY (`PK_Customer`) REFERENCES `dim_customer` (`customer_id`),
  ADD CONSTRAINT `fact_sales_ibfk_5` FOREIGN KEY (`PK_Sosmed`) REFERENCES `dim_sosmed` (`media_id`),
  ADD CONSTRAINT `fact_sales_ibfk_6` FOREIGN KEY (`PK_Promo`) REFERENCES `dim_promo` (`PK_promo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
