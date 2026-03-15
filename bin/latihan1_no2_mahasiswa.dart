/// Representasi Data Mahasiswa dengan Nilai Default
class Mahasiswa {
  // Inisialisasi properti dengan default value
  String nama = "Belum terdaftar";
  String nim = "000000000";
  String jurusan = "Belum memilih jurusan";

  /// Method untuk mencetak informasi mahasiswa ke layar
  void cetakInformasi() {
    print('Nama lengkap: $nama');
    print('NIM: $nim');
    print('Jurusan: $jurusan');
    print('-------------------');
  }
}

void main() {
  // Membuat objek tanpa mengubah nilai default
  Mahasiswa mahasiswaBaru = Mahasiswa();

  print('=== Info Mahasiswa Bawaan ===');
  mahasiswaBaru.cetakInformasi();

  // Membuat objek kemudian memodifikasi nilai properti
  Mahasiswa mahasiswaLama = Mahasiswa();
  mahasiswaLama.nama = "Revi Arda Saputra";
  mahasiswaLama.nim = "231240001441";
  mahasiswaLama.jurusan = "Teknik Informatika";

  print('=== Info Mahasiswa Setelah Diubah ===');
  mahasiswaLama.cetakInformasi();
}
