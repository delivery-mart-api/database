-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2023 at 11:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch_product_stock`
--

CREATE TABLE `branch_product_stock` (
  `id` int(5) UNSIGNED NOT NULL,
  `branch_id` int(5) UNSIGNED NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `branch_product_stock`
--

INSERT INTO `branch_product_stock` (`id`, `branch_id`, `product_id`, `stok`) VALUES
(1, 2, 1, 25),
(2, 2, 2, 18),
(3, 2, 3, 22),
(4, 2, 4, 30),
(5, 2, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-12-13-044954', 'App\\Database\\Migrations\\CreateProductsTable', 'default', 'App', 1702980933, 1),
(2, '2023-12-16-114941', 'App\\Database\\Migrations\\CreateUserTable', 'default', 'App', 1702980933, 1),
(3, '2023-12-18-130404', 'App\\Database\\Migrations\\CreateBranchProductStockTable', 'default', 'App', 1702980933, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(8) NOT NULL,
  `berat` int(5) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_by` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(5) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `kategori`, `harga`, `berat`, `gambar`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Sabun', 'Peralatan Mandi', 10000, 200, 'https://utfs.io/f/819422c2-88fa-4d95-8ba2-a464ae6de319-s71w0e.png', 0, '2023-12-19 10:15:35', NULL, NULL),
(2, 'Air Mineral', 'Minuman', 15000, 300, 'https://utfs.io/f/36fde6e6-d4f6-42f0-bf83-562d4bffb10f-chvn70.png', 0, '2023-12-19 10:15:35', NULL, NULL),
(3, 'Daging Sapi', 'Daging', 20000, 350, 'https://utfs.io/f/ee0df9c4-093f-45a4-9b6b-d78d2c5a337a-1zqvf.png', 0, '2023-12-19 10:15:35', NULL, NULL),
(4, 'Wortel', 'Sayuran', 12000, 400, 'https://utfs.io/f/337cdfc5-eddf-46bf-8af1-241a2ad6dba3-lwdt0h.png', 0, '2023-12-19 10:15:35', NULL, NULL),
(5, 'Apel', 'Buah', 18000, 490, 'https://utfs.io/f/b05b0e03-3ea8-4d4f-82b8-332c89dc2dc7-kxp3xd.png', 0, '2023-12-19 10:15:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(80) NOT NULL,
  `role` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'admin', '2023-12-19 10:15:37'),
(2, 'indoapril', 'indoapril', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'branch', '2023-12-19 10:15:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch_product_stock`
--
ALTER TABLE `branch_product_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_product_stock_branch_id_foreign` (`branch_id`),
  ADD KEY `branch_product_stock_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch_product_stock`
--
ALTER TABLE `branch_product_stock`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_product_stock`
--
ALTER TABLE `branch_product_stock`
  ADD CONSTRAINT `branch_product_stock_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branch_product_stock_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
