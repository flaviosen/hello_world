import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaTeclados());
  }
}

class TelaTeclados extends StatefulWidget {
  final NetworkImageLoadException();
  final emailcontroller = TextEditingController();
  final idadeController = TextEditingController();
  final telefoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tipos de Teclados')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
         children: [
             // TEXTO PADRAO
            TextField(
              controller: nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "nome",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),


            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            Text("Telefone"),
            TextField(
              controller: telefoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Digite seu telefone",
                border: OutlineInputBorder(),
              ),
            ),

          ],
        ),
      ),
    );
  }