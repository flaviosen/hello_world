import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 330,
            height: 200,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF6A1B9A),
                  Color(0xFF9C27B0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15,
                  offset: Offset(0, 8),
                )
              ],
            ),

            child: Stack(
              children: [

                // CURVA DECORATIVA
                Positioned(
                  top: -50,
                  right: -50,
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white24, width: 1),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),

                // NOME DO BANCO
                const Positioned(
                  top: 0,
                  left: 0,
                  child: Text(
                    "BANCO SESI/SENAI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // CHIP REALISTA
                Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                    width: 55,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFE082),
                          Color(0xFFFFC107),
                          Color(0xFFFFA000),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        // linhas internas do chip
                        Positioned(
                          top: 8,
                          left: 5,
                          right: 5,
                          child: Container(height: 2, color: Colors.white54),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 5,
                          right: 5,
                          child: Container(height: 2, color: Colors.white54),
                        ),
                        Positioned(
                          top: 5,
                          bottom: 5,
                          left: 12,
                          child: Container(width: 2, color: Colors.white54),
                        ),
                        Positioned(
                          top: 5,
                          bottom: 5,
                          right: 12,
                          child: Container(width: 2, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ),

                // VALIDADE
                const Positioned(
                  top: 100,
                  left: 0,
                  child: Text(
                    "Validade 12/28",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ),

                // NOME DO CLIENTE
                const Positioned(
                  bottom: 45,
                  left: 0,
                  child: Text(
                    "FLAVIO BUENO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),

                // CONTA
                const Positioned(
                  bottom: 25,
                  left: 0,
                  child: Text(
                    "Conta: 12345678-9",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),

                // LOGO (tipo Mastercard)
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),

                // BRILHO (efeito premium)
                Positioned(
                  top: -20,
                  left: -20,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Colors.white.withOpacity(0.15),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}