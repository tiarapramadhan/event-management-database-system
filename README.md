# 📊 Sistem Basis Data Manajemen Event

Repository ini merupakan dokumentasi proyek perancangan dan implementasi **Sistem Basis Data Manajemen Event** menggunakan PostgreSQL.

Proyek ini dibuat untuk mendukung proses pengelolaan data pada sebuah Event Organizer (EO), mulai dari data customer, event, peserta, sponsor, jadwal, transaksi pembayaran, pendapatan, pengeluaran, hingga pelaksanaan event.

Seluruh database dirancang menggunakan konsep **Relational Database Management System (RDBMS)** sehingga setiap data saling terhubung melalui relasi (Primary Key dan Foreign Key) untuk menjaga konsistensi dan integritas data.

---

# 🎯 Tujuan Proyek

Project ini bertujuan untuk:

- Merancang struktur database yang terorganisir dan terintegrasi.
- Mengimplementasikan relasi antar tabel menggunakan Primary Key dan Foreign Key.
- Melakukan operasi pengelolaan data (Create, Read, Update, Delete).
- Menyediakan contoh query SQL sebagai implementasi pengolahan data.
- Mendokumentasikan proses perancangan database secara lengkap.

---

# 🗂️ Struktur Repository

```
.
├── assets/
│   ├── database-preview.png
│   ├── database-schema.png
│   └── erd.png
│
├── database/
│   ├── 01_schema.sql
│   ├── 02_seed_data.sql
│   ├── 03_data_manipulation.sql
│   └── 04_query_examples.sql
│
├── docs/
│   └── database-design.pdf
│
├── presentation/
│   └── sistem-basis-data-manajemen-event.pdf
│
└── README.md
```

---

# 📁 Penjelasan Folder

## assets/

Berisi aset visual yang digunakan untuk memperjelas struktur database.

### ERD (Entity Relationship Diagram)

Menampilkan hubungan antar entitas beserta relasi Primary Key dan Foreign Key.

### Database Schema

Menampilkan struktur tabel beserta atribut yang dimiliki setiap tabel.

### Database Preview

Menampilkan tampilan data hasil implementasi database.

---

## database/

Berisi seluruh script SQL yang digunakan selama pengembangan database.

### 01_schema.sql

Script pembuatan seluruh tabel database beserta relasi antar tabel menggunakan Primary Key dan Foreign Key.

### 02_seed_data.sql

Script pengisian data awal (dummy data) ke setiap tabel sehingga database dapat langsung digunakan untuk pengujian.

### 03_data_manipulation.sql

Berisi contoh operasi manipulasi data seperti:

- INSERT
- UPDATE
- DELETE
- ALTER TABLE
- TRUNCATE

### 04_query_examples.sql

Berisi kumpulan contoh query SQL untuk mengambil informasi dari database, seperti:

- JOIN
- GROUP BY
- ORDER BY
- COUNT
- LIMIT
- Filtering Data

---

## docs/

Berisi dokumen perancangan database yang menjelaskan proses desain database secara lebih rinci.

---

## presentation/

Berisi file presentasi yang digunakan untuk menjelaskan keseluruhan proyek Sistem Basis Data Manajemen Event.

---

# 🗃️ Struktur Database

Database ini terdiri dari beberapa entitas utama, di antaranya:

- Customer
- Event
- Sponsor
- Lokasi
- Kategori Event
- Panitia
- Kelompok Peserta
- Jadwal
- Tiket
- Pembayaran
- Pendapatan
- Pengeluaran
- Pelaksanaan Event

Seluruh tabel saling terhubung menggunakan relasi untuk menjaga integritas data dan meminimalkan redundansi.

---

# ✨ Fitur Database

Database mendukung berbagai proses pengelolaan data, seperti:

- Manajemen data event
- Manajemen customer
- Manajemen sponsor
- Manajemen peserta
- Manajemen jadwal
- Manajemen tiket
- Manajemen pembayaran
- Manajemen pendapatan
- Manajemen pengeluaran
- Monitoring status pelaksanaan event
- Analisis data menggunakan query SQL

---

# 📄 Dokumentasi

Repository ini juga dilengkapi dengan dokumentasi berupa:

- Entity Relationship Diagram (ERD)
- Database Schema
- Database Preview
- Database Design
- Presentasi Proyek

Dokumentasi tersebut membantu memahami proses perancangan hingga implementasi database secara menyeluruh.

---

# 💻 Teknologi yang Digunakan

- PostgreSQL
- SQL
- Relational Database Management System (RDBMS)

---

# 📌 Catatan

Repository ini dibuat sebagai dokumentasi implementasi Sistem Basis Data Manajemen Event dan bertujuan untuk menunjukkan proses perancangan database mulai dari desain, implementasi, manipulasi data, hingga contoh penggunaan query SQL.
