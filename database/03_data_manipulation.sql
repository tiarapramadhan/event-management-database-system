/*
====================================================
03_data_manipulation.sql
----------------------------------------------------
Data Manipulation Language (DML)

Berisi contoh operasi manipulasi data pada database,
meliputi:

- INSERT
- UPDATE
- DELETE
- ALTER TABLE
- TRUNCATE

Seluruh query di bawah merupakan contoh yang digunakan
selama proses pengembangan database Event Organizer.
====================================================
*/

----------------------------------------------------
-- ALTER TABLE
----------------------------------------------------

-- Mengubah nama tabel penyelenggara menjadi customer
ALTER TABLE penyelenggara
RENAME TO customer;

-- Mengubah nama kolom foreign key pada tabel pelaksanaan
ALTER TABLE pelaksanaan
RENAME COLUMN id_penyelenggara TO id_customer;

-- Menghapus foreign key lama
ALTER TABLE pelaksanaan
DROP CONSTRAINT fk_penyelenggara;

-- Menambahkan foreign key baru
ALTER TABLE pelaksanaan
ADD CONSTRAINT fk_customer
FOREIGN KEY (id_customer)
REFERENCES customer(id_customer);

-- Mengubah nama kolom pada tabel customer
ALTER TABLE customer
RENAME COLUMN id_penyelenggara TO id_customer;

ALTER TABLE customer
RENAME COLUMN nama_penyelenggara TO nama_customer;

-- Menambahkan atribut customer
ALTER TABLE customer
ADD COLUMN penanggung_jawab VARCHAR(150);

ALTER TABLE customer
ADD COLUMN kontak_pj VARCHAR(150);

ALTER TABLE customer
ADD COLUMN jenis_customer VARCHAR(150);

-- Menambahkan atribut sumber pengeluaran
ALTER TABLE pengeluaran
ADD COLUMN sumber_pengeluaran VARCHAR(150);

-- Menambahkan atribut pendapatan
ALTER TABLE pendapatan
ADD COLUMN sumber_pendapatan VARCHAR(150),
ADD COLUMN bukti_pendapatan VARCHAR(150),
ADD COLUMN modal_awal VARCHAR(150);

----------------------------------------------------
-- INSERT
----------------------------------------------------

-- Contoh penambahan data customer
INSERT INTO customer (
    id_customer,
    nama_customer,
    penanggung_jawab,
    kontak_pj,
    jenis_customer
)
VALUES
(
    'C01',
    'PT Maju Jaya Abadi',
    'Budi Santoso',
    'budi@majujaya.co.id',
    'Perusahaan'
);

-- Contoh penambahan data event
INSERT INTO event (
    id_event,
    nama_event,
    id_sponsor,
    uang_sponsor,
    id_lokasi,
    id_kategori,
    id_peserta,
    id_customer
)
VALUES
(
    'E01',
    'Business Summit 2026',
    'S01',
    18000000,
    'L01',
    'KE01',
    'PST01',
    'C01'
);

----------------------------------------------------
-- UPDATE
----------------------------------------------------

-- Mengubah nama event
UPDATE event
SET
    nama_event = 'Creativa Campus Fest 2026',
    uang_sponsor = 3500000
WHERE id_event = 'E05';

-- Mengubah data pembayaran
UPDATE bayar
SET
    jenis_metode_bayar = 'Transfer Bank',
    total_bayar = 15000000
WHERE id_bayar = 'B09';

-- Mengubah data sponsor
UPDATE sponsor
SET
    nama_company = 'POS_MALAYSIA',
    kontak_sponsor = 'POSMALAYA.my'
WHERE id_sponsor = 'S29';

----------------------------------------------------
-- DELETE
----------------------------------------------------

-- Menghapus data pelaksanaan tertentu
DELETE FROM pelaksanaan
WHERE id_pelaksanaan = 'PK50';

-- Menghapus lokasi berdasarkan nama
DELETE FROM lokasi
WHERE nama_lokasi LIKE '%Innovation%';

----------------------------------------------------
-- TRUNCATE
----------------------------------------------------

-- Menghapus seluruh data pelaksanaan
TRUNCATE TABLE pelaksanaan
RESTART IDENTITY CASCADE;

-- Menghapus seluruh data panitia
TRUNCATE TABLE panitia
RESTART IDENTITY CASCADE;

-- Menghapus seluruh data jadwal
TRUNCATE TABLE jadwal
RESTART IDENTITY CASCADE;

-- Menghapus seluruh data kelompok peserta
TRUNCATE TABLE kelompok_peserta
RESTART IDENTITY CASCADE;
