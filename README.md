# Queue (Antrian) dengan Dart

Tugas Praktikum Pemrograman Mobile

- **Nama:** Aisyah Nur Sabrina
- **NIM:** H1D024128

## Deskripsi

Program ini membuat class `Queue` (antrian) menggunakan bahasa Dart dengan prinsip **FIFO (First In First Out)**: elemen yang masuk lebih dulu akan keluar lebih dulu. Struktur datanya memakai **linked list** (`Node`), tanpa `List` bawaan.

## Method

| Method | Fungsi |
|---|---|
| `enqueue(nilai)` | Menambahkan elemen ke belakang antrian |
| `pop()` | Menghapus dan mengembalikan elemen paling depan (`null` jika antrian kosong) |
| `tampilkan()` | Menampilkan isi antrian |

## Cara Menjalankan

**Lewat DartPad**
1. Buka [dartpad.dev](https://dartpad.dev/).
2. Copy isi `queue.dart` ke editor.
3. Klik **Run**.

**Lewat terminal**
```bash
dart run queue.dart
```

## Contoh Output

```
10 berhasil ditambahkan ke antrian
20 berhasil ditambahkan ke antrian
30 berhasil ditambahkan ke antrian
Isi antrian: [10, 20, 30]
10 dihapus dari antrian
Isi antrian: [20, 30]
```
