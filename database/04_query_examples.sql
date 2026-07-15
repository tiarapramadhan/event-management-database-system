/*
===========================================================
 FILE 04 : QUERY EXAMPLES
-----------------------------------------------------------
 Berisi kumpulan contoh query SQL untuk proses analisis,
 pencarian data, filtering, agregasi, dan JOIN.

 Digunakan sebagai referensi penggunaan database
 Event Organizer Management System.
===========================================================
*/

------------------------------------------------------------
-- Menampilkan event dengan pemasukan terbesar
------------------------------------------------------------

SELECT
    e.id_event,
    kp.nama_kelompok_peserta,
    kp.jumlah_anggota,
    p.total_uang_masuk
FROM pendapatan p
JOIN pelaksanaan e
    ON p.id_event = e.id_event
JOIN kelompok_peserta kp
    ON e.id_peserta = kp.id_peserta
ORDER BY
    p.total_uang_masuk DESC,
    kp.jumlah_anggota DESC
LIMIT 1;

------------------------------------------------------------
-- Menampilkan data kelompok peserta tertentu
------------------------------------------------------------

SELECT *
FROM kelompok_peserta
WHERE id_peserta = 'PST11';

------------------------------------------------------------
-- Menampilkan relasi pelaksanaan dan event
------------------------------------------------------------

SELECT
    pelaksanaan.id_pelaksanaan,
    event.id_event
FROM pelaksanaan
FULL JOIN event
ON pelaksanaan.id_event = event.id_event;

------------------------------------------------------------
-- Menghitung jumlah data berdasarkan ID Pelaksanaan
------------------------------------------------------------

SELECT
    id_pelaksanaan,
    status,
    COUNT(*) AS jumlah_data
FROM pelaksanaan
GROUP BY
    id_pelaksanaan,
    status;

------------------------------------------------------------
-- Menampilkan relasi peserta dan pembayaran
------------------------------------------------------------

SELECT
    kelompok_peserta.nama_kelompok_peserta,
    bayar.id_bayar
FROM kelompok_peserta
FULL JOIN bayar
ON kelompok_peserta.id_peserta = bayar.id_peserta;

------------------------------------------------------------
-- Menampilkan pendapatan minimal 10 juta
------------------------------------------------------------

SELECT
    id_pendapatan,
    total_uang_masuk
FROM pendapatan
WHERE total_uang_masuk >= 10000000
ORDER BY id_pendapatan DESC;

------------------------------------------------------------
-- Perbandingan status event
------------------------------------------------------------

SELECT
    status,
    COUNT(*) AS jumlah_event
FROM pelaksanaan
GROUP BY status;

------------------------------------------------------------
-- Menghitung jumlah event gagal
------------------------------------------------------------

SELECT
    COUNT(*) AS event_gagal
FROM pelaksanaan
WHERE status = 'gagal';
