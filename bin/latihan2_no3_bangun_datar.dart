// Latihan 2 Soal 3: Polymorphism

// Class Induk
class BangunDatar {
  void hitungLuas() {
    print('Menghitung luas bangun datar umum...');
  }
}

// Class Turunan (Persegi)
class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  // Mengubah implementasi asli (Override)
  @override
  void hitungLuas() {
    double luas = sisi * sisi;
    print('Luas persegi dengan sisi $sisi adalah: $luas');
  }
}

// Class Turunan (Segitiga)
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  // Mengubah implementasi asli (Override)
  @override
  void hitungLuas() {
    double luas = 0.5 * alas * tinggi;
    print('Luas segitiga dengan alas $alas dan tinggi $tinggi adalah: $luas');
  }
}

void main() {
  print('=== Soal 3 ===');
  // Memanfaatkan Polimorfisme: Objek turunan diinisialisasi dalam tipe data Induk
  BangunDatar bentuk1 = Persegi(4.0);
  BangunDatar bentuk2 = Segitiga(3.0, 5.0);

  // Memanggil metode fungsi yang akan berjalan sesuai dengan implementasi class turunannya
  bentuk1.hitungLuas();
  bentuk2.hitungLuas();
}
