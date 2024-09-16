import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class WebScreen extends StatefulWidget {
  static const String routeName = '/webScreen';
  const WebScreen({super.key, required this.title, required this.ipAddress});

  final String title;
  final String ipAddress;  // Recebe o endereço IP

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  String labelText = "CMSS APP";
  late WebViewXController webviewController;

  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ATENÇÃO",
          style: TextStyle(
            color: Colors.white, // Cor do texto
          ),
        ),
        backgroundColor: Colors.red, // Cor do fundo do AppBar
        centerTitle: true, // Centraliza o título
      ),
      body: Stack(
        children: [
          WebViewX(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            initialContent: '<h2>Carregando...</h2>',
            initialSourceType: SourceType.html,
            onWebViewCreated: (controller) {
              webviewController = controller;
              // Carrega a página da web usando o IP passado
              webviewController.loadContent(
                  'http://${widget.ipAddress}:8000/#/');
            },
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                SystemNavigator.pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Cor de fundo do botão
                foregroundColor: Colors.red, // Cor do texto do botão
              ),
              child: const Text('Dismiss'),
            ),
          ),
        ],
      ),
    );
  }
}
