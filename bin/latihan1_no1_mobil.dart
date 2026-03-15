/// Representasi Entitas Mobil dalam OOP
class Mobil {
  // Deklarasi Properti
  String merk;
  String model;
  int tahun;
  bool mesinMenyala = false;

  /// Constructor untuk inisialisasi objek [Mobil]
  Mobil(this.merk, this.model, this.tahun);

  /// Method untuk mengubah status properti [mesinMenyala] menjadi true
  void nyalakanMesin() {
    mesinMenyala = true;
    print('Brumm.. Mesin $merk $model sudah menyala!');
  }

  /// Method untuk menampilkan informasi lengkap terkait entitas mobil
  void cetakInformasi() {
    print('Merk mobil: $merk');
    print('Model mobil: $model');
    print('Tahun rilis: $tahun');
    print('Status Mesin: ${mesinMenyala ? "Nyala" : "Mati"}');
    print('-------------------');
  }
}

void main() {
  // Instansiasi objek Mobil
  Mobil mobil1 = Mobil('Toyota', 'Avanza', 2022);
  Mobil mobil2 = Mobil('Honda', 'Civic', 2023);

  // Pemanggilan method cetakInformasi
  print('=== Data Mobil ===');
  mobil1.cetakInformasi();
  mobil2.cetakInformasi();

  // Pengujian method nyalakanMesin
  mobil2.nyalakanMesin();
  mobil2.cetakInformasi();
}
