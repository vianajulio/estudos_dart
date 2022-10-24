import 'dart:io';

class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro({required this.velocidadeMaxima});

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() / 5 == 0;
    if (deltaValido) {
    this._velocidadeAtual = novaVelocidade;
    } else {
      print('acelere de 5 em 5 km/h!');
    }
  }

  int acelerar(int acelerarAte) {
    for (; _velocidadeAtual < acelerarAte;) {
      _velocidadeAtual += 5;
      print(_velocidadeAtual);
    }
    return _velocidadeAtual;
  }

  int freiar(int freiarAte) {
    for (; _velocidadeAtual > freiarAte;) {
      _velocidadeAtual -= 5;
      print(_velocidadeAtual);
    }
    return _velocidadeAtual;
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
          : velocidade < _velocidadeAtual
              ? print('Acelere acima de ${_velocidadeAtual}km/h')
              : acelerar(velocidade);
      print('Velocidade atual: ${_velocidadeAtual}');
    } else if (acao == 'F') {
      print(
          'Deseja freiar até que velocidade? (Velocidade atual: ${_velocidadeAtual}km/h)');
      velocidade = int.parse(stdin.readLineSync().toString());

      velocidade < 0
          ? print('Seu limite para freiar até 0km/h')
          : velocidade > _velocidadeAtual
              ? print('Reduza até no máximo $_velocidadeAtual')
              : freiar(velocidade);
      print('Velocidade atual: ${_velocidadeAtual}');
    } else {
      print('Digite "A" para acelerar e "F" para freiar!');
    }
    limite();
    recomecar();
  }

  limite() {
    if (_velocidadeAtual == velocidadeMaxima) {
      print('Você está no limite, à ${_velocidadeAtual}km/h');
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