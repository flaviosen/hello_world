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
        appBar: AppBar(
          title: Text(
            "minha tela",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.thumb_up,
                size: 60,
              ),

              Text("D.S. e melhor cueso de SESI?", style: TextStyle(fontSize: 22)),
              
              ElevatedButton(
                onPressed: () {
                  print("Usuario clicou no botão de curtir");
                },
                child: Text("Curtir"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
