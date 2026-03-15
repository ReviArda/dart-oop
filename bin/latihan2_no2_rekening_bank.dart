// Latihan 2 Soal 2: Encapsulation

class RekeningBank {
  // Properti saldo bersifat private dengan menggunakan awalan underscore '_'
  double _saldo;

  // Constructor 
  RekeningBank(this._saldo);

  // Getter (untuk memeriksa sisa saldo tanpa bisa mengubah secara langsung)
  double get cekSaldo => _saldo;

  // Metode untuk menyetor uang
  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('Berhasil setor uang senilai Rp$jumlah');
    } else {
      print('Gagal setor uang: Jumlah harus lebih dari 0.');
    }
  }

  // Metode untuk menarik uang
  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Berhasil menarik uang senilai Rp$jumlah');
    } else {
      print('Gagal menarik uang: Saldo tidak mencukupi atau jumlah tidak valid.');
    }
  }
}

void main() {
  print('=== Soal 2 ===');
  
  // Membuat objek RekeningBank dengan saldo awal Rp50.000
  RekeningBank rekening = RekeningBank(50000.0);
  
  print('Saldo Awal: Rp${rekening.cekSaldo}');

  // Melakukan transaksi
  rekening.setor(10000.0);
  print('Saldo saat ini: Rp${rekening.cekSaldo}');

  rekening.tarik(20000.0);
  print('Saldo saat ini: Rp${rekening.cekSaldo}');

  // Mencoba menarik uang melebih saldo yang ada
  rekening.tarik(70000.0);
}
