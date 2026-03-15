// Latihan 2 Soal 4: Abstraction

// Abstract class (konsep abstrak yang tidak bisa menjadi objek langsung)
abstract class Bentuk {
  // Metode abstrak tanpa ada implementasi
  void hitungLuas();
}

// Class Anak (Lingkaran)
class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  // Harus merealisasikan isi dari metode abstrak milik parent-nya
  @override
  void hitungLuas() {
    double luas = 3.14 * jariJari * jariJari;
    print('Luas lingkaran dengan jari-jari $jariJari adalah: $luas');
  }
}

void main() {
  print('=== Soal 4 ===');
  // Membuat objek dari class turunan
  Bentuk roda = Lingkaran(10.0);
  
  // Memanggil metode hitungLuas yang telah diselesaikan di dalam Lingkaran
  roda.hitungLuas();
}
