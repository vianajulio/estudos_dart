import '../../_model/venda_produtos/cliente.dart';
import '../../_model/venda_produtos/produto.dart';
import '../../_model/venda_produtos/venda.dart';
import '../../_model/venda_produtos/venda_item.dart';

main() {
  var venda = Venda(
    cliente: Cliente(nome: 'Julio', cpf: '123.456.789-00'),
    itens: <VendaItem>[
      VendaItem(
        produto: Produto(
          codigo: 1,
          nome: 'Água',
          preco: 2.99,
          desconto: 0.4,
        ),
        quantidade: 2,
      ),
      VendaItem(
        produto: Produto(
          codigo: 2,
          nome: 'Pepsi',
          preco: 3.50,
          desconto: 0.0,
        ),
        quantidade: 5,
      ),
      VendaItem(
        produto: Produto(
          codigo: 3,
          nome: 'Sonho',
          preco: 4.50,
          desconto: 0.0,
        ),
        quantidade: 2,
      ),
    ],
  );

  print("O valor total da venda foi: ${venda.valorTotal}");
}
