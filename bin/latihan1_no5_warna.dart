/// Representasi Data Warna menggunakan Constant Constructor
class Warna {
  // Keyword final digunakan untuk mencegah perubahan nilai properti
  // Ini merupakan syarat wajib ketika menggunakan constant constructor
  final int red;
  final int green;
  final int blue;

  /// Constant Constructor
  /// Menjadikan objek bersifat immutable dan diletakkan pada memory secara konstan
  const Warna(this.red, this.green, this.blue);

  /// Helper format konversi warna RGB ke nilai Hexadesimal String
  String keHex() {
    return '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}'.toUpperCase();
  }

  /// Method tampilan informasi data Warna
  void cetakInformasi() {
    print('Nilai RGB: ($red, $green, $blue)');
    print('Kode Hex: ${keHex()}');
    print('-------------------');
  }
}

void main() {
  // Penggunaan keyword 'const' saat instansiasi objek
  // Memastikan objek bersifat compile-time constant
  const Warna warnaMerah = Warna(255, 0, 0);
  const Warna warnaHijau = Warna(0, 255, 0);
  const Warna warnaBiru = Warna(0, 0, 255);

  print('=== Kumpulan Palet Warna ===');
  warnaMerah.cetakInformasi();
  warnaHijau.cetakInformasi();
  warnaBiru.cetakInformasi();
}
