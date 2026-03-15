// Latihan 2 Soal 1: Inheritance

// Class Induk
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('$nama membuat suara.');
  }
}

// Class Anak (Turunan)
class Kucing extends Hewan {
  String jenisBulu;

  // Meneruskan nama ke class Induk melalui parameter 'super'
  Kucing(String nama, this.jenisBulu) : super(nama);

  // Override metode suara
  @override
  void suara() {
    print('$nama (jenis bulu $jenisBulu) mengeong: Meowww!');
  }
}

void main() {
  // Soal 1: Buat objek dari class Kucing dan panggil metode suara()
  print('=== Soal 1 ===');
  Kucing kucingku = Kucing('Luna', 'Anggora');
  kucingku.suara(); // Memanggil metode yang sudah di-override
}
