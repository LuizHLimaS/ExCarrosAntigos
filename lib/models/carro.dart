import 'package:intl/intl.dart';

class Carro {
  String nome;
  String quilometragem;
  String ano;
  String cor;
  double valor;
  String local;
  String imagem;
  DateTime dataAnuncio;

  Carro({
    required this.nome,
    required this.quilometragem,
    required this.ano,
    required this.cor,
    required this.valor,
    required this.local,
    required this.imagem,
    required this.dataAnuncio,
  });
  String get preco {
    final formatador = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
      decimalDigits: 2,
    );
    return formatador.format(valor);
  }
}
