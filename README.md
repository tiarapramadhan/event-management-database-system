# Event Organizer Database Management System

Sistem basis data relasional untuk mengelola operasional **Event Organizer**, mulai dari pengelolaan customer, event, sponsor, peserta, tiket, pembayaran, hingga laporan pendapatan dan pengeluaran.

Project ini dibuat sebagai implementasi konsep **Database Management System (DBMS)** menggunakan **PostgreSQL**.

---

## 📖 Tentang Project

Mengelola sebuah Event Organizer melibatkan banyak data yang saling berhubungan, seperti data customer, event, sponsor, lokasi, panitia, peserta, transaksi pembayaran, hingga laporan keuangan.

Melalui project ini, seluruh data tersebut dirancang ke dalam sebuah **database relasional** sehingga proses penyimpanan, pengelolaan, pencarian, dan analisis data dapat dilakukan secara lebih terstruktur, efisien, serta mudah dikembangkan.

---

## 📌 Ruang Lingkup Database

| Modul | Deskripsi |
|--------|-----------|
| 👥 Customer | Mengelola data customer penyelenggara event. |
| 🎉 Event | Mengelola informasi event yang diselenggarakan. |
| 🤝 Sponsor | Mengelola data sponsor beserta kontribusinya. |
| 📍 Lokasi | Mengelola lokasi pelaksanaan event. |
| 📅 Jadwal | Mengelola jadwal pelaksanaan setiap event. |
| 🎟️ Tiket | Mengelola data tiket beserta harga dan jumlah tiket. |
| 👨‍👩‍👧‍👦 Kelompok Peserta | Mengelola data kelompok peserta yang mengikuti event. |
| 👨‍💼 Panitia | Mengelola data panitia penyelenggara. |
| 💳 Pembayaran | Mengelola transaksi pembayaran peserta. |
| 💰 Pendapatan | Mengelola seluruh pemasukan event. |
| 💸 Pengeluaran | Mengelola seluruh biaya operasional event. |
| 📊 Pelaksanaan | Menghubungkan seluruh data operasional event menjadi satu kesatuan. |

---

## 🗺️ Entity Relationship Diagram (ERD)

Diagram berikut menunjukkan hubungan antar tabel yang digunakan pada database.

<p align="center">
  <img src="assets/erd.png" alt="Entity Relationship Diagram" width="100%">
</p>

---

## 📁 Struktur Repository

```text
.
├── assets/
│   └── erd.png
│
├── data/
│   └── dummy_data.xlsx
│
├── database/
│   ├── 01_schema.sql
│   ├── 02_seed_data.sql
│   ├── 03_data_manipulation.sql
│   └── 04_query_examples.sql
│
├── presentation/
│   └── sistem-basis-data-manajemen-event.pdf
│
└── README.md
```

---

## 📂 Penjelasan Repository

| Folder / File | Deskripsi |
|----------------|-----------|
| **assets** | Berisi aset pendukung project berupa **Entity Relationship Diagram (ERD)**. |
| **data** | Berisi file **dummy_data.xlsx** yang digunakan sebagai referensi data awal sebelum diimplementasikan ke database. |
| **database** | Berisi seluruh script SQL mulai dari pembuatan struktur database, pengisian dummy data, manipulasi data, hingga contoh query SQL. |
| **presentation** | Berisi file **sistem-basis-data-manajemen-event.pdf** yang digunakan sebagai media presentasi project. |

---

## 🗃️ Database Scripts

| File | Deskripsi |
|------|-----------|
| **01_schema.sql** | Script pembuatan seluruh tabel, relasi, Primary Key, dan Foreign Key. |
| **02_seed_data.sql** | Script pengisian **dummy data** ke seluruh tabel database. |
| **03_data_manipulation.sql** | Berisi operasi manipulasi data seperti **INSERT**, **UPDATE**, **DELETE**, **ALTER TABLE**, dan **TRUNCATE**. |
| **04_query_examples.sql** | Berisi berbagai contoh query SQL untuk pencarian, filtering, JOIN, agregasi, dan analisis data. |

---

## 🛠️ Teknologi yang Digunakan

| Teknologi | Kegunaan |
|------------|----------|
| PostgreSQL | Database Management System (DBMS) |
| SQL | Bahasa untuk mengelola dan memanipulasi database |
| Draw.io | Perancangan Entity Relationship Diagram (ERD) |
| Microsoft Excel | Penyusunan dummy data |
| Microsoft PowerPoint | Pembuatan slide presentasi |

---

## 🎯 Tujuan Project

Project ini bertujuan untuk mengimplementasikan konsep dasar **Database Management System (DBMS)** melalui studi kasus sistem manajemen Event Organizer, meliputi:

- Merancang struktur database relasional.
- Membuat Entity Relationship Diagram (ERD).
- Membangun tabel beserta relasi antar entitas.
- Mengisi database menggunakan dummy data.
- Melakukan manipulasi data menggunakan SQL.
- Menyusun berbagai query SQL untuk kebutuhan pencarian dan analisis data.

---

## 📝 Catatan

Project ini merupakan implementasi akademik pada mata kuliah **Sistem Basis Data** dengan studi kasus **Manajemen Event Organizer**. Fokus utama project adalah perancangan database relasional, implementasi SQL, serta pengelolaan data menggunakan PostgreSQL.
