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
-- Database: `bmw`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `cabang_id` int(11) NOT NULL,
  `nama_cabang` varchar(255) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`cabang_id`, `nama_cabang`, `kota_id`) VALUES
(1, 'Gaikindo', 1),
(2, 'Motorizento', 2),
(3, 'Raikindo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `nama_customer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `nama_customer`) VALUES
(1, 'Lian2'),
(2, 'Evan2'),
(3, 'Sarah2'),
(4, 'Andi3'),
(5, 'Diana2'),
(6, 'Budi1'),
(7, 'Siti3'),
(8, 'Rizal2');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `cabang_id` int(11) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `nama_karyawan`, `cabang_id`, `nama_belakang`, `jabatan`) VALUES
(1, 'Roy', 1, 'Pramudya', 'Sales Manager'),
(2, 'Cello', 2, 'Wijaya', 'Sales Executive'),
(3, 'Doyok', 1, 'Santoso', 'Sales Representative');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_product`
--

CREATE TABLE `kategori_product` (
  `kategori_id` int(11) NOT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_product`
--

INSERT INTO `kategori_product` (`kategori_id`, `jenis`) VALUES
(1, 'Sedan'),
(2, 'SUV'),
(3, 'Coupe');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(11) NOT NULL,
  `nama_kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `nama_kota`) VALUES
(1, 'Jakarta'),
(2, 'Surabaya'),
(3, 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `media_sosial`
--

CREATE TABLE `media_sosial` (
  `media_id` int(11) NOT NULL,
  `nama_media` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_sosial`
--

INSERT INTO `media_sosial` (`media_id`, `nama_media`) VALUES
(1, 'Facebook'),
(2, 'Instagram'),
(3, 'Twitter');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `jumlah_penjualan` int(11) DEFAULT NULL,
  `jumlah_harga` decimal(10,2) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `karyawan_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `jumlah_penjualan`, `jumlah_harga`, `product_id`, `karyawan_id`, `customer_id`, `tanggal_penjualan`, `promo_id`, `media_id`) VALUES
(1, 2, '161600.00', 1, 1, 1, '2023-12-11', 1, 2),
(2, 3, '267900.00', 2, 2, 2, '2023-12-11', 1, 2),
(3, 1, '108514.00', 3, 3, 3, '2023-12-12', 2, 2),
(4, 2, '178600.00', 2, 2, 4, '2023-12-12', 1, 3),
(5, 1, '80800.00', 1, 1, 5, '2023-12-13', 2, 2),
(6, 2, '161600.00', 1, 2, 6, '2023-12-13', 1, 1),
(7, 1, '108514.00', 3, 3, 7, '2023-12-13', 2, 3),
(8, 1, '80800.00', 1, 3, 8, '2023-12-13', 2, 2),
(9, 4, '323200.00', 1, 3, 1, '2023-12-15', 2, 2),
(10, 5, '542570.00', 3, 1, 5, '2023-12-15', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `kategori_id`, `harga`, `qty`, `nama_produk`) VALUES
(1, 1, '80800.00', 20, 'BMW M3'),
(2, 2, '89300.00', 20, 'BMW X5'),
(3, 3, '108514.00', 20, 'BMW 4 Series');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `promo_id` int(11) NOT NULL,
  `nama_promo` varchar(255) DEFAULT NULL,
  `diskon` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`promo_id`, `nama_promo`, `diskon`) VALUES
(1, 'Promo A', '10.00'),
(2, 'Promo B', '15.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`cabang_id`),
  ADD KEY `kota_id` (`kota_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`),
  ADD KEY `cabang_id` (`cabang_id`);

--
-- Indexes for table `kategori_product`
--
ALTER TABLE `kategori_product`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `media_sosial`
--
ALTER TABLE `media_sosial`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `karyawan_id` (`karyawan_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `promo_id` (`promo_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`promo_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cabang`
--
ALTER TABLE `cabang`
  ADD CONSTRAINT `cabang_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`cabang_id`) REFERENCES `cabang` (`cabang_id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`karyawan_id`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `penjualan_ibfk_4` FOREIGN KEY (`promo_id`) REFERENCES `promo` (`promo_id`),
  ADD CONSTRAINT `penjualan_ibfk_5` FOREIGN KEY (`media_id`) REFERENCES `media_sosial` (`media_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_product` (`kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
