main() {
    var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var notasFinais = alunos
  // transforma um map e uma unica estrutura, chamada nota.
  .map((aluno) => aluno['nota'])
  // faz a conversão do 'nota' para double, já que ele entende que 'nota' é um Object
  .map((nota) =>(nota as double).roundToDouble())
  // pega somente os alunos que tem nota superior ou igual a 8.
  .where((nota) => nota >= 8);
  // faz a soma das notas dos alunos selecionados
  var total = notasFinais.reduce(((t, a) => t+ a));
  // mostra o valor da média e faz o calculo da média.
  print('O valor da média é: ${total / notasFinais.length}.');
}