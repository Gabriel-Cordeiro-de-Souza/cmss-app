import 'package:flutter/material.dart';
import 'web_screen.dart';  // Importa a WebScreen

class IpInputScreen extends StatelessWidget {
  const IpInputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _ipController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Digite o IP'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Por favor, insira o endereço IP:',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _ipController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Endereço IP',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Verifica se o IP foi inserido
                if (_ipController.text.isNotEmpty) {
                  // Navega para a WebScreen, passando o IP como parâmetro
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebScreen(title: 'Web Page', ipAddress: _ipController.text),
                    ),
                  );
                } else {
                  // Exibe um aviso caso o IP não tenha sido inserido
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor, insira um endereço IP')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
