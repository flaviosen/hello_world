import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContadorCurtida());
  }
}

class ContadorCurtida extends StatefulWidget {
  const ContadorCurtida({super.key});

  @override
  _ContadorCurtidaState createState() => _ContadorCurtidaState();
}

class _ContadorCurtidaState extends State<ContadorCurtida> {
  int contador = 0;


  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Like / Dislike")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.favorite, size: 60, color: Colors.red),

            const SizedBox(height: 20),

            Text(
              "$contador curtidas",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton.icon(
                  onPressed: incrementar,
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("Like"),
                ),

                const SizedBox(width: 20),

                ElevatedButton.icon(
                  onPressed: decrementar,
                  icon: const Icon(Icons.thumb_down),
                  label: const Text("Dislike"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}