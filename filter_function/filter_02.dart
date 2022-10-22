List<double> filtrar<double>(List<double> lista, bool Function(double) fn) {
  List<double> listaFiltrada = [];
  for (double elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2,7.3,6.8,5.4,2.7,9.3];
  var notasBoasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar(notas, notasBoasFn);
  print(somenteNotasBoas);
}