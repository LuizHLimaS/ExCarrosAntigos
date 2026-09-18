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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: []),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
