import 'package:carros_antigos/models/carro.dart';
import 'package:flutter/material.dart';

class Anunciocard extends StatelessWidget {
  final Carro carro;

  const Anunciocard({super.key, required this.carro});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/${carro.imagem}',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carro.nome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '${carro.quilometragem}km - ${carro.ano} - ${carro.cor}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),

              Text(
                carro.preco,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '${carro.dataAnuncio.day.toString().padLeft(2, '0')}/'
                '${carro.dataAnuncio.month.toString().padLeft(2, '0')}/'
                '${carro.dataAnuncio.year} | ${carro.local}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
