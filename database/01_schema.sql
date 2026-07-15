/*
====================================================
01_schema.sql
Project : Event Organizer Database
Description :
Berisi seluruh struktur database (DDL), termasuk
pembuatan tabel dan perubahan struktur database
menggunakan CREATE TABLE dan ALTER TABLE.
====================================================
*/

-- ==================================================
-- MASTER TABLES
-- ==================================================

-- Membuat tabel customer
CREATE TABLE customer (
    id_customer VARCHAR(10) PRIMARY KEY,
    nama_customer VARCHAR(150),
    penanggung_jawab VARCHAR(150),
    kontak_pj VARCHAR(150),
    jenis_customer VARCHAR(150)
);

-- Membuat tabel lokasi
CREATE TABLE lokasi (
    id_lokasi VARCHAR(10) PRIMARY KEY,
    nama_lokasi VARCHAR(150)
);

-- Membuat tabel kategori event
CREATE TABLE kategori_event (
    id_kategori VARCHAR(10) PRIMARY KEY,
    nama_kategori VARCHAR(100)
);

-- Membuat tabel sponsor
CREATE TABLE sponsor (
    id_sponsor VARCHAR(10) PRIMARY KEY,
    nama_company VARCHAR(100),
    jenis_sponsor VARCHAR(50),
    kategori_industri VARCHAR(100),
    kontak_sponsor VARCHAR(150)
);

-- ==================================================
-- EVENT TABLES
-- ==================================================

-- Membuat tabel peserta
CREATE TABLE peserta (
    id_peserta VARCHAR(10) PRIMARY KEY,
    nama_kelompok_peserta VARCHAR(150),
    jumlah_anggota INT
);

-- Membuat tabel event
CREATE TABLE event (
    id_event VARCHAR(10) PRIMARY KEY,
    nama_event VARCHAR(100),
    id_sponsor VARCHAR(10),
    uang_sponsor INT,
    id_penyelenggara VARCHAR(10),
    id_lokasi VARCHAR(10),
    id_kategori VARCHAR(10),
    id_peserta VARCHAR(10),

    CONSTRAINT fk_sponsor
        FOREIGN KEY (id_sponsor)
        REFERENCES sponsor(id_sponsor),

    CONSTRAINT fk_penyelenggara
        FOREIGN KEY (id_penyelenggara)
        REFERENCES penyelenggara(id_penyelenggara),

    CONSTRAINT fk_lokasi
        FOREIGN KEY (id_lokasi)
        REFERENCES lokasi(id_lokasi),

    CONSTRAINT fk_kategori_event
        FOREIGN KEY (id_kategori)
        REFERENCES kategori_event(id_kategori),

    CONSTRAINT fk_peserta
        FOREIGN KEY (id_peserta)
        REFERENCES peserta(id_peserta)
);

-- Membuat tabel jadwal
CREATE TABLE jadwal (
    id_jadwal VARCHAR(10) PRIMARY KEY,
    hari VARCHAR(10),
    tanggal DATE,
    id_event VARCHAR(10),

    CONSTRAINT fk_event
        FOREIGN KEY (id_event)
        REFERENCES event(id_event)
);

-- Membuat tabel tiket
CREATE TABLE tiket (
    id_tiket VARCHAR(10) PRIMARY KEY,
    harga_tiket INT,
    jumlah_tiket INT,
    id_jadwal VARCHAR(10),

    CONSTRAINT fk_jadwal
        FOREIGN KEY (id_jadwal)
        REFERENCES jadwal(id_jadwal)
);

-- Membuat tabel bayar
CREATE TABLE bayar (
    id_bayar VARCHAR(10) PRIMARY KEY,
    jenis_metode_bayar VARCHAR(100),
    total_bayar INT,
    id_tiket VARCHAR(10),
    id_peserta VARCHAR(10),

    CONSTRAINT fk_tiket
        FOREIGN KEY (id_tiket)
        REFERENCES tiket(id_tiket),

    CONSTRAINT fk_peserta
        FOREIGN KEY (id_peserta)
        REFERENCES peserta(id_peserta)
);

-- Membuat tabel pendapatan
CREATE TABLE pendapatan (
    id_pendapatan VARCHAR(10) PRIMARY KEY,
    id_event VARCHAR(10),
    id_bayar VARCHAR(10),
    total_uang_masuk INT,

    CONSTRAINT fk_event
        FOREIGN KEY (id_event)
        REFERENCES event(id_event),

    CONSTRAINT fk_bayar
        FOREIGN KEY (id_bayar)
        REFERENCES bayar(id_bayar)
);

-- Membuat tabel pengeluaran
CREATE TABLE pengeluaran (
    id_pengeluaran VARCHAR(10) PRIMARY KEY,
    total_pengeluaran VARCHAR(100),
    id_event VARCHAR(10),

    CONSTRAINT fk_event
        FOREIGN KEY (id_event)
        REFERENCES event(id_event)
);

-- Membuat tabel panitia
CREATE TABLE panitia (
    id_panitia VARCHAR(10) PRIMARY KEY,
    nama_panitia VARCHAR(100),
    id_penyelenggara VARCHAR(10),

    CONSTRAINT fk_penyelenggara
        FOREIGN KEY (id_penyelenggara)
        REFERENCES penyelenggara(id_penyelenggara)
);

-- Membuat tabel pelaksanaan
CREATE TABLE pelaksanaan (
    id_pelaksanaan VARCHAR(10) PRIMARY KEY,
    id_event VARCHAR(10),
    id_penyelenggara VARCHAR(10),
    id_lokasi VARCHAR(10),
    id_sponsor VARCHAR(10),
    id_kategori VARCHAR(10),
    id_panitia VARCHAR(10),
    id_tiket VARCHAR(10),
    id_bayar VARCHAR(10),
    id_peserta VARCHAR(10),
    id_pendapatan VARCHAR(10),
    id_pengeluaran VARCHAR(10),
    profit_event INT,
    status VARCHAR(7),

    CONSTRAINT fk_event
        FOREIGN KEY (id_event)
        REFERENCES event(id_event),

    CONSTRAINT fk_penyelenggara
        FOREIGN KEY (id_penyelenggara)
        REFERENCES penyelenggara(id_penyelenggara),

    CONSTRAINT fk_lokasi
        FOREIGN KEY (id_lokasi)
        REFERENCES lokasi(id_lokasi),

    CONSTRAINT fk_sponsor
        FOREIGN KEY (id_sponsor)
        REFERENCES sponsor(id_sponsor),

    CONSTRAINT fk_kategori
        FOREIGN KEY (id_kategori)
        REFERENCES kategori_event(id_kategori),

    CONSTRAINT fk_panitia
        FOREIGN KEY (id_panitia)
        REFERENCES panitia(id_panitia),

    CONSTRAINT fk_tiket
        FOREIGN KEY (id_tiket)
        REFERENCES tiket(id_tiket),

    CONSTRAINT fk_bayar
        FOREIGN KEY (id_bayar)
        REFERENCES bayar(id_bayar),

    CONSTRAINT fk_kelompok_peserta
        FOREIGN KEY (id_peserta)
        REFERENCES kelompok_peserta(id_peserta),

    CONSTRAINT fk_pendapatan
        FOREIGN KEY (id_pendapatan)
        REFERENCES pendapatan(id_pendapatan),

    CONSTRAINT fk_pengeluaran
        FOREIGN KEY (id_pengeluaran)
        REFERENCES pengeluaran(id_pengeluaran)
);

-- ==================================================
-- DATABASE MODIFICATION
-- ==================================================

-- Mengubah nama tabel peserta menjadi kelompok_peserta
ALTER TABLE peserta
RENAME TO kelompok_peserta;

-- Mengubah nama tabel penyelenggara menjadi customer
ALTER TABLE penyelenggara
RENAME TO customer;

-- Mengubah nama primary key customer
ALTER TABLE customer
RENAME COLUMN id_penyelenggara TO id_customer;

-- Mengubah nama kolom customer
ALTER TABLE customer
RENAME COLUMN nama_penyelenggara TO nama_customer;

-- Menambahkan atribut customer
ALTER TABLE customer
ADD COLUMN penanggung_jawab VARCHAR(150);

ALTER TABLE customer
ADD COLUMN kontak_pj VARCHAR(150);

ALTER TABLE customer
ADD COLUMN jenis_customer VARCHAR(150);

-- Menyesuaikan relasi pada tabel pelaksanaan
ALTER TABLE pelaksanaan
RENAME COLUMN id_penyelenggara TO id_customer;

ALTER TABLE pelaksanaan
DROP CONSTRAINT fk_penyelenggara;

ALTER TABLE pelaksanaan
ADD CONSTRAINT fk_customer
FOREIGN KEY (id_customer)
REFERENCES customer(id_customer);

-- Menambahkan atribut pada tabel pengeluaran
ALTER TABLE pengeluaran
ADD COLUMN sumber_pengeluaran VARCHAR(150);

-- Menambahkan atribut pada tabel pendapatan
ALTER TABLE pendapatan
ADD COLUMN sumber_pendapatan VARCHAR(150),
ADD COLUMN bukti_pendapatan VARCHAR(150),
ADD COLUMN modal_awal VARCHAR(150);
