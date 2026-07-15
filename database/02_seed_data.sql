/*
====================================================
02_seed_data.sql
Project : Event Organizer Database
Description :
Berisi sample data (seed data) untuk menguji relasi
antar tabel pada sistem Event Organizer.
====================================================
*/

-- ==================================================
-- CUSTOMER
-- ==================================================

INSERT INTO customer
(id_customer, nama_customer, penanggung_jawab, kontak_pj, jenis_customer)
VALUES
('C01','PT Maju Jaya Abadi','Budi Santoso','budi@majujaya.co.id','Perusahaan'),
('C02','CV Kreatif Event Organizer','Rina Kartika','rina@gmail.com','Perusahaan'),
('C03','Himpunan Mahasiswa Informatika','Andi Pratama','081234567803','Organisasi');

-- ==================================================
-- SPONSOR
-- ==================================================

INSERT INTO sponsor
(id_sponsor,nama_company,jenis_sponsor,kategori_industri,kontak_sponsor)
VALUES
('S01','Telkom Indonesia','Dana','Telekomunikasi','contact@telkom.co.id'),
('S02','Shopee','Dana','E-Commerce','support@shopee.co.id'),
('S03','Bank BRI','Dana','Perbankan','bri@bank.co.id');

-- ==================================================
-- LOKASI
-- ==================================================

INSERT INTO lokasi
(id_lokasi,nama_lokasi)
VALUES
('L01','Ballroom Grand Maju Jaya Convention Hall'),
('L02','Aula Kreatif Center Jakarta'),
('L03','Auditorium Fakultas Informatika');

-- ==================================================
-- KATEGORI EVENT
-- ==================================================

INSERT INTO kategori_event
(id_kategori,nama_kategori)
VALUES
('KE01','Seminar Bisnis'),
('KE02','Workshop Kreatif'),
('KE03','Seminar Teknologi');

-- ==================================================
-- KELOMPOK PESERTA
-- ==================================================

INSERT INTO kelompok_peserta
(id_peserta,nama_kelompok_peserta,jumlah_anggota)
VALUES
('PST01','BEM Universitas Indonesia',300),
('PST02','Komunitas Data Science Jakarta',150),
('PST03','SMAN 1 Jakarta Team',200);

-- ==================================================
-- EVENT
-- ==================================================

INSERT INTO event
(id_event,nama_event,id_sponsor,uang_sponsor,id_lokasi,id_kategori,id_peserta,id_customer)
VALUES
('E01','Maju Jaya Business Summit 2026','S01',18000000,'L01','KE01','PST01','C01'),
('E02','Creative Workshop Series Jakarta','S03',4000000,'L02','KE02','PST02','C02'),
('E03','Informatics Tech Talk 2026','S01',4000000,'L03','KE03','PST03','C03');

-- ==================================================
-- JADWAL
-- ==================================================

INSERT INTO jadwal
(id_jadwal,hari,tanggal,id_event)
VALUES
('J01','Senin','2026-01-05','E01'),
('J02','Sabtu','2026-01-10','E02'),
('J03','Rabu','2026-01-14','E03');

-- ==================================================
-- TIKET
-- ==================================================

INSERT INTO tiket
(id_tiket,harga_tiket,jumlah_tiket,id_jadwal)
VALUES
('T01',150000,300,'J01'),
('T02',75000,150,'J02'),
('T03',50000,200,'J03');

-- ==================================================
-- PEMBAYARAN
-- ==================================================

INSERT INTO bayar
(id_bayar,jenis_metode_bayar,total_bayar,id_tiket,id_peserta)
VALUES
('B01','Transfer Bank',45000000,'T01','PST01'),
('B02','E-Wallet',11250000,'T02','PST02'),
('B03','Transfer Bank',10000000,'T03','PST03');

-- ==================================================
-- PENDAPATAN
-- ==================================================

INSERT INTO pendapatan
(id_pendapatan,id_event,id_bayar,total_uang_masuk,sumber_pendapatan,bukti_pendapatan,modal_awal)
VALUES
('PD01','E01','B01',83000000,'Tiket','Transfer','Customer'),
('PD02','E02','B02',19750000,'Tiket','E-Struk','Customer'),
('PD03','E03','B03',20500000,'Tiket','Transfer','Customer');

-- ==================================================
-- PENGELUARAN
-- ==================================================

INSERT INTO pengeluaran
(id_pengeluaran,total_pengeluaran,id_event,sumber_pengeluaran)
VALUES
('PNG01',30000000,'E01','Customer'),
('PNG02',8000000,'E02','Customer'),
('PNG03',7000000,'E03','Customer');

-- ==================================================
-- PANITIA
-- ==================================================

INSERT INTO panitia
(id_panitia,nama_panitia,id_customer)
VALUES
('PNT01','Tim Event PT Maju Jaya Abadi','C01'),
('PNT02','Tim Kreatif CV Kreatif Event Organizer','C02'),
('PNT03','Panitia Inti Himpunan Mahasiswa Informatika','C03');

-- ==================================================
-- PELAKSANAAN EVENT
-- ==================================================

INSERT INTO pelaksanaan
(id_pelaksanaan,id_event,id_customer,id_lokasi,id_sponsor,id_kategori,id_panitia,id_tiket,id_bayar,id_peserta,id_pendapatan,id_pengeluaran,profit_event,status)
VALUES
('PK01','E01','C01','L01','S01','KE01','PNT01','T01','B01','PST01','PD01','PNG01',53000000,'Sukses'),
('PK02','E02','C02','L02','S03','KE02','PNT02','T02','B02','PST02','PD02','PNG02',11750000,'Sukses'),
('PK03','E03','C03','L03','S01','KE03','PNT03','T03','B03','PST03','PD03','PNG03',13500000,'Sukses');
