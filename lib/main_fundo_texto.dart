import 'package:flutter/material.dart';

//Run | Debug | Profile
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/imagem de fundo.jpg"),
              fit: BoxFit.fitHeight,
            )
          ),
          child: const Center(
            child: Text(
              "SENAI",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 222, 16, 16),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
       ),
      ),
    );
  }
}