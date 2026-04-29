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
      debugShowCheckedModeBanner: false,
      title: "Carteira Digital",
      home: CarteiraDigital(),
    );
  }
}

class CarteiraDigital extends StatelessWidget {
  const CarteiraDigital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carteira Digital"), centerTitle: true),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          CartaoBanco(
            corCartao: Colors.blue,
            banco: "Banco SESI",
            numero: "1234 5678 9012 3456",
            nome: "Flavio Henrique Bueno Izidoro",
            validade: "12/30",
            bandeira: "assets/images/mastercard.png",
          ),

          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Colors.orange,
            banco: "Inter",
            numero: "1234 5678 9012 3456",
            nome: "Flavio Henrique Bueno Izidoro",
            validade: "03/32",
            bandeira: "assets/images/mastercard.png",
          ),

          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Colors.deepPurple,
            banco: "Nubank",
            numero: "1234 5678 9012 3456",
            nome: "Flavio Henrique Bueno Izidoro",
            validade: "07/31",
            bandeira: "assets/images/mastercard.png",
          ),
        ],
      ),
    );
  }
}

class CartaoBanco extends StatelessWidget {
  final Color corCartao;
  final String banco;
  final String numero;
  final String nome;
  final String validade;
  final String bandeira;

  const CartaoBanco({
    super.key,
    required this.corCartao,
    required this.banco,
    required this.numero,
    required this.nome,
    required this.validade,
    required this.bandeira,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: corCartao,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                banco,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 160),

              Icon(Icons.contactless, color: Colors.white),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    bandeira,
                    width: 30,
                    height: 30,
                  )
                ],
              ),
            ],
          ),

          Icon(Icons.sim_card, color: Colors.amber, size: 40),

          Text(
            numero,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Titular",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),

                  Text(
                    nome,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Validade",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),

                  Text(
                    validade,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}