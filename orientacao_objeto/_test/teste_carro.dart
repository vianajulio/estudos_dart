import 'dart:io';

import '../_model/carro.dart';

main() {
  var c1 = Carro(velocidadeMaxima: 200);
  c1.velocidadeAtual = 10;

  print(c1.velocidadeAtual);

  var acao = AcaoCarro(carro: c1 , velocidadeMaxima: c1.velocidadeMaxima);
  acao.acaoCarro();
  
}
