class Data {
  int? dia;
  int? mes;
  int? ano;

  String dataFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString(){
    return dataFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 13;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2003;

  print('Data de nascimento: ${dataAniversario.dataFormatada()}');
  // print('Data de nascimneto: ${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');

  Data dataCompra = Data();
  dataCompra.dia = 22;
  dataCompra.mes = 10;
  dataCompra.ano = 2022;

  print('Data da compra: ${dataCompra.dataFormatada()}');
  // print('Data da compra: ${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');
  print(dataCompra.toString());
}