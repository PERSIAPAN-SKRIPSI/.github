//Studi Kasus: Kategori Usia
// Misalkan kita ingin membuat aplikasi sederhana yang menerima input usia seseorang, kemudian menampilkan kategori usia berdasarkan rentang umur tertentu. Berikut adalah kategorinya:
//
// Usia 0-12: Anak-anak
// Usia 13-17: Remaja
// Usia 18-59: Dewasa
// Usia 60 ke atas: Lansia


void main (){
  //mmebuat varibael usia
  int usia = 10000;
  switch(usia){
    case 0: case 1: case 2: case 3: case 4: case 5:
    case 6: case 7: case 8: case 9: case 10: case 11:
    case 12:
      print('Kategori: Anak-anak');
      break;

    case 13: case 14: case 15: case 16: case 17:
    print('Kategori: Remaja');
    break;
    default :
      if (usia >= 18 && usia <=60) {
        print('kategori:  dewasa ');
      }
      else if (usia >= 80 && usia <= 120){
        print ('Ketegori : Lansia');
      }
      else {
        print('ketegori : tidak valid');
      }
      break;
  }
}