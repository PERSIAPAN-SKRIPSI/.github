import 'dart:io';

void main(List<String> args) {
  //membuat input suhu fahrenhit
  stdout.write('masukan suhu fahrenhit:');
  String? inputFahrenhit =stdin.readLineSync();

  //memastikan input tidak null

  if (inputFahrenhit != null && double.tryParse(inputFahrenhit)!=null) {
    double fahrenhit = double.parse(inputFahrenhit);

    //mengkonversikan suhu dari fahrenhit ke celcius
    double celcius = (5/9) *(fahrenhit -32);

    print('suhu didalam celcius: ${celcius.toString()}');
  } else {
    print('Input tidak valid, harap masukkan angka.');
  }
}