import 'package:carros_antigos/models/carro.dart';
import 'package:carros_antigos/views/widgets/anuncioCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carros antigos',
      home: Scaffold(
        appBar: AppBar(title: Text('Compre um carro!')),
        body: Container(
          color: const Color.fromARGB(255, 230, 229, 229),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: listaCarrosMock.length,
              itemBuilder: (context, index) {
                final carroAtual = listaCarrosMock[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Anunciocard(carro: carroAtual),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
