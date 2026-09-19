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

final List<Carro> listaCarrosMock = [
  Carro(
    nome: 'Volkswagen Brasilia LS 1.6',
    quilometragem: '800.000km',
    ano: '1980',
    cor: 'Bege Ipanema',
    valor: 40000.00,
    local: 'São Paulo Zona Leste, São Paulo',
    imagem: 'Brasilia/1.png',
    dataAnuncio: DateTime(2026, 8, 19),
  ),
  Carro(
    nome: 'Mercedez Classe A CLASSIC 1.6',
    quilometragem: '240.000km',
    ano: '2005',
    cor: 'Preto',
    valor: 25000.00,
    local: 'Atibaia, São Paulo',
    imagem: 'Classe A/1.png',
    dataAnuncio: DateTime(2024, 06, 10),
  ),
  Carro(
    nome: 'Renault Clio Expression 1.0 16v',
    quilometragem: '105.000km',
    ano: '2014',
    cor: 'Preto',
    valor: 35000.00,
    local: 'Paraty, Rio de Janeiro',
    imagem: 'Clio/1.png',
    dataAnuncio: DateTime(2025, 02, 13),
  ),
  Carro(
    nome: 'Volkswagen Fusca 1300',
    quilometragem: '60.000km',
    ano: '1968',
    cor: 'Azul Real',
    valor: 80000.00,
    local: 'Crato, Ceara',
    imagem: 'Fusca/1.png',
    dataAnuncio: DateTime(2026, 09, 18),
  ),
  Carro(
    nome: 'Volkswagen Gol Gl 1.6 AP',
    quilometragem: '300.000km',
    ano: '1990',
    cor: 'Branco Star',
    valor: 20000.00,
    local: 'Xique Xique, Bahia',
    imagem: 'Gol/1.png',
    dataAnuncio: DateTime(2026, 04, 22),
  ),
  Carro(
    nome: 'Fiat Stilo Attractive 1.8 8v',
    quilometragem: '209.000km',
    ano: '2011',
    cor: 'Prata',
    valor: 25000.00,
    local: 'Jandira, São Paulo',
    imagem: 'Stilo/1.png',
    dataAnuncio: DateTime(2025, 07, 30),
  ),
  Carro(
    nome: 'Fiat Uno Mille Electronic 1.0',
    quilometragem: '300.000km',
    ano: '1995',
    cor: 'Vermelho',
    valor: 15000.00,
    local: 'Ribeirão Preto, São Paulo',
    imagem: 'Uno/1.png',
    dataAnuncio: DateTime(2026, 06, 02),
  ),
];
