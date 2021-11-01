-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 04:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Fauzein Mulya Warman', 'famuwa', '021203', NULL, NULL),
(6, 'Fiki Naki', 'fiki123', '123321', NULL, NULL),
(22, 'Budi Hartono', 'budi123', '123456', '2021-08-06 03:41:56', '2021-08-06 03:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `gambar`, `kategori`, `tanggal`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Awas Disinformasi! PPKM Darurat untuk Gagalkan Perayaan Hari Raya Idul Adha', '<p>Jakarta, Kominfo &ndash; Beredar video ceramah yang menyebut Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Darurat adalah upaya Pemerintah untuk menggagalkan perayaan Hari Raya Idul Adha.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Memanfaatkan jejaring media online, dalam rekaman video itu pula menyebutkan bahwa pasalnya, PPKM Darurat berlaku hingga 20 Juli 2021.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hasil penelusuran Tim AIS Kementerian Komunikasi dan Informatika menemukan fakta kebijakan PPKM Darurat diambil karena kasus Covid-19 meningkat tajam dan tingkat keterisian rumah sakit hampir 100 persen.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Seperti halnya di Jakarta dengan kasus Covid-19 tertinggi, kondisi rumah sakit sudah kolaps tak mampu lagi menampung pasien Covid-19.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dilansir kontan.co.id, Gubernur DKI Jakarta Anies Baswedan menyampaikan Rumah sakit dan fasilitas kesehatan di DKI Jakarta tak mampu lagi menampung pasien Covid-19 yang jumlahnya terus meningkat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berikut laporan isu hoaks, disinformasi, dan misinformasi yang telah diidentfikas oleh Tim AIS Kementerian Kominfo, Rabu (07/07/2021):</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35535/disinformasi-ppkm-darurat-upaya-pemerintah-untuk-menggagalkan-perayaan-hari-raya-idul-adha/0/laporan_isu_hoaks\">[DISINFORMASI] PPKM Darurat Upaya Pemerintah untuk Menggagalkan Perayaan Hari Raya Idul Adha</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35534/hoaks-gereja-katedral-jakarta-dibuka-untuk-ibadah-saat-ppkm-darurat/0/laporan_isu_hoaks\">[HOAKS] Gereja Katedral Jakarta Dibuka untuk Ibadah saat PPKM Darurat</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35529/hoaks-situs-subsidi-ppkm-darurat-mengatasnamakan-pembagian-bantuan-sosial-tunai-oleh-kemensos/0/laporan_isu_hoaks\">[HOAKS] Situs Subsidi PPKM Darurat Mengatasnamakan Pembagian Bantuan Sosial Tunai oleh Kemensos</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35528/hoaks-situs-pendaftaran-dan-pengecekan-bansos-ppkm-darurat/0/laporan_isu_hoaks\">[HOAKS] Situs Pendaftaran dan Pengecekan Bansos PPKM Darurat</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35533/hoaks-masuk-mojokerto-akan-dites-antigen-dan-darah/0/laporan_isu_hoaks\">[HOAKS] Masuk Mojokerto akan Dites Antigen dan Darah</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35532/disinformasi-muslim-dan-non-muslim-mendapat-vaksin-yang-berbeda-di-malaysia/0/laporan_isu_hoaks\">[DISINFORMASI] Muslim dan Non-Muslim Mendapat Vaksin yang Berbeda di Malaysia</a></li>\r\n	<li><a href=\"https://www.kominfo.go.id/content/detail/35531/disinformasi-video-kerusuhan-di-pasar-gondanglegi-kabupaten-malang/0/laporan_isu_hoaks\">[DISINFORMASI] Video Kerusuhan di Pasar Gondanglegi, Kabupaten Malang</a></li>\r\n</ul>\r\n', '2125868459_PPKM Gagalkan IdulAdha.jpg', 'Umum', '2021-07-15', 'awas-disinformasi-ppkm-darurat-untuk-gagalkan-perayaan-hari-haya-idul-adha', NULL, NULL),
(6, 'Begini Aturan Kemenag Tentang Idul Adha 2021 di Tengah PPKM Mikro Darurat', '<p>Kementerian Agama mengeluarkan aturan pelaksanaan Salat Idul Adha yang jatuh pada 20 Juli 2021 serta penyembelihan qurban di masa PPKM Mikro Darurat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hari Raya&nbsp;<a href=\"https://www.tempo.co/tag/idul-adha\">Idul Adha</a>&nbsp;yang jatuh pada 20 Juli 2021, berlangsung di tengah masa Pemberlakuan Pembatasan Kegiatan Masyarakat Mikro Darurat. PPKM Mikro Darurat dimulai pada 3 Juli dan akan berakhir 20 Juli 2021.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oleh karena itu, Kementerian Agama mengeluarkan aturan pelaksanaan Salat Idul Adha dan prosesi penyembelihan hewan kurban. Hal ini untuk melindungi masyarakat dari persebaran Covid-19.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Aturan itu dirangkum dalam surat edaran nomor 17 tahun 2021 tentang Peniadaan Sementara Peribadatan di tempat Ibadah, Malam Takbiran, Salat Idul Adha, dan Petunjuk Teknis Pelaksanaan Qurban 1442 H/2021 M di Wilayah Pemberlakuan Pembatasan Kegiatan Masyarakat atau PPKM Darurat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Edaran ini mengatur peniadaan sementara kegiatan peribadatan di rumah ibadah yang menghadirkan jemaah di masa PPKM Darurat ini,&rdquo; kata Yaqut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Simak ketentuan yang diatur dalam perayaan idul qurban di tengah PPKM Darurat, berikut:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pelaksanaan malam takbiran Idul Adha:</strong></p>\r\n\r\n<ul>\r\n	<li>Dilaksanakan di masjid dan musholla untuk daerah-daerah yang dinyatakan sebagai zona aman oleh pemerintahan setempat.</li>\r\n	<li>Dilaksanakan maksimal 10% persen dari kapasitas yang ada..</li>\r\n	<li>Dilaksanakan dengan protokol kesehatan secara ketat dan disiplin.</li>\r\n	<li>Pelaksanaan takbir keliling itu mutlak tidak diperbolehkan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pelaksanaan salat Idul Adha:</strong></p>\r\n\r\n<ul>\r\n	<li>Tidak diizinkan menggelar salat Ied di masjid, musholla ataupun di lapangan atau di tempat-tempat ibadah islam yang dikelola di kantor atau di tempat-tempat lain untuk daerah yang masuk dalam aturan PPKM Darurat.</li>\r\n	<li>Zona hijau dan kuning atau daerah yang dinyatakan aman oleh pemerintahan setempat diperbolehkan melaksanakan salat Idul Adha dengan ketentuan maksimal 50 persen dari jumlah kapasitas yang ada.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pelaksanaan Penyembelihan:</strong></p>\r\n\r\n<ol>\r\n	<li>Penyembelihan hewan qurban dilaksanakan sesuai syariat Islam, termasuk kriteria hewan yang disembelih;</li>\r\n	<li>Penyembelihan hewan qurban berlangsung dalam waktu tiga hari, yakni pada tanggal 11, 12 dan 13 Dzulhijjah untuk menghindari kerumunan di lokasi pelaksanaan qurban;</li>\r\n	<li>Pemotongan hewan qurban dilakukan di Rumah Pemotongan Hewan Ruminansia (RPH-R);</li>\r\n	<li>Dalam hal keterbatasan jumlah dan kapasitas RPH-R, pemotongan hewan qurban dapat dilakukan di luar RPH-R dengan ketentuan:\r\n	<ol>\r\n		<li>Penerapan jaga jarak fisik (physical distancing), meliputi:\r\n		<ol>\r\n			<li>Melaksanakan pemotongan hewan qurban di area yang luas sehingga memungkinkan diterapkannya jaga jarak fisik;</li>\r\n			<li>Penyelenggara melarang kehadiran pihak-pihak selain petugas pemotongan hewan qurban;</li>\r\n			<li>Menerapkan jaga jarak fisik antarpetugas pada saat melakukan pemotongan, pengulitan, pencacahan, dan pengemasan daging;</li>\r\n			<li>Pendistribusian daging hewan qurban dilakukan oleh petugas kepada ke tempat tinggal warga yang berhak;</li>\r\n			<li>Petugas yang mendistribusikan daging qurban wajib mengenakan masker rangkap dan sarung tangan untuk meminimalkan kontak fisik dengan penerima.</li>\r\n		</ol>\r\n		</li>\r\n		<li>Penerapan protokol kesehatan dan kebersihan petugas dan pihak yang berkurban:\r\n		<ol>\r\n			<li>Pemeriksaan kesehatan awal yaitu melakukan pengukuran suhu tubuh petugas dan pihak yang berkurban di setiap pintu/jalur masuk tempat penyembelihan dengan alat pengukur suhu tubuh (thermogun);</li>\r\n			<li>Petugas yang menangani penyembelihan, pengulitan, pencacahan daging, tulang, serta jeroan harus dibedakan;</li>\r\n			<li>Setiap petugas yang melakukan penyembelihan, pengulitan, pencacahan, pengemasan, dan pendistribusian daging hewan harus menggunakan masker, pakaian lengan panjang, dan sarung tangan selama di area penyembelihan;</li>\r\n			<li>Penyelenggara hendaklah selalu mengedukasi para petugas agar tidak menyentuh mata, hidung, mulut, dan telinga, serta sering mencuci tangan dengan sabun atau hand sanitizer;</li>\r\n			<li>Petugas menghindari berjabat tangan atau kontak langsung, serta memperhatikan etika batuk/bersin/meludah;</li>\r\n			<li>Petugas yang berada di area penyembelihan harus segera membersihkan diri (mandi) sebelum bertemu anggota keluarga.</li>\r\n		</ol>\r\n		</li>\r\n		<li>Penerapan kebersihan alat:\r\n		<ol>\r\n			<li>Melakukan pembersihan dan disinfeksi seluruh peralatan sebelum dan sesudah digunakan, serta membersihkan area dan peralatan setelah seluruh prosesi penyembelihan hewan kurban selesai dilaksanakan;</li>\r\n			<li>Menerapkan sistem satu orang satu alat. Jika pada kondisi tertentu seorang petugas harus menggunakan alat lain, maka harus dilakukan disinfeksi sebelum digunakan.</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '50895151_Idul-Adha-PPKM.jpg', 'Umum', '2021-07-20', 'begini-aturan-kemenag-tentang-idul-adha-2021-di-tengah-ppkm-mikro-darurat', NULL, NULL),
(7, 'Kejar Tayang Pembelajaran Tatap Muka Terbatas Juli 2021', '<p style=\"text-align:justify\"><strong>Liputan6.com, Jakarta -</strong>&nbsp;Pemerintah mendorong&nbsp;<a href=\"https://www.liputan6.com/tag/pembelajaran-tatap-muka\">pembelajaran tatap muka</a>&nbsp;(<a href=\"https://www.liputan6.com/tag/belajar-tatap-muka\">PTM</a>) terbatas pada Juli 2021. Sampai saat ini baru 30 persen sekolah di seluruh Tanah Air yang menyediakan opsi&nbsp;<a href=\"https://www.liputan6.com/tag/ptm\">PTM terbatas</a>.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Dengan vaksinasi Covid-19 terhadap guru dan tenaga kependidikan diharapkan angkanya bisa jadi 100 persen. Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi (Kemendikbudristek) bahkan telah mewajibkan sekolah-sekolah yang guru dan tenaga pendidikannya telah mendapatkan vaksinasi secara lengkap untuk menyediakan opsi&nbsp;<a href=\"https://www.liputan6.com/news/read/4577905/nadiem-tegaskan-belajar-tatap-muka-terbatas-beda-dengan-pembelajaran-sebelum-pandemi\" title=\"PTM terbatas bagi para siswa\">PTM terbatas bagi para siswa</a>.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Ketua Komisi X DPR RI, Syaiful Huda menyebut, hingga kurang dari satu bulan menjelang Juli, angka vaksinasi Covid-19 terhadap para pendidik tak lebih dari 50 persen.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Dari 5,6 juta guru dan tenaga kependidikan yang harus divaksin, sampai hari ini baru sekitar 1,5 juta guru dan tenaga kependidikan yang baru tervaksin,&quot; ujar Syaiful Huda dalam sebuah acara di Kompleks DPR RI, Jakarta, Kamis (10/6/2021).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Menurut Huda, dengan angka seperti itu, pemerintah seakan kejar tayang untuk melakukan PTM terbatas pada Juli nanti. Pasalnya masih banyak guru dan tenaga kependidikan yang perlu mendapatkan vaksinasi secara lengkap.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Artinya masih ada sepertiga, baru sekitar 30 persen, artinya Kemendikbud dan Satgas Covid harus kejar tayang secepat-cepatnya guru dan tenaga kependidikan divaksin, sebelum bulan Juli, karena ini menjadi syarat wajib,&quot; katanya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Vaksinasi terhadap para guru merupakan syarat wajib pemberlakuan&nbsp;<a href=\"https://www.liputan6.com/tag/ptm\">PTM</a>&nbsp;terbatas. Hal ini mengingat masih banyak dari para guru-guru di sekolah yang berusia rentan. Sehingga memunculkan risiko keterpaparan Covid-19 lebih besar jika mereka tak divaksin.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Karena banyak profil guru kita itu relatif sudah sepuh-sepuh, jadi kalau dia nggak divaksin risikonya besar sekali, risiko besar terhadap guru-guru kita dan risiko terhadap anak-anak peserta didik kita, itu kenapa waktu itu kita sepakat ini harus vaksin,&quot; paparnya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<hr />\r\n<h2 style=\"text-align:justify\">Kesiapan Sekolah</h2>\r\n\r\n<p style=\"text-align:justify\">Huda menerangkan, pekerjaan lainnya bagi pelaksanaan PTM terbatas ialah kesiapan sekolah untuk menerapkan protokol kesehatan selama pembelajaran. Huda mengutip laporan Komisi Perlindungan Anak Indonesia (KPAI) yang menyebut, kesiapan sekolah sudah mencapai sekitar 70 persen.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Syukur Alhamdulillah kemarin Ibu Retno meng-update ke saya hasil survei dari KPAI sudah mencapai 71 persen sekolah sudah siap untuk melaksanakan protokol kesehatan dan menyediakan protokol kesehatan di sekolahnya masing-masing, jadi lompatannya tinggi,&quot; katanya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Huda menganggap angka tersebut cukup baik. Pasalnya mengacu pada laporan KPAI pada enam bulan lalu baru empat dari 12 sekolah yang siap menjalankan protokol kesehatan jika diadakan PTM terbatas.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Namun kata Huda, tugas terberat tetap vaksinasi terhadap para guru dan tenaga kependidikan. Menurutnya jika Kemendikbudristek kukuh untuk PTM terbatas pada Juli nanti, Ia meminta segera selesaikan pekerjaan rumah vaksinasi terhadap pendidik.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Artinya kalau Mas Menteri Nadiem ingin terus target PTM dan target Pak Presiden juga ingin supaya PTM ini bisa berjalan bulan Juli apa pun yang terjadi, berarti harus menuntaskan PR menyangkut soal vaksinasi guru dan tenaga kependidikan. Kalau ini bisa selesai artinya rekomendasi Komisi 10 yang memang tepat merekomendasikan harus PTM, itu insya Allah bisa berjalan dengan baik,&quot; pungkasnya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Siap Kerahkan Sumber Daya untuk Vaksinasi Pendidik Menteri Pendidikan, Kebudayaan, Riset dan Teknologi (Mendikbudristek) Nadiem Makarim sebelumnya mengaku terjadi hambatan dalam proses vaksinasi Covid-19 terhadap pendidik dan tenaga kependidikan. Nadiem menyebut dari awal target selesai pada Juli 2021, hingga kini baru 28 persen guru dan tenaga kependidikan mendapatkan vaksinasi.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Untuk itu, Nadiem memasang target baru hingga akhir Agustus 2021. Demi mempercepat proses vaksinasi kepada para pendidik, Nadiem bakal melibatkan sumber daya dari perguruan tinggi (PT). Utamanya dari sejumlah Fakultas Kesehatan di PT.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Untuk akselerasi Kemendikbudristek akan jadi salah satu operator vaksinasi. Kami merasa ini Kemendikbudristek bertanggung jawab untuk vaksinasi semua guru-guru ini, tanpa ini kita tidak bisa melaksanakan tatap muka (pembelajaran secara tatap muka),&quot; ujar Nadiem dalam Rapat Kerja bersama Komisi X DPR RI, Senin (31/5/2021).</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Menteri berusia 36 tahun itu mengatakan, akan ada 13 ribu tenaga dari PT untuk membantu mempercepat proses vaksinasi terhadap para guru di seluruh Tanah Air.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Dari Fakultas Kesehatan negeri (perguruan tinggi negeri) 28 fakultas terlibat, dari Fakultas Kesehatan swasta ada 21 yang terlibat, ada dari RS pendidikan. Ini semua vaksinator yang akan kita gunakan, kita kerahkan khusus mengakselerasi guru,&quot; katanya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Nadiem mendorng percepatan vaksinsi terhadap para pendidikan dan tenaga kependidikan. Hal ini demi menyongsong PTM di sekolah pada Juli 2021.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Dengan pasokan vaksin yang sering terhambat karena diluar kontrol kita, kita masih bisa memvaksinasi 28 persen dari 5,6 juta pendidik dan tenaga pendidik di Indonesia dengan waktu yg lumayan singkat,&quot; ucapnya.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Dengan hambatan tersebut, Nadiem memasang target vaksinasi terhadap lebih dari 5 juta pendidikan dan tenaga kependidikan bisa tercapai paling telat akhir Agustus 2021. Dari semula sampai Juli 2021.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Jadi kita memang mengejar, jadinya Insya Allah kita masih bisa mencapai target kita, Insya Allah harapannya di akhir bulan Juli atau paling telat akhir bulan Agustus,&quot; ucapnya.</p>\r\n', '462449168_Antusias-Siswa-SD-di-Bekasi-Kembali-Sekolah-Tatap-Muka.jpg', 'Pendidikan', '2021-07-20', 'kejar-tayang-pembelajaran-tatap-muka-terbatas -juli-2021', NULL, NULL),
(8, 'Begini Kata Ganjar Jika PPKM Darurat Diperpanjang oleh Pemerintah', '<p>KOMPAS.com - Gubernur Jawa Tengah Ganjar Pranowo angkat bicara soal wacana perpanjangan Pemberlakuan Pembatasan Kegiatan Masyarakat (Darurat). Menurutnya, perpanjangan PPKM Darurat bisa saja dilakukan, tetapi dengan pendekatan yang lebih lunak dan humanis. Ganjar menjelaskan, warung dan restoran tetap diperbolehkan melayani makan di tempat dengan catatan harus taat protokol kesehatan. PPKM Darurat Jadi Sorotan, Demo Turunkan Jokowi hingga Aksi Pengibaran Bendera Putih Begitu juga dengan sanksi yang akan diterapkan ke pelanggar aturan PPKM Darurat harus tegas.&nbsp; &quot;Boleh saja warung melayani makan di tempat, asal taat prokes. Kalau melanggar dikasih peringatan, ngeyel ya ditutup. Tapi makannya bisa diatur, itu menurut saya lebih soft,&quot; jelasnya. Dapatkan informasi, inspirasi dan insight di email kamu. Daftarkan email &quot;Kalau mereka jualan di trotoar misalnya, ya sudah makan di situ dikasih jarak dengan gambar silang-silang. Menurut saya, itu kompromi yang bagus,&quot; sambungnya. Baca juga: Detik-detik Panther Tabrak Tronton Saat Menyalip di Tuban, 4 Tewas Ganjar akui berat Lihat Foto Gubernur Jawa Tengah, Ganjar Pranowo melakukan kunjungan kerja ke Blora untuk mengecek penanganan Covid-19 di Kabupaten Blora, Kamis (24/6/2021)(KOMPAS.COM/ARIA RUSTA YULI PRADANA) Tak dipungkiri Ganjar, kondisi saat ini memberatkan para pedagang kecil. Dia menyebut soal pedagang pecel di trotoar yang terpaksa harus tutup karena terdampak kebijakan itu. Baca juga: Sulit Dapat Ventilator, Dokter yang Hamil 7 Bulan Meninggal Usai Terpapar Covid-19 &quot;Aku ya ora tegel (saya tidak tega), bagaimana ada orang jualan pecel, yang duduk di situ teman-teman ojol, tukang becak. Kan kasihan, mereka ndak bisa kalau beli makanan kemudian dimakan di tempat lain. Kan mereka orang yang kerjanya keliling,&quot; jelasnya, Senin (19/7/2021).&nbsp;Ganjar: Kalau PPKM Diperpanjang dengan Pola Sama seperti Ini, Masyarakat Berat Ganjar pun berhara, jika PPKM Darurat diperpanjang, harus dilakukan dengan lebih manusiawi dan memikirkan dampak yang ditimbulkan.</p>', '185321816_60e71f9b26401.jpg', 'Pemerintahan', '2021-07-20', 'begini-kata-ganjar-jika-ppkm-darurat-diperpanjang-oleh-pemerintah', NULL, '2021-08-10 04:14:37'),
(44, 'Rumah Oksigen Bantu Tangani Pasien Positif COVID-19', '<p>Jakarta, 3 Agustus 2021.</p>\r\n\r\n<p>Menteri Kesehatan RI Budi Gunadi Sadikin mengapresiasi pendirian Rumah Oksigen Gotong Royong untuk membantu menangani pasien positif COVID-19.</p>\r\n\r\n<p>&#39;&#39;Saya sangat berterima kasih kepada kalangan swasta yang telah bergotong royong ikut terlibat dalam mengatasi pandemi COVID-19 melalui Rumah Oksigen ini,&#39;&#39; katanya.</p>\r\n\r\n<p>Rumah Oksigen Gotong Royong dapat menampung 500 pasien dan mulai beroperasi 2 agustus 2021 ini. Pendirian Rumah Oksigen itu merupakan kontribusi dari pihak swasta antara lain GoTo (perusahaan merger Gojek dan Tokopedia), Kamar Dagang dan Industri (Kadin) Indonesia, PT Aneka Gas Industri (Samator Grup), PT Master Steel, Tripatra Engineering, dan Halodoc.</p>\r\n\r\n<p>Rumah Oksigen berlokasi di Pulo Gadung, Jakarta Timur, berada dekat pabrik suplai oksigen Samator Group. Fasilitas kesehatan itu merupakan tempat isolasi bagi pasien bergejala ringan.</p>\r\n\r\n<p>Pasien positif COVID-19 yang diisolasi di sana dapat dengan mudah mengakses oksigen. Selain oksigen, pasien positif COVID-19 juga akan mendapat obat perawatan COVID-19.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ketua Satgas Kadin Perang melawan Pendemi Joseph Pangalila mengatakan ada beberapa persyaratan bagi pasien positif COVID-19 untuk dapat mengakses Rumah Oksigen antara lain :</p>\r\n\r\n<ol>\r\n	<li>Warga Negara Indonesia (WNI) dan memiliki Kartu Tanda Penduduk (KTP), atau Kartu Indonesia Anak (KIA) bagi pasien yang berusia di bawah 18 tahun;</li>\r\n	<li>Membawa hasil Swab Test PCR/Antigen Positive COVID-19</li>\r\n	<li>Pasien COVID-19 dengan Saturasi Oksigen diatas 90%</li>\r\n	<li>TIDAK memiliki Komorbid atau memiliki komorbid terkontrol, contoh komorbid seperti diabetes/kencing manis, darah tinggi/hipertensi, penyakit ginjal kronis, dll)</li>\r\n	<li>Pasien diimbau untuk membawa pakaian dan perlengkapan pribadi.</li>\r\n</ol>\r\n\r\n<p>&#39;&#39;Rumah Oksigen Gotong Royong tidak menyediakan pakaian, fasilitas binatu atau laundry, dan tidak diperkenankan untuk melakukan aktivitas mencuci pakaian,&#39;&#39; kata Joseph.</p>\r\n\r\n<ol start=\"6\">\r\n	<li>Tidak diperbolehkan merokok dan membawa pemantik api karena dapat menyebabkan ledakan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pasien dikirim oleh Puskesmas atau RS, atau bisa mendaftar melalui halodoc dan akan disaring di Rumah Oksigen</p>', 'rumah oksigen.jpg-1628484745.jpg', 'Kesehatan', '2021-08-09', 'rumah-oksigen-bantu-tangani-pasien-positif-covid-19', '2021-08-09 04:52:25', '2021-08-09 04:52:25'),
(47, 'Luhut: Puncak Kasus COVID-19 RI di 15 Juli, Tak Perlu Jemawa', '<p><strong>Jakarta</strong>&nbsp;-&nbsp; Pemerintah memperpanjang pemberlakuan pembatasan kegiatan masyarakat&nbsp;<a href=\"https://www.detik.com/tag/ppkm-level-4\">(PPKM) level 3-4</a>&nbsp;di Jawa-Bali. Meski begitu Menko Kemaritiman dan Investasi Luhut Panjaitan menyebut puncak Corona telah lewat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Luhut mengatakan puncak kasus terjadi pada 15 Juli 2021. Saat ini disebutkan telah terjadi penurunan hingga 59,6 persen.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Dari data yang didapat, penurunan telah terjadi hingga 59,6 persen dari puncak kasus di tanggal 15 Juli 2021 lalu,&quot; kata Luhut dalam konferensi pers yang disiarkan kanal YouTube Sekretariat Presiden, Senin (9/8/2021).</p>\r\n\r\n<p><br />\r\n&quot;Selain jumlah kasus laju jumlah kematian semakin menurun, meskipun kondisinya masih fluktuatif di beberapa provinsi,&quot; ujar Luhut.Luhut juga mengatakan kasus kasus kematian<a href=\"https://www.detik.com/tag/ppkm-level-4\">&nbsp;COVID-19&nbsp;</a>mengalami penurunan. Namun masih terdapat beberapa provinsi yang mengalami flutuatif.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Kami temukan adanya input data yang merupakan akumulasi kematian sehingga menimbulkan distorsi dalam penilaian,&quot; sambungnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dia menilai masih ada daerah yang memiliki angka kasus COVID-19 tinggi. Daerah ini yaitu Malang Raya dan Bali.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Masih ada masalah di Malang Raya dan juga di Bali. Untuk itu pemerintah akan mengintervensi dua wilayah ini untuk menurunkan laju penambahan kasus,&quot; tuturnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13px\">Luhut meminta masyarakat terus waspada terkait penularan COVID-19. Dia menegaskan pandemi COVID-19 belum selesai.</span>Luhut Minta Tak Jemawa Pandemi Selesai</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Saya ingin ingatkan teman-teman semua, kita semua rakyat Indonesia super hati-hati menghadapi ini. Kita tidak perlu jemawa bahwa ini sudah selesai, masih jauh dari selesai,&quot; kata Luhut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Luhut juga mengungkap hasil studi para pakar. Pandemi COVID-19 disebut masih akan terus berlangsung hingga beberapa tahun ke depan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Tadi hasil studi para pakar-pakar, ahli dunia, 70 persen mereka mengatakan ini kasus masih akan terus beberapa tahun ke depan. Oleh karena itu, gaya hidup kita pasti akan berubah, cara hidup kita harus berubah, dan kita harus bersama-sama menyesuaikan dengan cara baru ini,&quot; kata Luhut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Luhut mengatakan hidup ke depan akan serba digital. Protokol kesehatan juga bakal menjadi hal utama.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Kita ke depan mungkin akan hidup seperti ini, di mana semua akan makin banyak digitalize. Jadi kita akan banyak mengandalkan kartu vaksinasi atau cue card atau nanti masker, cuci tangan dan seterusnya. Jadi semua pembayaran juga orang akan kurangi dengan cash, lanjut juga mungkin handphone. Ini saya kira ini ambil saja hikmahnya,&quot; tutur Luhut.</p>', 'luhut.png-1628563849.png', 'Pemerintahan', '2021-08-10', 'luhut-puncak-kasus-covid-19-ri-di-15-juli-tak-perlu-jemawa', '2021-08-10 02:50:49', '2021-08-10 04:14:10'),
(49, 'Kelakar Valentino Rossi: Batal Pensiun jika Juara Dunia MotoGP 2021', '<p><strong>Padang&nbsp;</strong>-&nbsp;Di&nbsp;<a href=\"https://www.detik.com/tag/motogp-styria-2021\">MotoGP Styria 2021</a>,&nbsp;<a href=\"https://www.detik.com/tag/valentino-rossi\">Valentino Rossi</a>&nbsp;sempat ditanya lagi mengenai keputusannya pensiun. Ia berkelakar bisa batal pensiun jika jadi juara dunia MotoGP 2021.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Jelang balapan di Red Bull Ring, Spielberg, pada MotoGP Styria, The Doctor mengumumkan keputusan untuk pensiun di akhir musim MotoGP 2021 ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Keputusan Valentino Rossi itu memang tak terlalu bikin kaget mengingat usianya juga sudah 42 tahun. Tapi dengan setumpuk pencapaian di dunia grand prix balap motor, dalam kariernya yang memanjang sampai 1996, banyak yang tetap merasa kehilangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mengutip&nbsp;<em>CorseDiMoto</em>, peraih sembilan gelar juara dunia grand prix termasuk tujuh kali di kelas utama itu pun sempat ditanya apa masih mungkin membatalkan keputusannya pensiun selepas MotoGP 2021.&nbsp;<a href=\"https://www.detik.com/tag/valentino-rossi\">Valentino Rossi</a>&nbsp;menjawab dengan gurauan khas dirinya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Jadi jika aku menjadi juara dunia, aku akan balapan lagi tahun depan!&quot; celotehnya dilanjutkan dengam tawa.&quot;Seperti yang sudah aku katakan, semua bergantung pada hasil,&quot; ujar Rossi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Tidak, tidak, kami cuma berharap bisa menampilkan performa bagus dalam balapan-balapan di paruh kedua musim dan kami bisa lebih kompetitif dibandingkan pada paruh pertama lalu.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.detik.com/tag/valentino-rossi\">Valentino Rossi</a>&nbsp;menyudahi MotoGP Styria 2021, seri pertama usai jeda tengah musim, di posisi ke-13. Dari 10 balapan sejauh ini, VR46 baru mampu meraih total 20 poin untuk menempati posisi ke-19 di klasemen MotoGP 2021 untuk sementara. Masih ada 8 seri tersisa.</p>', 'valentino-rossi_169.jpeg-1628564043.jpg', 'Olahraga', '2021-08-09', 'kelakar-valentino-rossi-batal-pensiun-jika-juara-dunia-motogp-2021', '2021-08-10 02:54:03', '2021-08-10 02:54:03'),
(50, 'Ketua Fraksi PKS DPRD DKI Mohammad Arifin Meninggal Dunia', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;&nbsp;<a href=\"https://www.detik.com/tag/ketua-fraksi-pks-dprd-dki\">Ketua Fraksi PKS DPRD DKI</a>&nbsp;Jakarta Mohammad Arifin meninggal dunia. Arifin meninggal dunia karena penyakit kanker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ketua Komisi B DPRD DKI Jakarta Abdul Aziz mengatakan Arifin menjalani perawatan di RS Holistik Purwakarta, Jawa Barat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Kanker. Sejak bulan Ramadhan lalu di RS Holistik Purwakarta,&quot; kata Aziz saat dihubungi, Selasa (10/8/2021).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Jam 10.00 sampai Zuhur disalatkan di Masjid At-Taqwa Tugu Permai. Selesai disalatkan akan langsung dibawa ke pemakaman,&quot; ujarnya.Arifin meninggal dunia pada Selasa (10/8) dini hari pukul 03.00 WIB. Aziz menuturkan jenazah akan dibawa dari Purwakarta menuju Rumah Duka di Koja, Jakarta Utara. Setelahnya, jenazah akan dimakamkan di TPU Budi Dharma, Cilincing.</p>', 'ketua fraksi.jpeg-1628564167.jpg', 'Pemerintahan', '2021-08-10', 'ketua-fraksi-pks-dprd-dki-mohammad-arifin-meninggal-dunia', '2021-08-10 02:56:07', '2021-08-10 04:13:52'),
(51, 'Proyek-proyek Mercusuar Anies Baswedan', '<p><strong>Jakarta</strong>&nbsp;-&nbsp; Sejumlah proyek mercusuar Gubernur DKI Jakarta&nbsp;<a href=\"https://www.detik.com/tag/anies-baswedan\">Anies Baswedan</a>&nbsp;masih berjalan di tengah pandemi, namun ada juga yang terkendala. Salah satu yang digeber adalah peresmian Jakarta International Stadium (JIS).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada November 2020, Pemprov DKI Jakarta mengajukan dana pinjaman untuk pemulihan ekonomi nasional (PEN) ke pemerintah pusat. Dana PEN untuk DKI yang cair pada 2020 sebesar Rp 3,2 triliun. Sementara untuk 2021 cair sebesar Rp 7,8 triliun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Anies menyebut dana sebesar Rp 7,8 triliun yang cair pada 2021 itu digunakan untuk melanjutkan pembangunan infrastruktur pada 2020.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Kegiatan pembangunan infrastruktur pada tahun 2021 merupakan kelanjutan atas pembangunan infrastruktur tahun 2020, sehingga menjadi satu kesatuan pelaksanaan pembangunan,&quot; ujar Anies saat membacakan jawaban atas pemandangan fraksi tentang perubahan APBD 2020 di Rapat Paripurna di gedung DPRD DKI Jakarta, Jalan Kebon Sirih, Jakarta Pusat, Jumat (6/11/2020).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Instruksi Anies yang terbaru, JIS ditargetkan bisa diresmikan pada Desember 2021. Lantas apa saja proyek mercusuar Anies yang masih berjalan di tengah pandemi?Jakarta International Stadium (JIS) menjadi salah satu megaproyek Anies yang jadi sorotan. Pada Juni kemarin, Anies mengawal langsung proses pengangkatan rangka atap JIS.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jakarta International Stadium</strong></p>\r\n\r\n<p>Jakarta International Stadium mulai dibangun sejak akhir 2019. Dana pinjaman untuk pemulihan ekonomi nasional (PEN) 2020 Pemprov DKI disorot lantaran sebagian di antaranya dipakai untuk pembangunan infrastruktur, salah satunya pembangunan JIS. Dana pinjaman PEN yang dipakai untuk membangun Jakarta International Stadium Rp 1,18 triliun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada tahun ini, progres pembangunan JIS mulai signifikan. Anies mengatakan stadion ini bisa digunakan untuk kegiatan keagamaan hingga kegiatan seni.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Anies juga memaparkan bentuk Jakarta International Stadium yang memiliki atap buka-tutup.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Di sisi lain, ini adalah sebuah kota di mana mayoritas penduduknya di sore hari dia harus melaksanakan kewajiban untuk salat Magrib yang waktunya amat pendek. Bisa dibayangkan, melihat di stadion itu kita akan bertemu dengan situasi mayoritas mungkin melakukan jamak, karena pertandingan jam 7, 80 ribu orang, di mana mereka bisa melaksanakan,&quot; ucap Anies, Rabu (28/7/2021).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Dengan adanya stadion buka-tutup atapnya, maka pertandingan itu bisa dilakukan praktis bisa jam berapa saja, karena siang hari pun bisa digunakan, sore hari, waktu kapan saja,&quot; sambungnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Diremsikannya stadion JIS, Desember 2021,&quot; demikian isi Ingub terbaru Anies, seperti dilihat Senin (9/8).Paling baru, Anies menginstruksikan peresmian JIS bisa dilakukan pada Desember 2020. Hal itu termaktub dalam Ingub Nomor 49 Tahun 2021 tentang Penyelesaian Isu Prioritas Daerah Tahun 2021-2022.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Anies meminta dibuat infrastruktur pendukung terkait aktivasi di kawasan JIS. Pertama, Anies ingin ada penambahan stasiun KAI baru di sisi barat dan timur JIS. Pembangunan itu ditargetkan hingga Juni 2022. Kemudian Anies juga menginstruksikan terselesaikannya izin rute tambahan baru KCI Jatinegara-Rajawali-Ancol-Priok.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Target waktu Oktober 2021,&quot; tulis Ingub Anies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terakhir, Anies ingin terbangunnya akses&nbsp;<em>ramp</em>&nbsp;tol ke area JIS. Target waktu yang diinginkan Anies juga pada Juni 2022.</p>', 'proyek-anis-baswedan.jpeg-1628566370.jpg', 'Pemerintahan', '2021-08-10', 'proyek-proyek-mercusuar-anies-baswedan', '2021-08-10 03:32:50', '2021-08-10 04:15:40'),
(52, 'Ganti Nomor HP? Ini Cara Dapat Kuota Internet Gratis Kemendikbud 2021', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Pemerintah melalui Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi (Kemendikbudristek) resmi memperpanjang bantuan kuota data internet gratis hingga November 2021. Adapun bantuan kuota internet tersebut diperuntukkan bagi pelajar dan pendidik, mulai dari jenjang PAUD hingga jenjang Pendidikan Dasar dan Menengah, serta dosen dan mahasiswa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lantas, bagaimana jika berganti nomor ponsel. Apakah tetap bisa mendapatkan bantuan kuota gratis?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Diketahui, bantuan kuota yang diberikan adalah kuota umum, sehingga penerima dapat mengakses seluruh laman internet, kecuali yang diblokir oleh Kementerian Komunikasi dan Informatika dan yang tercantum pada&nbsp;<a href=\"https://kuota-belajar.kemdikbud.go.id/\" target=\"_blank\">kuota-belajar.kemdikbud.go.id</a>.Berdasarkan keterangan resmi di laman covid19.go.id, apabila nomor ponsel berubah atau belum menerima bantuan kuota data internet segera laporkan pada pimpinan/pengelola satuan pendidikan. Nantinya pimpinan atau operator satuan pendidikan akan meneruskannya dengan mengunggah SPTJM untuk nomor baru atau nomor yang berubah di&nbsp;<a href=\"http://vervalponsel.data.kemdikbud.go.id/\" target=\"_blank\">http://vervalponsel.data.kemdikbud.go.id&nbsp;</a>(PAUD/Dikdasmen) atau&nbsp;<a href=\"http://kuotadikti.kemdikbud.go.id/\" target=\"_blank\">http://kuotadikti.kemdikbud.go.id</a>&nbsp;(Dikti).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Jumlah bantuan kuota data internet Kemendikbudristek 2021:</p>\r\n\r\n<ul>\r\n	<li>Peserta Didik Jenjang Pendidikan Dasar dan Menengah sebesar 10GB/bulan</li>\r\n	<li><span style=\"font-size:13px\">Peserta Didik jenjang PAUD sebesar 7GB/bulan</span></li>\r\n	<li>Guru Jenjang PAUD dan Guru Dasar dan Menengah sebesar 12GB/bulan</li>\r\n	<li>Dosen dan Mahasiswa sebesar 15GB/bulan</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk informasi lengkap dan unduh Buku Saku Bantuan Paket Kuota Data Internet Tahun 2021 bisa melalui laman&nbsp;<a href=\"https://kuota-belajar.kemdikbud.go.id/\" target=\"_blank\">https://kuota-belajar.kemdikbud.go.id/</a></p>', 'kuota kemdikbud.jpeg-1628566683.jpg', 'Pendidikan', '2021-08-10', 'ganti-nomor-hp-ini-cara-dapat-kuota-internet-gratis-kemendikbud-2021', '2021-08-10 03:38:03', '2021-08-10 03:38:03'),
(53, 'Membanggakan! Mahasiswa RI Raih 15 Medali di Olimpiade Matematika Dunia', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;Mahasiswa Indonesia berhasil meraih 15 medali di ajang&nbsp;<a href=\"https://www.detik.com/tag/kompetisi-mahasiswa\">International Mathematics Competition (IMC) 2021</a>. Kompetisi ini berlangsung secara daring pada 2-7 Agustus 2021 dengan Bulgaria sebagai tuan rumahnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>IMC merupakan olimpiade internasional bergengsi di bidang matematika yang digelar setiap tahun. Pada tahun ini, IMC diikuti oleh 591 peserta yang berasal dari 54 negara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dilansir dari akun media sosial Pusat Prestasi Nasional (Puspresnas) Kemendikbudristek RI, Indonesia mengirimkan 11 delegasi mahasiswa terbaik yang berasal dari seleksi Kompetisi Nasional MIPA (KNMIPA) tingkat nasional tahun 2020 dan 14 mahasiswa yang berasal dari jalur mandiri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Pusat Prestasi Nasional mengucapkan SELAMAT kepada delegasi Indonesia yang telah meraih prestasi sebanyak 3 emas, 6 perak, dan 6 perunggu. Semoga dapat menjadi motivasi untuk kita semua,&quot; tulis akun Instagram @puspresnas, Senin (9/8/2021).Dalam kompetisi bergengsi tersebut, tim Indonesia berhasil membawa pulang 3 medali emas, 6 perak, dan 6 perunggu. Sehingga, total perolehan medali yang berhasil disabet pada IMC 2021 sebanyak 15 medali.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Daftar Mahasiswa Indonesia yang Meraih Penghargaan di IMC 2021</h3>\r\n\r\n<p><a href=\"https://www.detik.com/tag/mahasiswa\">Mahasiswa</a>&nbsp;yang memenangkan medali di kancah internasional ini terdiri dari berbagai perguruan tinggi di Indonesia, baik institut maupun universitas. Berikut daftarnya:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Medali Emas</strong></p>\r\n\r\n<p>1. Hopein Christofen Tang (Institut Teknologi Bandung)<br />\r\n2. Andry Wijaya (Universitas Indonesia)<br />\r\n3. Muhammad Alif Aqsha (Institut Teknologi Bandung</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Medali Perak</strong></p>\r\n\r\n<p>1. Kelvin Tenata (Universitas Indonesia)<br />\r\n2. Akeyla Pradia Naufal (Institut Teknologi Bandung)<br />\r\n3. Naelufa Syifna W.M. (Universitas Gadjah Mada)<br />\r\n4. Waffiq Maaroja (Universitas Gadjah Mada)<br />\r\n5. Aditya Dwiyanto (Institut Teknologi Bandung)<br />\r\n6. Reynald Saputra (Institut Teknologi Bandung)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Medali Perunggu</strong></p>\r\n\r\n<p>1. Muhammad Reza Ardhana (Institut Pertanian Bogor)<br />\r\n2. Syaifullah Hi Nurdin (Universitas Hasanuddin)<br />\r\n3. Muh. Fadlan (Universitas Gadjah Mada)<br />\r\n4. Alvian Alif H. (Institut Teknologi Sepuluh Nopember)<br />\r\n5. Nabil Mahatir (Universitas Pendidikan Indonesia)<br />\r\n6. Rofiud Darojad (Universitas Negeri Malang)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selain kelima belas medali di atas, 4 mahasiswa lain juga memperoleh penghargaan Honourable Mention. Mereka adalah Garry Kuwanto (Institut Teknologi Bandung), Rizma Yudatama (Universitas Sebelas Maret), Fani Haerul Anam Rofi&#39;I (Universitas Gadjah Mada), dan Bramantya Arya D (Institut Pertanian Bogor).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selamat kepada para pemenang&nbsp;<a href=\"https://www.detik.com/tag/kompetisi-mahasiswa\">IMC 2021</a>!</p>', 'olimpiade mtk dunia.jpeg-1628566850.jpg', 'Pendidikan', '2021-08-10', 'membanggakan-mahasiswa-ri-raih-15-medali-di-olimpiade-matematika-dunia', '2021-08-10 03:40:50', '2021-08-10 03:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `foto`, `tanggal`, `created_at`, `updated_at`) VALUES
(4, 'Peluncuran Kominfo-CSIRT', '1160395938_kominfo launching csir.jpg', '2021-07-15', NULL, NULL),
(5, 'Peringatan Nuzulul Quran 1422 H Kementerian Kominf', '1112670469_perayaan nuzulul quran.jpg', '2021-07-23', NULL, NULL),
(6, 'Upacara Peringatan Hari Kebangkitan Nasional', '437557072_upacara harkitnas.jpg', '2021-07-24', NULL, NULL),
(7, 'Konferensi Pers Penjelasan Gangguan Telekomunikasi', '1020853544_Konferensi Pers.jpg', '2021-07-24', NULL, NULL),
(8, 'Pelajar Digital di DILO Telkom Padang', '735476535_pelajar-digital.png', '2021-07-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_08_04_091541_create_tests_table', 1),
(4, '2021_08_05_022420_add_column_admin', 2),
(5, '2021_08_05_042227_add_column_berita', 3),
(6, '2014_10_12_000000_create_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `slug`, `isi`, `gambar`, `tanggal`, `created_at`, `updated_at`) VALUES
(3, 'Seleksi Pegawai Aparatur Sipil Negara Kementerian Komunikasi dan Informatika Tahun Anggaran 2021', 'seleksi-pegawai-aparatur-sipil-negara-kementerian-komunikasi-dan-informatika-tahun-anggaran-2021', '<p>Berdasarkan Keputusan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Indonesia Nomor 985 Tahun 2021 Tanggal 16 Juni 2021 tentang Penetapan Kebutuhan Pegawai Aparatur Sipil Negara di lingkungan Kementerian Komunikasi dan Informatika Tahun Anggaran 2021, maka Kementerian Komunikasi dan Informatika Republik Indonesia membuka kesempatan kepada Warga Negara Indonesia untuk bergabung menjadi CPNS dan PPPK yang akan ditugaskan di lingkungan Kementerian Kominfo dengan Kualifikasi Pendidikan, Jabatan serta Penempatan yang terdapat pada lampiran pengumuman ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pengumuman lengkap dapat unduh&nbsp;<a href=\"http://web.kominfo.go.id/sites/default/files/users/70/814%20-%20PENGUMUMAN%20Seleksi%20CPNS%20PPPK%20Tahun%20Anggaran%202021.pdf\">disini</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>format surat lamaran, surat pernyataan CPNS, surat pernyataan PPPK silakan unduh&nbsp;<a href=\"https://k-cloud.kominfo.go.id/s/qG98bWx8SdaLCS8\">disini</a></p>\r\n', '933879529_kominfo.jpg', '2021-07-15', NULL, NULL),
(4, 'Penyesuaian Jadwal Tahapan Pelaksanaan Seleksi Calon ASN Tahun 2021', 'penyesuaian-jadwal-tahapan-pelaksanaan-seleksi-calon-asn-tahun-2021', '<p>Dalam rangka memberikan kesempatan yang lebih luas kepada masyarakat untuk mengikuti seleksi Calon ASN Tahun 2021 di lingkungan Kementerian Komunikasi dan Informatika, bersama ini kami sampaikan penyesuaian jadwal tahapan pelaksanaan seleksi Calon ASN sebagaimana dalam pengumuman berikut ini:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Informasi selengkapnya dapat diunduh&nbsp;<a href=\"http://web.kominfo.go.id/sites/default/files/930%20-%20Pengumuman%20Penyesuaian%20Jadwal%20Tahapan%20Pelaksanaan%20Seleksi%20Calon%20ASN%20TA%202021.pdf\">disini</a></p>\r\n', '1731194628_kominfo.jpg', '2021-07-20', NULL, NULL),
(5, 'Hasil Seleksi Program Beasiswa S2 Luar Negeri Tahun 2021', 'hasil-seleksi-program-beasiswa-s2-luar-negeri-tahun-2021', '<p>Panitia Seleksi Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021 mengucapkan terima kasih kepada Saudara/i atas tingginya minat dan partisipasinya pada Program Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021. Hasil seleksi wawancara digunakan sebagai dokumen penguat partisipasi Saudara/i pada Program Seleksi Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021. Keputusan Panitia Seleksi bersifat&nbsp;<strong>final dan tidak dapat diganggu gugat</strong>. Dalam hal Panitia Seleksi di kemudian hari menemukan ketidaktepatan data dan informasi pada dokumen yang disampaikan ke Panitia Seleksi dengan kenyataan, Panitia Seleksi berhak menggugurkan peserta yang telah lulus seleksi Program Beasiswa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan Hasil Rapat Terakhir Tim Panitia Seleksi Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021, dengan ini kami umumkan nama-nama Calon Penerima Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021, sebagai berikut:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Daftar Nama Calon Penerima Beasiswa Luar Negeri</strong></p>\r\n\r\n<p><strong>Program Beasiswa S2 Luar Negeri Kemenkominfo Tahun 2021</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>No</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nama</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Negara (Universitas)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>Arga Dhahana Pramudianto</p>\r\n			</td>\r\n			<td>\r\n			<p>Jepang (The University of Electro-Communications)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>Tihang Wijaya</p>\r\n			</td>\r\n			<td>\r\n			<p>Jepang (The University of Electro-Communications)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>Dedi Gianto</p>\r\n			</td>\r\n			<td>\r\n			<p>India (IIIT &ndash; Bangalore)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>Fauzan Azhim</p>\r\n			</td>\r\n			<td>\r\n			<p>India (IIIT &ndash; Bangalore)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>5</p>\r\n			</td>\r\n			<td>\r\n			<p>Ilham Dary Athallah</p>\r\n			</td>\r\n			<td>\r\n			<p>India (IIIT &ndash; Bangalore)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>6</p>\r\n			</td>\r\n			<td>\r\n			<p>Iyas Abdurrahman</p>\r\n			</td>\r\n			<td>\r\n			<p>India (IIIT &ndash; Bangalore)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>Retariaty Anugrah</p>\r\n			</td>\r\n			<td>\r\n			<p>India (IIIT &ndash; Bangalore)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>Ade Ayu Astuti</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>9</p>\r\n			</td>\r\n			<td>\r\n			<p>Andrew Russel Pangidoan Sinaga</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>10</p>\r\n			</td>\r\n			<td>\r\n			<p>Annissa Noviarny</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>11</p>\r\n			</td>\r\n			<td>\r\n			<p>Freddy Aktif Era Sianturi</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>Pratiwi Nasyanti</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>13</p>\r\n			</td>\r\n			<td>\r\n			<p>Syarifatul Mudawamah</p>\r\n			</td>\r\n			<td>\r\n			<p>RRT (Tsinghua University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p>Alita Wulan Dini</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>15</p>\r\n			</td>\r\n			<td>\r\n			<p>Angga Sanjaya Lingga</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>Feki Pangestu Wijaya</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>17</p>\r\n			</td>\r\n			<td>\r\n			<p>Indra Awal Priyanto</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>Iqbal Hanif</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>19</p>\r\n			</td>\r\n			<td>\r\n			<p>Lugas Winukosekti</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>20</p>\r\n			</td>\r\n			<td>\r\n			<p>Made Nanda Putri Arianti Mahendra</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>21</p>\r\n			</td>\r\n			<td>\r\n			<p>Muhammad Luqman Hakim</p>\r\n			</td>\r\n			<td>\r\n			<p>Hungaria (E&ouml;tv&ouml;s Lor&aacute;nd University)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>22</p>\r\n			</td>\r\n			<td>\r\n			<p>Aldi Doanta Kurnia</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>23</p>\r\n			</td>\r\n			<td>\r\n			<p>Astri Nur Afidah</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>24</p>\r\n			</td>\r\n			<td>\r\n			<p>Carla Isati Octama</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>25</p>\r\n			</td>\r\n			<td>\r\n			<p>Cut Medika Zellatifanny</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>26</p>\r\n			</td>\r\n			<td>\r\n			<p>Edho Aqmal Hakim</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>27</p>\r\n			</td>\r\n			<td>\r\n			<p>Edo Belva Firmansyah</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>28</p>\r\n			</td>\r\n			<td>\r\n			<p>Elverina Mahfiroh Rahmah Hidayati</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>29</p>\r\n			</td>\r\n			<td>\r\n			<p>Ervina Samosir</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>30</p>\r\n			</td>\r\n			<td>\r\n			<p>Haryo Bhawiko</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>31</p>\r\n			</td>\r\n			<td>\r\n			<p>Jabbar Saputra</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>32</p>\r\n			</td>\r\n			<td>\r\n			<p>Muhammad Agus Salim</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>33</p>\r\n			</td>\r\n			<td>\r\n			<p>Putri Aini Zahra</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>34</p>\r\n			</td>\r\n			<td>\r\n			<p>Raka Wicaksana</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>35</p>\r\n			</td>\r\n			<td>\r\n			<p>Reaza Rahmatika</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>Tifani Zata Lini FY</p>\r\n			</td>\r\n			<td>\r\n			<p>Belanda (University of Twente)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nKami mengucapkan selamat kepada para pelamar yang telah dinyatakan lolos seleksi. Tahap selanjutnya yang harus dilakukan oleh calon penerima Program Beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021 adalah:</p>\r\n\r\n<ul>\r\n	<li>untuk tujuan studi Negara Belanda dan Hungaria&nbsp;<strong><u>diwajibkan</u></strong>&nbsp;mendaftar ke perguruan tinggi untuk mendapatkan&nbsp;<em>Letter of Acceptance</em>&nbsp;(LoA) bagi yang belum memiliki&nbsp;<em>Letter of Acceptance</em>&nbsp;(LoA)&nbsp;<strong>paling lambat 15 Desember 2021</strong>&nbsp;untuk permulaan kuliah di bulan Agustus/September 2021 atau Januari/Februari 2022. Apabila sampai dengan batas waktu tersebut calon penerima beasiswa tidak berhasil mendapatkan&nbsp;<em>Letter of Acceptance</em>&nbsp;(LoA), maka dinyatakan gugur sebagai calon penerima beasiswa S2 Luar Negeri Kementerian Komunikasi dan Informatika Tahun 2021;</li>\r\n	<li>tujuan studi Negara RRT dan Jepang, calon penerima beasiswa akan melanjutkan seleksi penerimaan mandiri oleh universitas; dan</li>\r\n	<li>untuk tujuan studi Negara India, tahapan selanjutnya adalah proses verifikasi oleh IIIT &ndash; Bangalore untuk menentukan peserta yang akan dipanggil mengikuti tes secara online oleh pihak IIIT &ndash; Bangalore yang diperkirakan akan dilaksanakan pada awal bulan Juni.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Informasi detail terkait tahapan selanjutnya, akan dikirimkan melalui email masing-masing calon penerima beasiswa.</p>\r\n\r\n<p><strong>Jakarta, 19 Mei 2021</strong><strong>&nbsp;</strong><strong>&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NB:</p>\r\n\r\n<p>Program Beasiswa S2 LN Tahun 2021 Skema Kemenkominfo &ndash; StuNed masih dalam tahap seleksi dan akan diumumkan kemudian&nbsp;</p>\r\n', '719229190_kominfo.jpg', '2021-05-19', NULL, NULL),
(6, 'Nominasi Pemenang Lomba Menulis Surat untuk Kartini Tahun 2021', 'nominasi-pemenang-lomba-menulis-surat-untuk-kartini-tahun-2021', '<p>Panitia Lomba Menulis Surat Untuk Kartini &ldquo;<strong>Ceritaku Tentang Bagaimana Aku Belajar, Bermain dan Berkarya di Era Digital</strong>&rdquo; telah menerima total 581 surat dari 581 pelajar sekolah dasar, sekolah menengah pertama dan sekolah menengah atas dari seluruh Indonesia. Dengan rincian 171 surat dari kategori SD, 200 kategori SMP dan 2010 kategori SMA.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan penilaian yang berlangsung hari Senin (19/04/2021) di Jakarta, Dewan Juri yang terdiri dari Sekretaris Jenderal Kementerian Komunikasi dan Informatika, Mira Tayyiba; Pemimpin Redaksi Bisnis Indonesia, Maria Y. Benyamin; dan Penulis, Pegiat Literasi, Konsultan Komunikasi dan Kreatif, Maman Suherman; ditetapkan 20 besar untuk masing-masing kategori sebagai berikut:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kategori Sekolah Dasar</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://web.kominfo.go.id/sites/default/files/users/4896/2%20kominfo-lomba-surat-kartini-SD%2020%20nominasi.jpg\" style=\"height:1200px; width:960px\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kategori Sekolah Menengah Pertama</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://web.kominfo.go.id/sites/default/files/users/4896/3%20kominfo-lomba-surat-kartini-SMP%2020%20nominasi.jpg\" style=\"height:1200px; width:960px\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kategori Sekolah Menengah Atas</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://web.kominfo.go.id/sites/default/files/users/4896/4%20kominfo-lomba-surat-kartini-SMA%2020%20nominasi.jpg\" style=\"height:1200px; width:960px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pengumuman pemenang masing-masing kategori sekaligus penganugerahan akan berlangsung pada Hari Rabu (21/04/2021) Pukul 15:30 WIB s.d. selesai dan dapat disaksikan melalui&nbsp;<a href=\"https://www.kominfo.go.id/content/detail/33979/nominasi-pemenang-lomba-menulis-surat-untuk-kartini-tahun-2021/0/komin.fo/LombaKartini2021\">https:komin.fo/LombaKartini2021</a></p>\r\n', '864969106_lomba-surat-kartini.jpg', '2021-07-20', NULL, NULL),
(13, 'Hasil Seleksi Administrasi Calon Aparatur Sipil Negara di Lingkungan Kementerian Komunikasi dan Informatika Tahun Anggaran 2021', 'hasil-seleksi-administrasi-calon-aparatur-sipil-negara-di-lingkungan-kementerian-komunikasi-dan-informatika-tahun-anggaran-2021', '<p>Memperhatikan Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 27 Tahun 2021 tentang Pengadaan Pegawai Negeri Sipil dan Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 29 Tahun 2021 tentang Pengadaan PPPK untuk Jabatan Fungsional serta proses verifikasi berkas lamaran secara online yang telah dilakukan oleh panitia seleksi CASN Kementerian Komunikasi dan Informatika tahun anggaran 2021, maka bersama ini disampaikan daftar pelamar yang lulus seleksi administrasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://web.kominfo.go.id/sites/default/files/users/70/1020_PENGUMUMAN%20HASIL%20SELEKSI%20ADMINISTRASI%20CASN%20KOMINFO%202021.pdf\" target=\"_blank\">Unduh daftar pelamar yang lulus seleksi administrasi disini</a></p>', 'kominfo.jpg-1628503001.jpg', '2021-08-09', '2021-08-09 09:56:41', '2021-08-09 09:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`id`, `nama`, `deskripsi`, `foto`, `created_at`, `updated_at`) VALUES
(2, 'Ir. YEFLIN LUANDRI. MSi', '<p><span style=\"color:#e74c3c\"><strong>Ir. YEFLIN LUANDRI.</strong></span> MSi itulah nama lengkap pria berkaca mata plus 1,25 ini, dimana sehari-harinya beliau mengurusi masalah komunikasi dan informatika di Sumatera Barat, tepatnya sebagai Kepala Dinas Komunikasi dan Informatika Pemerintah Provinsi Sumatera Barat yang berkantor di Jalan Pramuka no. 12 Padang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ketika tim sumbarprov.go.id menemui beliau di ruang kerjanya, kebetulan pak Yeflin sedang memeriksa beberapa buah map yang telah menumpuk di meja kerjanya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ternyata suami dokter Ermawati. SpOg ini lahir di Banjarmasin Kalimantan Selatan 24 Agustus 1961 dan semenjak TK, SD dan SMP di Bogor. Bahkan setelah tamat SMP N 1 Bogor beliau melanjutkan ke Sekolah Usaha Perikanan Menengah Atas (SUPMA) Negeri Bogor tamat tahun 1981.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bapak dari tiga putra ini mengawali karier sebagai PNS pada tahun 1981 setelah tamat dari SUPMA Bogor dan di tempatkan di Dinas Perikanan Provinsi Jambi dan tahun 1983 pindah ke Dinas Perikanan Provinsi Sumatera Barat. Ketika dinas di Sumatera Barat beliau melanjutkan pendidikan strata satu (S1) di Fakultas Perikanan Universitas Bung Hatta jurusan Budi Daya Perikanan. Menuntut ilmu menurut pak Yeflin adalah wajib, karena agama kita juga mengatakan &quot;tuntutlah ilmu dari ayunan sampai liang kubur&quot; maka pak Yeflin juga melanjutkan strata dua di Pengembangan Wilayah Pedesaan (PWD) Pasca Sarjana Universitas Andalas Padang, maka lengkaplah nama beliau menjadi Ir. Yeflin Luandri. MSi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berbicara masalah disiplin, mantan Kepala Dinas Perikanan dan Kelautan Kabupaten Pasaman Barat ini mengatakan harus dimulai dari diri sendiri dan terus di keluarga, tidak mungkin kita bicara disiplin untuk orang lain sementara diri sendiri dan keluarga kita tida bisa menerapkan disiplin tersebut. Berkat disiplin inilah beliau dapat menjadikan dua putranya menjadi dokter spesialis dan si bungsu sedang menempuh pendidikan di SMA Don Bosco Padang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berkat disiplin ini pulalah beliau meniti karier mulai dari golongan dua sampai golongan empat, sekarang beliau sudah berpangkat Pembina Madya IV. D dan pensiun nanti dengan pangkat tertinggi Pembina Utama IV. E.</p>\r\n\r\n<p><br />\r\nMantan kepala BAKORLUH Sumbar ini berpesan kepada seluruh ASN dan khususnya kepada ASN yang ada di Dinas KOMINFO Sumbar agar bekerja dengan rajin dan sungguh-sungguh dengan penuh keikhlasan, jangan cepat puas dengan apa yang diperoleh, disiplin dalam bekerja, pandai membagi waktu, tingkatkan ilmu pengetahuan dan keahlian, nikmati hasil pekerjaan dengan baik, berdoa dan bersyukur kepada Allah. SWT agar diberi rezeki yang halal dan berkah.</p>\r\n\r\n<p>&nbsp;</p>', '2081050969_pimpinan kominfo.jpg', NULL, '2021-08-09 07:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(5) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `isi`, `created_at`, `updated_at`) VALUES
(2, '<p>Sesuai Undang-Undang Nomor 39&nbsp;Tahun 2008 tentang Kementerian Negara, Kementerian Kominfo merupakan&nbsp;perangkat Pemerintah Republik Indonesia ini membidangi urusan&nbsp;yang ruang lingkupnya disebutkan dalam Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, yaitu informasi dan komunikasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kementerian Komunikasi dan Informatika mempunyai tugas menyelenggarakan urusan pemerintahan di bidang komunikasi dan informatika untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.&nbsp;Kementerian Kominfo dipimpin oleh seorang Menteri Komunikasi dan Informatika (Menkominfo) yang sejak tanggal 23 Oktober 2019 dijabat oleh&nbsp;<strong>Johnny Gerard Plate</strong>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>A. Bermula dari Deppen</strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kementerian Komunikasi dan Informatika, sebelumnya bernama &quot;Departemen Penerangan&quot; (1945-1999), &quot;Kementerian Negara Komunikasi dan Informasi&quot; (2001-2005), dan Departemen Komunikasi dan Informatika (Depkominfo) (2005-2009).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Setelah proklamasi kemerdekaan dibentuk Lembaga Penerangan yang secara fungsional menjalankan kebijakan, pola dan pedoman penerangan dengan tujuan (1) membela dan mempertahankan kemerdekaan, (2) mengajak rakyat agar turut serta mempertahankan dan mengisi kemerdekaan serta (3) memperkenalkan Republik Indonesia di dan ke luar negeri.&nbsp;&nbsp;Selama periode 1959-1965, sesuai Haluan Pembangunan Nasional sebagai ketetapan MPRS, Departemen Penerangan dibentuk untuk menyelenggarakan penerangan melalui media penerangan antara lain radio, film,&nbsp;<em>toestel</em>&nbsp;dan foto, percetakan, kendaraan, mesin stensil, dan mesin ketik.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mulai tahun 1966, salah satu tugas pokok organisasi penerangan adalah mengarahkan pendapat umum agar terbentuk dukungan, kontrol dan pratisipasi sosial&nbsp;yang positif terhadap pelaksanaan kebijaksanaan pemerintah, selain untuk penerangan ke dalam dan luar negeri. Pada masa itu pengorganisasian ke dalam dilakukan agar Departemen Penerangan berfungsi menjadi Juru Bicara Pemerintah. Tanggal 15 September 1967 wewenang penerangan luar negeri (Penlugri) yang sejak 1959 dipegang Departemen Luar Negeri RI dialihkan kembali pengelolaannya kepada Departemen Penerangan.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tahun 1971, untuk meningkatkan efisiensi dan efektivitas&nbsp;sarana media massa, dikembangkan sistem komunikasi terintegrasi&nbsp;melalui koordinasi, integrasi dan sinergi antarunsur-unsur penerangan pemerintah. Dibentuklah lembaga antara lain Badan Koordinasi Kehumasan Pemerintah (BAKOHUMAS) dan Badan Koordinasi Penerangan (BAKOPEN).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Di tingkat daerah, dibentuk jawatan penerangan provinsi, kantor penerangan kabupaten dan juru penerang di tingkat kecamatan. Di kabupaten dan kota dibentuk Pusat Penerangan Masyarakat (PUSPENMAS) dengan kegiatan utama penerangan antar pribadi didukung sarana penerangan di daerah seperti: radio, televisi, film penerangan, pers penerbitan, pameran dan pertunjukkan rakyat serta diskusi kerja.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://web.kominfo.go.id/sites/default/files/users/4896/kominfo-sejarah-lembaga.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>B. Masa Reformasi</strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada awal masa reformasi, tugas dan fungsi Departemen Penerangan tidak banyak berubah. Kelembagaan penerangan dipertahankan mulai dari tingkat pusat sampai provinsi dengan nama kantor wilayah departemen penerangan dan biro humas provinsi.&nbsp;&nbsp;Pasca pemberlakuan Undang-undang Nomor 22 Tahun 1999 tentang Pemerintahan Daerah, terjadi&nbsp;&nbsp;reposisi terhadap perangkat daerah sesuai kepentingan daerah. Kantor penerangan di bawah koordinasi pemerintah provinsi, kabupaten dan kota.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sesuai dengan Kepres 153 Tahun 1999 dibentuk Badan Informasi dan Komunikasi Nasional (BIKN) di tingkat pusat, sedang di tingkat provinsi; kabupaten dan kota. Setahun setelah pembubaran Departemen Penerangan, dibentuk Lembaga Informasi Nasional (LIN), yang kemudian diubah lagi statusnya menjadi Kementerian Negara Komunikasi dan Informasi (Kemeneg Kominfo).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selanjutnya, tugas layanan informasi publik diserahkan kepada Menteri Negara Komunikasi dan Informasi. Sedang BIKN berubah menjadi Lembaga Informasi Nasional dan bertanggung jawab kepada Menteri Komunikasi dan Informasi.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sejak tahun 2005, terjadi perubahan dari Kementerian Negara Komunikasi dan Informasi menjadi Departemen Komunikasi dan Informatika. Sesuai dengan Peraturan Presiden Nomor 9 Tahun 2005, dilakukan&nbsp;&nbsp;integrasi Kementerian Negara Komunikasi dan Informasi;&nbsp;&nbsp;Lembaga Informasi Nasional,&nbsp;&nbsp;dan Direktorat Jenderal Pos dan Telekomunikasi.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Salah satu fungsi penting Departemen Kominfo yang berkaitan dengan informasi adalah penyebarluasan informasi nasional dengan menciptakan keterbukaan akses informasi dan membangun serta mengembangkan infrastruktur telekomunikasi guna kepentingan seluruh warga negara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Akhir tahun 2010 lalu, lembaga Kementerian Komunikasi dan Informatika menyempurnakan penataan organisasi. Paradigma baru kebijakan komunikasi menempatkan informasi sebagai bagian kebutuhan keseharian masyarakat. Fungsi informasi dikembangkan pada nilai tambah ekonomi, bukan sekadar &#39;penerangan&#39;, namun lebih dukungan komunikasi strategis untuk membangun integrasi nasional dengan baik.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://web.kominfo.go.id/sites/default/files/users/12/web%20kominfo%20masa%20ke%20masa.png\" style=\"height:493px; width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>C. Transformasi Digital</strong></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dinamika teknologi informasi dan perkembangan ekonomi digital membuat Kementerian Komunikasi dan Informatika fokus untuk melakukan percepatan pemerataan infrastruktur digital berupa akses telekomunikasi dan jaringan internet. Selain terjadi perubahan nomenklatur,&nbsp;pada akhir tahun 2006, Kementerian Kominfo&nbsp;menerapkan pola pengelolaan keuangan badan layanan umum berdasarkan Keputusan Menteri Keuangan Nomor: 1006/KMK.05/2006 tentang Penetapan Balai Telekomunikasi dan Informatika Perdesaan (BTIP).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Seiring dengan pesatnya perkembangan di bidang Teknologi Informasi dan Komunikasi (TIK) dan tuntutan akan ketersediaan layanan TIK di seluruh lapisan masyarakat, maka BTIP bertransformasi menjadi Balai Penyedia dan Pengelola Pembiayaan Telekomunikasi dan Informatika (BP3TI) pada tanggal 19 November 2010.&nbsp;Sejak Agustus 2017, Menteri Komunikasi dan Informatika mencanangkan nama baru bagi BP3TI menjadi BAKTI. Lembaga itu mempunyai tugas melaksanakan pengelolaan pembiayaan Kewajiban Pelayanan Universal dan penyediaan infrastruktur dan layanan telekomunikasi dan informatika.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tugas dan fungsi utama Kementerian Komunikasi dan Informatika adalah merumuskan kebijakan&nbsp;&nbsp;nasional, kebijakan pelaksanaan, dan kebijakan teknis di bidang komunikasi dan informatika yang meliputi pos, telekomunikasi, penyiaran, teknologi informasi dan komunikasi, layanan multimedia dan desiminasi informasi.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><em><span style=\"font-size:11px\">Sumber Tulisan</span></em></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11px\">Depkominfo. 2009. Rencana Strategis Departemen Komunikasi dan Informatika Tahun 2009-2015.</span></li>\r\n	<li><span style=\"font-size:11px\">Depkominfo. 2010. Laporan Akuntabilitas Kinerja Departemen Komunikasi dan Informatika Tahun 2009.&nbsp;</span></li>\r\n	<li><span style=\"font-size:11px\">Depkominfo. 2010.&nbsp;<em>Kilas Balik 2004-2009 Departemen Komunikasi dan Informatika. Kemajuan Sinergi dan Keadaban Menuju Masyarakat Informasi.</em>&nbsp;Jakarta: Depkominfo</span></li>\r\n	<li><span style=\"font-size:11px\">Kementerian Komunikasi dan Informatika. 2011.&nbsp;<em>Indonesia Connected</em>. Jakarta: Kementerian Kominfo.&nbsp;</span></li>\r\n	<li><span style=\"font-size:11px\">Lembaga Informasi Nasional dan Yayasan Arena Komunikasi. 2003. &ldquo;Studi Kelayakan tentang Pembangunan Unit Pelayanan Informasi Terpadu di Daerah Rawan Konflik dan Daerah Terpencil&rdquo;. Jakarta.</span></li>\r\n	<li><span style=\"font-size:11px\">Soekirman, Djoko, dkk (Tim Penulisan). 1984.&nbsp;<em>Sejarah Departemen Penerangan Republik Indonesia.</em>&nbsp;Jakarta: Proyek Penelitian dan Pengembangan Penerangan Departemen Penerangan Kerjasama dengan Fakultas Sastra Universitas Gadjah Mada.</span></li>\r\n</ul>', NULL, '2021-08-09 09:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fuzen', 'admin@gmail.com', NULL, '$2y$10$.f5MRti3i0PFDiRO/o3keerNK0Xm9JHYjpEJofqwCo0a.RfxmaE2W', 'admin', NULL, NULL, NULL),
(2, 'Fauzein Mulya Warman', 'fauzeinmw2@gmail.com', NULL, '$2y$10$Nyqit541nCUwpfXV7slvE.ssQQfDbA2SsRTFnT9C93j9LPFhzBSHa', 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(2, '<p>&quot; Terwujudnya Pelayanan Informasi dan Komunikasi Publik Berbasis Teknologi Informatika Mendukung Sumatera Barat yang Madani dan Sejahtera &quot;</p>', '<ol>\r\n	<li>Meningkatkan Penyediaan dan Pengelolaan Informasi dan Komunikasi Publik</li>\r\n	<li>Meningkatkan Pengelolaan Aplikasi Informatika</li>\r\n	<li>Meningkatkan Pengelolaan Persandian untuk Pengamanan Informasi Pemerintah Daerah</li>\r\n	<li>Menyelenggarakan Statistik Sektoral di Lingkup Provinsi</li>\r\n	<li>Meningkatkan Tata Kelola Organisasi</li>\r\n</ol>', NULL, '2021-08-06 09:48:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
