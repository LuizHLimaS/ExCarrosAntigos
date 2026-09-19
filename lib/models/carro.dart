import 'package:intl/intl.dart';

class Carro {
  String nome;
  int quilometragemBruta;
  String ano;
  String cor;
  double valor;
  String local;
  String imagem;
  DateTime dataAnuncio;

  Carro({
    required this.nome,
    required this.quilometragemBruta,
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

  String get quilometragem {
    return NumberFormat.decimalPattern('pt_BR').format(quilometragemBruta);
  }
}

final List<Carro> listaCarrosMock = [
  Carro(
    nome: 'Volkswagen Brasilia LS 1.6',
    quilometragemBruta: 300000,
    ano: '1980',
    cor: 'Bege Ipanema',
    valor: 24900,
    local: 'São Paulo Zona Leste, São Paulo',
    imagem: 'Brasilia/1.png',
    dataAnuncio: DateTime(2026, 8, 19),
  ),
  Carro(
    nome: 'Mercedez Classe A CLASSIC 1.6',
    quilometragemBruta: 190000,
    ano: '2005',
    cor: 'Preto',
    valor: 20976,
    local: 'Atibaia, São Paulo',
    imagem: 'Classe A/1.png',
    dataAnuncio: DateTime(2024, 06, 10),
  ),
  Carro(
    nome: 'Renault Clio Expression 1.0 16v',
    quilometragemBruta: 89000,
    ano: '2014',
    cor: 'Preto',
    valor: 34900,
    local: 'Paraty, Rio de Janeiro',
    imagem: 'Clio/1.png',
    dataAnuncio: DateTime(2025, 02, 13),
  ),
  Carro(
    nome: 'Volkswagen Fusca 1300',
    quilometragemBruta: 52000,
    ano: '1968',
    cor: 'Azul Real',
    valor: 49900,
    local: 'Crato, Ceara',
    imagem: 'Fusca/1.png',
    dataAnuncio: DateTime(2026, 09, 18),
  ),
  Carro(
    nome: 'Volkswagen Gol Gl 1.6 AP',
    quilometragemBruta: 180000,
    ano: '1990',
    cor: 'Branco Star',
    valor: 19500,
    local: 'Xique Xique, Bahia',
    imagem: 'Gol/1.png',
    dataAnuncio: DateTime(2026, 04, 22),
  ),
  Carro(
    nome: 'Fiat Stilo Attractive 1.8 8v',
    quilometragemBruta: 209000,
    ano: '2011',
    cor: 'Prata',
    valor: 25000,
    local: 'Jandira, São Paulo',
    imagem: 'Stilo/1.png',
    dataAnuncio: DateTime(2025, 07, 30),
  ),
  Carro(
    nome: 'Fiat Uno Mille Electronic 1.0',
    quilometragemBruta: 204000,
    ano: '1995',
    cor: 'Vermelho',
    valor: 15000,
    local: 'Ribeirão Preto, São Paulo',
    imagem: 'Uno/1.png',
    dataAnuncio: DateTime(2026, 06, 02),
  ),
];
