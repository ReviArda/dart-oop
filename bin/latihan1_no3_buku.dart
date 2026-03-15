/// Representasi Entitas Buku menggunakan Parameterized Constructor
class Buku {
  // Deklarasi Properti
  String judul;
  String pengarang;
  int jumlahHalaman;

  /// Parameterized Constructor
  /// Mengharuskan pengisian nilai pada saat pembuatan instansiasi objek
  Buku(this.judul, this.pengarang, this.jumlahHalaman);

  /// Method untuk menampilkan informasi objek buku
  void cetakInformasi() {
    print('Judul Buku: $judul');
    print('Nama Pengarang: $pengarang');
    print('Tebal Buku: $jumlahHalaman halaman');
    print('-------------------');
  }
}

void main() {
  // Instansiasi objek beserta penugasan nilai parameter
  Buku buku1 = Buku('Laskar Pelangi', 'Andrea Hirata', 529);
  Buku buku2 = Buku('Bumi Manusia', 'Pramoedya Ananta Toer', 535);

  // Pemanggilan method informasi
  print('=== Daftar Buku Perpustakaan ===');
  buku1.cetakInformasi();
  buku2.cetakInformasi();
}
