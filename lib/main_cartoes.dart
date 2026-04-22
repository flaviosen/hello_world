import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget cartao(String nome, String conta, String validade, List<Color> cores) {
    return Container(
      width: 330,
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: cores,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("BANCO SESI/SENAI",
              style: TextStyle(color: Colors.white, fontSize: 16)),

          const Spacer(),

          Text("Validade: $validade",
              style: TextStyle(color: Colors.white70)),

          Text(nome, style: TextStyle(color: Colors.white)),

          Text("Conta: $conta",
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cartao(
                "FLAVIO BUENO",
                "12345678-9",
                "12/28",
                [Colors.purple, Colors.deepPurple],
              ),

              cartao(
                "MARIA SILVA",
                "98765432-1",
                "08/27",
                [Colors.blue, Colors.lightBlue],
              ),

              cartao(
                "JOÃO SOUZA",
                "45678912-3",
                "05/29",
                [Colors.green, Colors.lightGreen],
              ),
            ],
          ),
        ),
      ),
    );
  }
}