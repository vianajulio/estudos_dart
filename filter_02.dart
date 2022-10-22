//Função do tipo genérica, que faz a filtragem de elementos passado por seus parâmetros.
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2,7.3,6.8,5.4,2.7,9.3];
  //cria-se uma variável passando uma arrow function para ela, e faz uma validação.
  var notasBoasFn = (double nota) => nota >= 7.5;
  //no método filtrar pegará os dados da lista "notas" e fará a comparação utilizando a variável "notasBoasFn"
  var somenteNotasBoas = filtrar(notas, notasBoasFn);
  print(somenteNotasBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João']; 
  var nomesGrandesFn = (String nome) => nome.length >= 4;
  print(filtrar(nomes, nomesGrandesFn));
}