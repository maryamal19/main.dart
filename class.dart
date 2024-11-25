class Siswa {
  
  String nama;
  int umur;
  String kelas;
  double nilaiRataRata;

  
  Siswa(this.nama, this.umur, this.kelas, this.nilaiRataRata);

  
  void belajar() {
    print('$nama sedang belajar.');
  }

  void tampilkanInfo() {
    print('Nama: $nama');
    print('Umur: $umur');
    print('Kelas: $kelas');
    print('Nilai Rata-rata: $nilaiRataRata');
  }
}


void main() {
  
  var siswa1 = Siswa('ayam', 16, '11', 88.5);
  siswa1.belajar(); // Output: ayam sedang belajar.
  siswa1.tampilkanInfo();
  /*
  Output:
  Nama: ica
  Umur: 16
  Kelas: 11
  Nilai Rata-rata: 88.5
  */

  
  var siswa2 = Siswa('maryam', 17, '11', 92.3);
  siswa2.tampilkanInfo();
  /*
  Output:
  Nama: maryam
  Umur: 17
  Kelas: 11
  Nilai Rata-rata: 92.3
  */
}