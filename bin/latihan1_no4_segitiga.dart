/// Representasi Bentuk Bangun Datar Segitiga menggunakan Named Constructor
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  /// Named Constructor [sikuSiku] untuk jenis Siku-Siku
  Segitiga.sikuSiku(this.alas, this.tinggi) : jenis = "Siku-siku";

  /// Named Constructor [samaSisi] untuk jenis Sama Sisi
  Segitiga.samaSisi(this.alas, this.tinggi) : jenis = "Sama sisi";

  /// Named Constructor [sembarang] untuk jenis Sembarang
  Segitiga.sembarang(this.alas, this.tinggi) : jenis = "Sembarang";

  /// Method Perhitungan Luas Segitiga
  /// Mengembalikan nilai bertipe [double]
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }

  /// Method untuk mencetak informasi detail dari bangun segitiga ini
  void cetakInformasi() {
    print('Jenis Segitiga: $jenis');
    print('Panjang Alas: $alas cm');
    print('Panjang Tinggi: $tinggi cm');
    print('Luas Area: ${hitungLuas()} cm persegi');
    print('-------------------');
  }
}

void main() {
  // Instansiasi objek melalui named constructors
  Segitiga s1 = Segitiga.sikuSiku(10.0, 15.0);
  Segitiga s2 = Segitiga.samaSisi(10.0, 10.0);
  Segitiga s3 = Segitiga.sembarang(8.0, 5.0);

  // Menampilkan informasi objek
  print('=== Detail Bangun Segitiga ===');
  s1.cetakInformasi();
  s2.cetakInformasi();
  s3.cetakInformasi();
}
