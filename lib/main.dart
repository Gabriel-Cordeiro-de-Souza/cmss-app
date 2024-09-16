import 'package:flutter/material.dart';
import 'screens/ip_input.dart';  // Importando o arquivo que contém a tela

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IP Input App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IpInputScreen(), // Carrega a tela de entrada de IP
    );
  }
}