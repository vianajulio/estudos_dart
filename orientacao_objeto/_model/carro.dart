import 'dart:io';

class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual;

  Carro({required this.velocidadeMaxima, this.velocidadeAtual = 0});

  int acelerar(int acelerarAte) {
    for (; velocidadeAtual < acelerarAte;) {
      velocidadeAtual += 5;
      print(velocidadeAtual);
    }
    return velocidadeAtual;
  }

  int freiar(int freiarAte) {
    for (; velocidadeAtual > freiarAte;) {
      velocidadeAtual -= 5;
      print(velocidadeAtual);
    }
    return velocidadeAtual;
  }
}

class AcaoCarro extends Carro {
  Object carro;
  AcaoCarro({required this.carro, required super.velocidadeMaxima});

  acaoCarro() {
    int velocidade = 0;
    print('Deseja acelarar(A)? ou freiar(F)?');
    var acao = stdin.readLineSync().toString().toUpperCase();

    if (acao == 'A') {
      print('Deseja acelarar até que velocidade? (Máximo: $velocidadeMaxima)');
      velocidade = int.parse(stdin.readLineSync().toString());
      velocidade > velocidadeMaxima
          ? print('Seu limite para acelerar é ${velocidadeMaxima}km/h !!!')
          : velocidade < velocidadeAtual
              ? print('Acelere acima de ${velocidadeAtual}km/h')
              : acelerar(velocidade);
      print('Velocidade atual: ${velocidadeAtual}');
    } else if (acao == 'F') {
      print(
          'Deseja freiar até que velocidade? (Velocidade atual: ${velocidadeAtual}km/h)');
      velocidade = int.parse(stdin.readLineSync().toString());

      velocidade < 0
          ? print('Seu limite para freiar até 0km/h')
          : velocidade > velocidadeAtual
              ? print('Reduza até no máximo $velocidadeAtual')
              : freiar(velocidade);
      print('Velocidade atual: ${velocidadeAtual}');
    } else {
      print('Digite "A" para acelerar e "F" para freiar!');
    }
    limite();
    recomecar();
  }

  limite() {
    if (velocidadeAtual == velocidadeMaxima) {
      print('Você está no limite, à ${velocidadeAtual}km/h');
    } else {
      print('Acelera ai poxa :)');
    }
  }

  recomecar() {
    print('Deseja fazer uma ação? S ou N?');
    var recomecar = stdin.readLineSync().toString().toUpperCase();

    if (recomecar == 'S' || recomecar == 'N')
      recomecar == 'S' ? acaoCarro() : null;
  }
}