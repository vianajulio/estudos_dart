main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);
  print(total);

  var nomes = ['Ana', 'Bia', 'Carlos', 'Junin', 'Joãozin', 'Luanzin'];
  print(nomes.reduce(juntar));
}

//a função reduce serve para reduzir algo, utilizando uma outra função validadora, os dados formam um novo conjunto
double somar(double acumulador, double elemento) {
  print("$acumulador += $elemento");
  return acumulador + elemento;
  // como aqui na função "somar", que pega os dois primeiros elementos e somam eles e os transformam no "acumulador",
  // os próximos elementos são somandos neste "acumudalor", como se fosse o +=.
}

//nesta função juntar será feita a concatenação dos elementos de uma lista.
String juntar(String acumulador, String elemento) {
  print("$acumulador => $elemento");
  return "$acumulador, $elemento";
}