-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3434
-- Generation Time: Jun 27, 2024 at 08:19 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_status` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_kode`, `barang_kode_slug`, `barang_kode_count`, `barang_nama`, `barang_harga_beli`, `barang_harga`, `barang_stock`, `barang_tanggal`, `barang_kategori_id`, `kategori_id`, `barang_satuan_id`, `satuan_id`, `barang_deskripsi`, `barang_option_sn`, `barang_status`, `barang_terjual`, `barang_cabang`) VALUES
(2, '123456789', '123456789', 1, 'Acer', '60000', '100000', '19', '26 June 2024 8:35:37 pm', 4, '4', '2', '2', 'A314-54', 0, 3, 1, 0),
(3, 'LED', 'LED', 2, 'LED 14 Inch HD', '360000', '500000', '20', '26 June 2024 9:11:24 pm', 12, '12', '2', '2', 'Baru', 0, 3, 3, 0),
(4, 'LED14', 'LED14', 3, 'LED 14 Inch Slim 30 Pin', '', '950000', '21', '26 June 2024 10:02:08 pm', 12, '12', '2', '2', 'Baru', 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `barang_sn`
--

CREATE TABLE IF NOT EXISTS `barang_sn` (
  `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_sn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_date` varchar(250) NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_count_invoice` int(11) NOT NULL,
  `customer_count_servis` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_tlpn`, `customer_email`, `customer_alamat`, `customer_date`, `customer_create`, `customer_status`, `customer_count_invoice`, `customer_count_servis`, `customer_cabang`) VALUES
(0, 'Customer Umum', '', '', '', '', '', '1', 2, 0, 0),
(22, 'Customer Umum', '', '', '', '', '', '1', 0, 0, 0),
(23, 'Doni Afandi', '085780956485', '', 'Surabaya', '2022-03-01', '01 March 2022 5:34:45 pm', '1', 0, 1, 1),
(24, 'tes', '082299078642', '', 'tes', '2022-03-01', '01 March 2022 5:51:07 pm', '1', 0, 0, 1),
(25, 'Rifqi', '081111111111', '', 'Banteran', '2024-06-26', '26 June 2024 6:58:13 pm', '1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_servis`
--

CREATE TABLE IF NOT EXISTS `data_servis` (
  `ds_id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_nota` text NOT NULL,
  `ds_nota_count` text NOT NULL,
  `ds_customer_id` int(11) NOT NULL,
  `ds_kategori_jenis_barang_servis_id` int(11) NOT NULL,
  `ds_merk` varchar(500) NOT NULL,
  `ds_model_seri` varchar(250) NOT NULL,
  `ds_sn` varchar(250) NOT NULL,
  `ds_imei` varchar(250) NOT NULL,
  `ds_warna` varchar(250) NOT NULL,
  `ds_memory` varchar(250) NOT NULL,
  `ds_kelengkapan` varchar(500) NOT NULL,
  `ds_kerusakan` varchar(500) NOT NULL,
  `ds_kondisi_unit_masuk` varchar(250) NOT NULL,
  `ds_keterangan` text NOT NULL,
  `ds_password` varchar(250) NOT NULL,
  `ds_dp` int(11) NOT NULL,
  `ds_penerima_id` int(11) NOT NULL,
  `ds_terima_date` varchar(250) NOT NULL,
  `ds_terima_date_time` varchar(250) NOT NULL,
  `ds_kondisi_barang` varchar(500) NOT NULL,
  `ds_note` text NOT NULL,
  `ds_total_biaya_jasa` int(11) NOT NULL,
  `ds_total_biaya_sparepart` int(11) NOT NULL,
  `ds_total_biaya_sparepart_beli` int(11) NOT NULL,
  `ds_total` int(11) NOT NULL,
  `ds_total_sisa_bayar` int(11) NOT NULL,
  `ds_teknisi` int(11) NOT NULL,
  `ds_teknisi_disarankan` int(11) NOT NULL,
  `ds_penyerah_id` int(11) NOT NULL,
  `ds_ambil_date` varchar(250) NOT NULL,
  `ds_ambil_date_time` varchar(250) NOT NULL,
  `ds_status` int(11) NOT NULL,
  `ds_garansi` varchar(250) NOT NULL,
  `ds_garansi_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_date` varchar(250) NOT NULL,
  `ds_garansi_komplain_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_penerima_id` int(11) NOT NULL,
  `ds_garansi_komplain_note` text NOT NULL,
  `ds_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ds_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `data_servis`
--

INSERT INTO `data_servis` (`ds_id`, `ds_nota`, `ds_nota_count`, `ds_customer_id`, `ds_kategori_jenis_barang_servis_id`, `ds_merk`, `ds_model_seri`, `ds_sn`, `ds_imei`, `ds_warna`, `ds_memory`, `ds_kelengkapan`, `ds_kerusakan`, `ds_kondisi_unit_masuk`, `ds_keterangan`, `ds_password`, `ds_dp`, `ds_penerima_id`, `ds_terima_date`, `ds_terima_date_time`, `ds_kondisi_barang`, `ds_note`, `ds_total_biaya_jasa`, `ds_total_biaya_sparepart`, `ds_total_biaya_sparepart_beli`, `ds_total`, `ds_total_sisa_bayar`, `ds_teknisi`, `ds_teknisi_disarankan`, `ds_penyerah_id`, `ds_ambil_date`, `ds_ambil_date_time`, `ds_status`, `ds_garansi`, `ds_garansi_date_time`, `ds_garansi_komplain_date`, `ds_garansi_komplain_date_time`, `ds_garansi_komplain_penerima_id`, `ds_garansi_komplain_note`, `ds_cabang`) VALUES
(97, '1', '1', 23, 4, 'Samsung', 'A300', '24242553', '24235235', 'Hitam', '16', 'Btre', 'Flash', 'Nyala', '', '', 0, 3, '2022-03-01', '01 March 2022 5:36:28 pm', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '-', '-', 1, '', '', '', '', 0, '', 1),
(101, '1', '1', 25, 2, 'Acer', 'A314-21', '', '', 'Merah', '', 'Unit, Charger', 'Keyboard', 'Kondisi Nyala', 'Keyboard error', '', 0, 20, '2024-06-26', '26 June 2024 10:08:13 pm', '', '', 0, 0, 0, 0, 0, 20, 0, 0, '-', '-', 4, '', '', '', '', 0, '', 0);

--
-- Triggers `data_servis`
--
DROP TRIGGER IF EXISTS `customer_count_servis`;
DELIMITER //
CREATE TRIGGER `customer_count_servis` AFTER INSERT ON `data_servis`
 FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_servis = customer_count_servis+1
    WHERE customer_id = NEW.ds_customer_id;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `customer_count_servis_delete`;
DELIMITER //
CREATE TRIGGER `customer_count_servis_delete` AFTER DELETE ON `data_servis`
 FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_servis = customer_count_servis - 1
WHERE customer_id = OLD.ds_customer_id;
 END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_sparepart`
--

CREATE TABLE IF NOT EXISTS `data_servis_sparepart` (
  `dss_id` int(11) NOT NULL AUTO_INCREMENT,
  `dss_nama` varchar(500) NOT NULL,
  `dss_harga_beli` varchar(250) NOT NULL,
  `dss_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `dss_qty` int(11) NOT NULL,
  `dss_barang_sn_id` int(11) NOT NULL,
  `dss_barang_option_sn` int(11) NOT NULL,
  `dss_sn` text NOT NULL,
  `dss_id_teknisi` int(11) NOT NULL,
  `dss_nota` varchar(500) NOT NULL,
  `dss_cek` int(11) NOT NULL,
  `dss_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dss_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `data_servis_sparepart`
--

INSERT INTO `data_servis_sparepart` (`dss_id`, `dss_nama`, `dss_harga_beli`, `dss_harga`, `barang_id`, `barang_kode_slug`, `dss_qty`, `dss_barang_sn_id`, `dss_barang_option_sn`, `dss_sn`, `dss_id_teknisi`, `dss_nota`, `dss_cek`, `dss_cabang`) VALUES
(2, 'LED 14 Inch HD', '360000', '500000', 3, 'LED', 1, 0, 0, '0', 20, '3', 32003, 0),
(3, 'LED 14 Inch HD', '360000', '500000', 3, 'LED', 1, 0, 0, '0', 20, '1', 32001, 0);

--
-- Triggers `data_servis_sparepart`
--
DROP TRIGGER IF EXISTS `batal_add_sparepart`;
DELIMITER //
CREATE TRIGGER `batal_add_sparepart` AFTER DELETE ON `data_servis_sparepart`
 FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.dss_qty,
 barang_terjual = barang_terjual - OLD.dss_qty
 WHERE
 barang_id = OLD.barang_id;
 END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_teknisi`
--

CREATE TABLE IF NOT EXISTS `data_servis_teknisi` (
  `dst_id` int(11) NOT NULL AUTO_INCREMENT,
  `dst_id_nota` int(11) NOT NULL,
  `dst_teknisi_id` int(11) NOT NULL,
  `dst_id_servis` int(11) NOT NULL,
  `dst_kategori_servis` int(11) NOT NULL,
  `dst_nama_servis` varchar(500) NOT NULL,
  `ds_biaya_jasa_teknisi` int(11) NOT NULL,
  `ds_biaya_profit` int(11) NOT NULL,
  `dst_servis_biaya` int(11) NOT NULL,
  `dst_pengambilan_date` varchar(250) NOT NULL,
  `dst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dst_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `data_servis_teknisi`
--

INSERT INTO `data_servis_teknisi` (`dst_id`, `dst_id_nota`, `dst_teknisi_id`, `dst_id_servis`, `dst_kategori_servis`, `dst_nama_servis`, `ds_biaya_jasa_teknisi`, `ds_biaya_profit`, `dst_servis_biaya`, `dst_pengambilan_date`, `dst_cabang`) VALUES
(24, 6, 3, 2, 3, 'Servis Lcd', 20000, 30000, 50000, '', 0),
(28, 3, 20, 9, 2, 'Layar LED', 590000, 0, 590000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE IF NOT EXISTS `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ekspedisi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`ekspedisi_id`, `ekspedisi_nama`, `ekspedisi_status`, `ekspedisi_cabang`) VALUES
(2, 'JNE', '1', 0),
(3, 'TIKI', '1', 0),
(4, 'POS', '1', 0),
(5, 'JNE Cabang', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_servis_tekinis`
--

CREATE TABLE IF NOT EXISTS `history_servis_tekinis` (
  `hst_id` int(11) NOT NULL AUTO_INCREMENT,
  `hst_nota` varchar(500) NOT NULL,
  `hst_teknisi` int(11) NOT NULL,
  `hst_status` int(11) NOT NULL,
  `hst_date` varchar(250) NOT NULL,
  `hst_date_time` varchar(250) NOT NULL,
  `hst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hst_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `history_servis_tekinis`
--

INSERT INTO `history_servis_tekinis` (`hst_id`, `hst_nota`, `hst_teknisi`, `hst_status`, `hst_date`, `hst_date_time`, `hst_cabang`) VALUES
(7, '3', 0, 1, '2024-06-26', '26 June 2024 9:17:14 pm', 0),
(8, '1', 20, 4, '2024-06-26', '26 June 2024 10:08:41 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE IF NOT EXISTS `hutang` (
  `hutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hutang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hutang_kembalian`
--

CREATE TABLE IF NOT EXISTS `hutang_kembalian` (
  `hl_id` int(11) NOT NULL AUTO_INCREMENT,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hutang_kembalian`
--

INSERT INTO `hutang_kembalian` (`hl_id`, `hl_invoice`, `hl_invoice_parent`, `hl_date`, `hl_date_time`, `hl_nominal`, `hl_cabang`) VALUES
(1, '643645745890', '20211110430', '2021-11-10', '10 November 2021 6:53:09 pm', '5000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `penjualan_invoice`, `penjualan_invoice_count`, `invoice_tgl`, `invoice_customer`, `invoice_kurir`, `invoice_status_kurir`, `invoice_tipe_transaksi`, `invoice_total_beli`, `invoice_total`, `invoice_ongkir`, `invoice_sub_total`, `invoice_bayar`, `invoice_kembali`, `invoice_kasir`, `invoice_date`, `invoice_date_edit`, `invoice_kasir_edit`, `invoice_total_beli_lama`, `invoice_total_lama`, `invoice_ongkir_lama`, `invoice_sub_total_lama`, `invoice_bayar_lama`, `invoice_kembali_lama`, `invoice_marketplace`, `invoice_ekspedisi`, `invoice_no_resi`, `invoice_date_selesai_kurir`, `invoice_piutang`, `invoice_piutang_dp`, `invoice_piutang_jatuh_tempo`, `invoice_piutang_lunas`, `invoice_cabang`) VALUES
(1, '202406261', '1', '26 June 2024 8:40:43 pm', '25', '0', 1, 0, 60000, 300000, 0, 300000, 300000, 0, '20', '2024-06-26', ' ', ' ', 60000, '300000', 0, 300000, '300000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0),
(2, '202406262', '2', '26 June 2024 9:35:41 pm', '0', '0', 1, 0, 360000, 500000, 0, 500000, 500000, 0, '20', '2024-06-26', '2024-06-26', '20', 360000, '500000', 0, 500000, '500000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0),
(3, '202406263', '3', '26 June 2024 10:03:13 pm', '0', '0', 1, 0, 0, 950000, 0, 950000, 950000, 0, '20', '2024-06-26', ' ', ' ', 0, '950000', 0, 950000, '950000', '0', '', 0, '-', '-', 0, '0', '0', 0, 0);

--
-- Triggers `invoice`
--
DROP TRIGGER IF EXISTS `customer_count_invoice`;
DELIMITER //
CREATE TRIGGER `customer_count_invoice` AFTER INSERT ON `invoice`
 FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_invoice = customer_count_invoice+1
    WHERE customer_id = NEW.invoice_customer;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `customer_count_invoice_delete`;
DELIMITER //
CREATE TRIGGER `customer_count_invoice_delete` AFTER DELETE ON `invoice`
 FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_invoice = customer_count_invoice - 1
WHERE customer_id = OLD.invoice_customer;
 END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian`
--

CREATE TABLE IF NOT EXISTS `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian_number`
--

CREATE TABLE IF NOT EXISTS `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_number_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `invoice_pembelian_number`
--

INSERT INTO `invoice_pembelian_number` (`invoice_pembelian_number_id`, `invoice_pembelian_number_input`, `invoice_pembelian_number_parent`, `invoice_pembelian_number_user`, `invoice_pembelian_number_delete`, `invoice_pembelian_cabang`) VALUES
(9, '1234567876', '2021071912', '3', '202107191230', 0),
(10, '6436457457', '202110233', '3', '20211023330', 0),
(11, '6436457457', '202110233', '3', '20211023331', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`, `kategori_cabang`) VALUES
(2, 'Laptop', '1', 0),
(4, 'Keyboard', '1', 0),
(6, 'Monitor', '1', 0),
(7, 'Mouse', '1', 0),
(8, 'Kabel', '1', 0),
(12, 'Sparepart', '1', 0),
(13, 'Charger', '1', 0),
(14, 'LED', '1', 0),
(15, 'Storage', '1', 0),
(16, 'RAM', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_servis`
--

CREATE TABLE IF NOT EXISTS `kategori_servis` (
  `kategori_servis_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_servis_nama` varchar(500) NOT NULL,
  `kategori_servis_status` int(11) NOT NULL,
  `kategori_servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_servis_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kategori_servis`
--

INSERT INTO `kategori_servis` (`kategori_servis_id`, `kategori_servis_nama`, `kategori_servis_status`, `kategori_servis_cabang`) VALUES
(2, 'Laptop', 1, 0),
(3, 'Komputer', 1, 0),
(4, 'Handphone', 1, 1),
(5, 'Printer', 1, 0),
(6, 'Lain-lain', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`keranjang_id`, `keranjang_nama`, `keranjang_harga_beli`, `keranjang_harga`, `barang_id`, `barang_kode_slug`, `keranjang_qty`, `keranjang_barang_sn_id`, `keranjang_barang_option_sn`, `keranjang_sn`, `keranjang_id_kasir`, `keranjang_id_cek`, `keranjang_cabang`) VALUES
(5, 'TS Hp Samsung', '200000', '450000', 72, '6465475678568', 1, 0, 0, '0', 15, '72150', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_pembelian`
--

CREATE TABLE IF NOT EXISTS `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_transfer`
--

CREATE TABLE IF NOT EXISTS `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `laba_bersih`
--

CREATE TABLE IF NOT EXISTS `laba_bersih` (
  `lb_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL,
  PRIMARY KEY (`lb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `laba_bersih`
--

INSERT INTO `laba_bersih` (`lb_id`, `lb_pendapatan_lain`, `lb_pengeluaran_gaji`, `lb_pengeluaran_listrik`, `lb_pengeluaran_tlpn_internet`, `lb_pengeluaran_perlengkapan_toko`, `lb_pengeluaran_biaya_penyusutan`, `lb_pengeluaran_bensin`, `lb_pengeluaran_tak_terduga`, `lb_pengeluaran_lain`, `lb_cabang`) VALUES
(1, 500000, 400000, 150000, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pembelian_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Triggers `pembelian`
--
DROP TRIGGER IF EXISTS `barang_pembelian`;
DELIMITER //
CREATE TRIGGER `barang_pembelian` AFTER INSERT ON `pembelian`
 FOR EACH ROW BEGIN 
	UPDATE barang SET barang_stock = barang_stock+new.barang_qty
    WHERE barang_id = NEW.barang_id;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tidak_jado`;
DELIMITER //
CREATE TRIGGER `tidak_jado` AFTER DELETE ON `pembelian`
 FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `penjualan_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `penjualan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`penjualan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `penjualan_barang_id`, `barang_id`, `barang_qty`, `keranjang_harga_beli`, `keranjang_harga`, `keranjang_id_kasir`, `penjualan_invoice`, `penjualan_date`, `barang_qty_lama`, `barang_qty_lama_parent`, `barang_option_sn`, `barang_sn_id`, `barang_sn_desc`, `penjualan_cabang`) VALUES
(1, 2, 2, 1, '60000', '300000', 20, '202406261', '2024-06-26', '1', '1', 0, 0, '0', 0),
(2, 3, 3, 1, '360000', '500000', 20, '202406262', '2024-06-26', '1', '1', 0, 0, '0', 0),
(3, 4, 4, 1, '', '950000', 20, '202406263', '2024-06-26', '1', '1', 0, 0, '0', 0);

--
-- Triggers `penjualan`
--
DROP TRIGGER IF EXISTS `batal_beli`;
DELIMITER //
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan`
 FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.barang_qty,
 barang_terjual = barang_terjual - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `penjualan_barang`;
DELIMITER //
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `penjualan`
 FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.barang_qty
    WHERE barang_id = NEW.barang_id;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE IF NOT EXISTS `piutang` (
  `piutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`piutang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `piutang_kembalian`
--

CREATE TABLE IF NOT EXISTS `piutang_kembalian` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `piutang_kembalian`
--

INSERT INTO `piutang_kembalian` (`pl_id`, `pl_invoice`, `pl_date`, `pl_date_time`, `pl_nominal`, `pl_cabang`) VALUES
(1, '202111102', '2021-11-10', '10 November 2021 6:43:57 pm', '1000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE IF NOT EXISTS `retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `retur`
--

INSERT INTO `retur` (`retur_id`, `retur_barang_id`, `retur_invoice`, `retur_admin_id`, `retur_date`, `retur_alasan`, `barang_stock`) VALUES
(12, '5', '202004209', '3', '2020-04-20', ' ', 1),
(13, '5', '202004209', '3', '2020-04-20', ' ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `satuan_id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `satuan_nama`, `satuan_status`, `satuan_cabang`) VALUES
(1, 'KG', '1', 0),
(2, 'PCS', '1', 0),
(3, 'Unit', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE IF NOT EXISTS `servis` (
  `servis_id` int(11) NOT NULL AUTO_INCREMENT,
  `servis_kode` varchar(500) NOT NULL,
  `servis_kode_slug` varchar(500) NOT NULL,
  `servis_nama` varchar(500) NOT NULL,
  `servis_desc` text NOT NULL,
  `servis_biaya_jasa_teknisi` int(11) NOT NULL,
  `servis_biaya_profit` int(11) NOT NULL,
  `servis_biaya` varchar(500) NOT NULL,
  `servis_kategori` int(11) NOT NULL,
  `servis_status` int(11) NOT NULL,
  `servis_date` varchar(250) NOT NULL,
  `servis_date_time` varchar(250) NOT NULL,
  `servis_id_user_create` int(11) NOT NULL,
  `servis_id_user_edit` int(11) NOT NULL,
  `servis_date_edit` varchar(250) NOT NULL,
  `servis_date_time_edit` varchar(250) NOT NULL,
  `servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`servis_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`servis_id`, `servis_kode`, `servis_kode_slug`, `servis_nama`, `servis_desc`, `servis_biaya_jasa_teknisi`, `servis_biaya_profit`, `servis_biaya`, `servis_kategori`, `servis_status`, `servis_date`, `servis_date_time`, `servis_id_user_create`, `servis_id_user_edit`, `servis_date_edit`, `servis_date_time_edit`, `servis_cabang`) VALUES
(2, 'servis-pc-lcd', 'servis-pc-lcd', 'Servis Lcd', 'Servis Lcd', 20000, 30000, '50000', 3, 1, '2021-11-24', '24 November 2021 9:15:57 am', 0, 0, '', '', 0),
(5, 'servis-hp-touch', 'servis-hp-touch', 'Servis Touch Screen', 'Servis Touch', 50000, 60000, '110000', 2, 1, '2022-01-17', '17 January 2022 12:42:54 pm', 3, 3, '2022-02-08', '08 February 2022 11:13:45 pm', 0),
(6, 'servis-flash', 'servis-flash', 'Flash Hp', 'Flash Hp', 60000, 40000, '100000', 2, 1, '2022-02-08', '08 February 2022 11:14:34 pm', 3, 0, '', '', 0),
(7, '6346457457', '6346457457', 'Servis HP Flash', 'Servis HP Flash', 200000, 100000, '300000', 4, 1, '2022-03-01', '01 March 2022 5:35:59 pm', 3, 0, '', '', 1),
(8, 'servis-ganti-keyboard', 'servis-ganti-keyboard', 'Servis Keyboard', 'Servis Keyboard', 325000, 0, '325000', 3, 1, '2024-06-26', '26 June 2024 8:50:23 pm', 20, 0, '', '', 0),
(9, '22', '22', 'Layar LED', 'LED 14 Inch HD', 590000, 0, '590000', 2, 1, '2024-06-26', '26 June 2024 9:09:38 pm', 20, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_nama`, `supplier_wa`, `supplier_alamat`, `supplier_company`, `supplier_status`, `supplier_create`, `supplier_cabang`) VALUES
(2, 'Kaffa', '0895414438314', 'Purwokerto', 'Computer', 1, '26 June 2024 9:42:47 pm', 0),
(4, 'Andalas', '08112568866', 'Purwokerto', 'Computer', 1, '26 June 2024 9:47:19 pm', 0),
(5, 'Warung', '085956726985', '', 'Laptop', 1, '26 June 2024 9:48:41 pm', 0),
(6, 'Bismillah', '085643885634', 'Purwokerto', 'Computer', 1, '26 June 2024 9:50:03 pm', 0),
(7, 'C-YI', '081977442222', 'Harko Mangga Dua', 'Computer', 1, '26 June 2024 9:50:55 pm', 0),
(8, 'Lain', '0', '0', 'lain', 1, '26 June 2024 9:51:32 pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terlaris`
--

CREATE TABLE IF NOT EXISTS `terlaris` (
  `terlaris_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  PRIMARY KEY (`terlaris_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `terlaris`
--

INSERT INTO `terlaris` (`terlaris_id`, `barang_id`, `barang_terjual`) VALUES
(1, 71, 1),
(2, 66, 1),
(3, 69, 1),
(4, 69, 1),
(5, 72, 1),
(6, 66, 2),
(7, 2, 1),
(8, 3, 1),
(9, 4, 1);

--
-- Triggers `terlaris`
--
DROP TRIGGER IF EXISTS `barang_terlaris`;
DELIMITER //
CREATE TRIGGER `barang_terlaris` AFTER INSERT ON `terlaris`
 FOR EACH ROW BEGIN 
	UPDATE barang SET barang_terjual = barang_terjual+new.barang_terjual
    WHERE barang_id = NEW.barang_id;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE IF NOT EXISTS `toko` (
  `toko_id` int(11) NOT NULL AUTO_INCREMENT,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_tipe_print_toko` int(11) NOT NULL,
  `toko_lebar_print_toko` int(11) NOT NULL,
  `toko_tipe_print_servis` int(11) NOT NULL,
  `toko_lebar_print_servis` int(11) NOT NULL,
  `toko_link` varchar(250) NOT NULL,
  `toko_teks_nota_servis_masuk` text NOT NULL,
  `toko_teks_nota_servis_ambil` text NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_cabang` int(11) NOT NULL,
  PRIMARY KEY (`toko_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`toko_id`, `toko_nama`, `toko_kota`, `toko_alamat`, `toko_tlpn`, `toko_wa`, `toko_email`, `toko_tipe_print_toko`, `toko_lebar_print_toko`, `toko_tipe_print_servis`, `toko_lebar_print_servis`, `toko_link`, `toko_teks_nota_servis_masuk`, `toko_teks_nota_servis_ambil`, `toko_status`, `toko_ongkir`, `toko_cabang`) VALUES
(1, 'Citra Komputer', 'Purwokerto', 'Jl. Raden Patah No.370B, Dukuhwaluh, Kec. Kembaran, Kab. Banyumas, Jawa Tengah', '085702089823', '085702089823', 'citrakomputer@gmail.com', 0, 8, 0, 8, '', '1. Nota tanda terima harus dibawa untuk pengambilan servis\r\n2. Laptop yang sudah dikonfirmasi lebih dari 1 bulan maka kerusakan dan kehilangan bukan tanggung  jawab Citra Computer', '1. Garansi berlaku jika tidak ada cacat fisik dan human error\r\n2. Garansi berlaku untuk kerusakan yang sama\r\n3. Garansi tidak berlaku jika nota hilang dan segel rusak', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`transfer_id`, `transfer_ref`, `transfer_count`, `transfer_date`, `transfer_date_time`, `transfer_terima_date`, `transfer_terima_date_time`, `transfer_note`, `transfer_pengirim_cabang`, `transfer_penerima_cabang`, `transfer_id_tipe_keluar`, `transfer_id_tipe_masuk`, `transfer_status`, `transfer_user`, `transfer_user_penerima`, `transfer_cabang`) VALUES
(1, '2021111001', 1, '2021-11-10', '10 November 2021 10:35:35 pm', '2021-11-10', '10 November 2021 10:38:43 pm', 'Transfer Dari Gudang Pusat', 0, 1, 0, 1, 2, 3, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_keluar`
--

CREATE TABLE IF NOT EXISTS `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transfer_produk_keluar`
--

INSERT INTO `transfer_produk_keluar` (`tpk_id`, `tpk_transfer_barang_id`, `tpk_barang_id`, `tpk_kode_slug`, `tpk_qty`, `tpk_ref`, `tpk_date`, `tpk_date_time`, `tpk_barang_option_sn`, `tpk_barang_sn_id`, `tpk_barang_sn_desc`, `tpk_user`, `tpk_pengirim_cabang`, `tpk_penerima_cabang`, `tpk_cabang`) VALUES
(1, 54, 54, 'BRG-001', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0),
(2, 53, 53, '12345678', 2, '2021111001', '2021-11-10', '10 November 2021 10:35:15 pm', 0, 0, '0', 3, 0, 1, 0);

--
-- Triggers `transfer_produk_keluar`
--
DROP TRIGGER IF EXISTS `batal_transfer`;
DELIMITER //
CREATE TRIGGER `batal_transfer` AFTER DELETE ON `transfer_produk_keluar`
 FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.tpk_qty
 WHERE
 barang_id = OLD.tpk_barang_id;
 END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `pengeluaran_barang`;
DELIMITER //
CREATE TRIGGER `pengeluaran_barang` AFTER INSERT ON `transfer_produk_keluar`
 FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.tpk_qty
    WHERE barang_id = NEW.tpk_barang_id;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_masuk`
--

CREATE TABLE IF NOT EXISTS `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Triggers `transfer_produk_masuk`
--
DROP TRIGGER IF EXISTS `tambah_stock_cabang`;
DELIMITER //
CREATE TRIGGER `tambah_stock_cabang` AFTER INSERT ON `transfer_produk_masuk`
 FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock+NEW.tpm_qty
    WHERE barang_kode_slug = NEW.tpm_kode_slug && barang_cabang = NEW.tpm_penerima_cabang;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_select_cabang`
--

CREATE TABLE IF NOT EXISTS `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tsc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_gaji_pokok` int(11) NOT NULL,
  `user_bonus` int(11) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_alamat`, `user_email`, `user_password`, `user_create`, `user_level`, `user_gaji_pokok`, `user_bonus`, `user_status`, `user_cabang`) VALUES
(7, 'Naga Afandi ', '086798890000', 'Surabaya', 'superadmin@senimankoding.com', '550e1bafe077ff0b0b67f4e32f29d751', '16 April 2020 9:31:04 pm', 'super admin', 0, 0, '0', 0),
(20, 'Citra Komputer', '08562607490', 'Jl. Raden Patah No.370B, Dukuhwaluh, Kec. Kembaran, Kab. Banyumas, Jawa Tengah', 'citrakomputer@gmail.com', '58cc91df22ce027233b562d09f549658', '24 June 2024 6:14:24 pm', 'super admin', 0, 0, '1', 0),
(21, 'Admin Toko', '0812345678', 'Jalan', 'admincitrakomputer@gmail.com', '156e2aad0d15c348bb23d861ab26e720', '24 June 2024 11:02:45 pm', 'admin', 0, 0, '1', 0),
(22, 'Kasir', '08123456789', 'Jalan', 'kasir@gmail.com', '156e2aad0d15c348bb23d861ab26e720', '24 June 2024 11:03:14 pm', 'kasir', 0, 0, '1', 0),
(23, 'Teknisi', '08123456789', 'Jalan', 'teknisi@gmail.com', '156e2aad0d15c348bb23d861ab26e720', '24 June 2024 11:03:50 pm', 'teknisi', 0, 0, '1', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
