class Data {
  int? dia;
  int? mes;
  int? ano;

  //Construtores

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  // Data([this.dia =1 , this.mes = 2, this.ano = 1990]); colchetes deixam os parâmetros do construtor a serem usados opcionalmente,
  //e é possível definir um valor padrão, caso nada seha inserido.

  // Construtores nomeados:

  // Data({this.dia, this.mes, this.ano}); colchetes deixam os parâmetros do construtor a serem usados opcionalmente.

  // Construtor com parâmetros obrigatórios
  Data(this.dia, this.mes, this.ano);

  // Construtor nomeado
  Data.com({this.dia = 1, this.mes = 2, this.ano = 1990});


  String dataFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString(){
    return dataFormatada();
  }
}

main() {
  var dataAniversario = new Data(13, 10, 2003);
  
  print('Data de nascimento: ${dataAniversario.dataFormatada()}');

  Data dataCompra = Data.com(dia: 22, mes: 10, ano: 2022);
  print(dataCompra.toString());

  var dataFinal = Data.com(dia: 22, mes: 10, ano: 2022);
  print('Data de exemplo: $dataFinal');
}