# Event Organizer Database Management System

Sistem basis data untuk mengelola operasional **Event Organizer**, mulai dari data customer, event, peserta, sponsor, tiket, pembayaran, hingga laporan pendapatan dan pengeluaran.

Project ini dibuat sebagai implementasi konsep **Database Management System (DBMS)** menggunakan PostgreSQL.

---

## 📖 Tentang Project

Dalam sebuah Event Organizer, banyak data yang saling terhubung, seperti:

- Customer
- Event
- Sponsor
- Lokasi
- Kelompok Peserta
- Tiket
- Pembayaran
- Pendapatan
- Pengeluaran
- Panitia
- Jadwal

Seluruh data tersebut dirancang ke dalam sebuah database relasional agar proses penyimpanan, pengelolaan, dan pencarian data menjadi lebih mudah, cepat, serta terstruktur.

---

## ✨ Fitur Database

Database ini mendukung berbagai proses operasional, seperti:

- Mengelola data customer
- Mengelola data event
- Mengelola data sponsor
- Mengelola lokasi event
- Mengelola kelompok peserta
- Mengelola jadwal event
- Mengelola tiket
- Mengelola pembayaran
- Mengelola pendapatan
- Mengelola pengeluaran
- Mengelola panitia
- Menampilkan laporan menggunakan SQL Query

---

# 🗂️ Struktur Repository

```
.
├── assets/
│   └── erd.png
│
├── database/
│   ├── 01_schema.sql
│   ├── 02_seed_data.sql
│   ├── 03_data_manipulation.sql
│   └── 04_query_examples.sql
│
├── docs/
│   └── database_design.pdf
│
└── presentation/
    └── presentasi.pdf
```

---

# 🧩 Entity Relationship Diagram (ERD)

ERD berikut menunjukkan hubungan antar tabel pada database.

<p align="center">
  <img src="assets/erd.png" width="100%">
</p>

---

# 📂 Penjelasan Folder

| Folder | Deskripsi |
|---------|-----------|
| **assets** | Berisi aset pendukung project, termasuk Entity Relationship Diagram (ERD). |
| **database** | Berisi seluruh script SQL mulai dari pembuatan database, data awal, manipulasi data, hingga contoh query. |
| **docs** | Berisi dokumentasi perancangan database dalam bentuk PDF. |
| **presentation** | Berisi slide presentasi project yang digunakan saat pemaparan. |

---

# 🗃️ Isi Folder Database

| File | Deskripsi |
|------|-----------|
| **01_schema.sql** | Script pembuatan seluruh tabel beserta relasi (Primary Key & Foreign Key). |
| **02_seed_data.sql** | Script untuk mengisi data awal (dummy data) ke seluruh tabel. |
| **03_data_manipulation.sql** | Berisi operasi INSERT, UPDATE, DELETE, ALTER, dan TRUNCATE yang digunakan selama pengembangan database. |
| **04_query_examples.sql** | Berisi contoh query SQL untuk analisis dan pengambilan informasi dari database. |

---

# 🛠️ Teknologi

| Teknologi | Keterangan |
|-----------|------------|
| PostgreSQL | Database Management System |
| SQL | Query Language |
| Draw.io | Pembuatan ERD |
| Microsoft PowerPoint | Presentasi Project |

---

# 📊 Cakupan Database

Database ini terdiri dari beberapa tabel utama yang saling terhubung, antara lain:

- Customer
- Event
- Sponsor
- Lokasi
- Jadwal
- Tiket
- Kelompok Peserta
- Panitia
- Pembayaran
- Pendapatan
- Pengeluaran
- Pelaksanaan Event
- Kategori Event

---

# 🎯 Tujuan Project

Project ini dibuat untuk menerapkan konsep Database Management System (DBMS), meliputi:

- Perancangan Entity Relationship Diagram (ERD)
- Implementasi relasi antar tabel
- Pembuatan schema database
- Pengisian data awal (seed data)
- Manipulasi data menggunakan SQL
- Pembuatan query untuk kebutuhan analisis data

---

## 📌 Catatan

Project ini merupakan project akademik yang berfokus pada perancangan dan implementasi database menggunakan PostgreSQL sebagai studi kasus sistem manajemen Event Organizer.
