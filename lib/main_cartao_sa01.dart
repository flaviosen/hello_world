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
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // CURVA DECORATIVA
                  Positioned(
                    top: -70,
                    right: -70,
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white24,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  // SEGUNDA CURVA DECORATIVA
                  Positioned(
                    top: -45,
                    right: -45,
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white12,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  // BRILHO
                  Positioned(
                    top: -60,
                    left: -60,
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Colors.white24,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),

                  // NOME DO BANCO
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'BANCO SESI/SENAI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // CHIP
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Container(
                      width: 55,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFFE082),
                            Color(0xFFFFC107),
                            Color(0xFFFFA000),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Linha superior
                          Positioned(
                            top: 8,
                            left: 5,
                            right: 5,
                            child: Container(
                              height: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha inferior
                          Positioned(
                            bottom: 8,
                            left: 5,
                            right: 5,
                            child: Container(
                              height: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha esquerda
                          Positioned(
                            top: 5,
                            bottom: 5,
                            left: 12,
                            child: Container(
                              width: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha direita
                          Positioned(
                            top: 5,
                            bottom: 5,
                            right: 12,
                            child: Container(
                              width: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha central
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 26,
                            child: Container(
                              width: 2,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // VALIDADE
                  const Positioned(
                    top: 88,
                    left: 0,
                    child: Text(
                      'Validade 12/28',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  // NOME DO CLIENTE
                  const Positioned(
                    bottom: 42,
                    left: 0,
                    child: Text(
                      'FLAVIO BUENO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  // CONTA
                  const Positioned(
                    bottom: 22,
                    left: 0,
                    child: Text(
                      'Conta: 12345678-9',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  // LOGO DECORATIVO
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: SizedBox(
                      width: 55,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE53935),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFB300),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
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
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // CURVA DECORATIVA
                  Positioned(
                    top: -70,
                    right: -70,
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white24,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  // SEGUNDA CURVA DECORATIVA
                  Positioned(
                    top: -45,
                    right: -45,
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white12,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  // BRILHO
                  Positioned(
                    top: -60,
                    left: -60,
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Colors.white24,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),

                  // NOME DO BANCO
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'BANCO SESI/SENAI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // CHIP
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Container(
                      width: 55,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFFE082),
                            Color(0xFFFFC107),
                            Color(0xFFFFA000),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Linha superior
                          Positioned(
                            top: 8,
                            left: 5,
                            right: 5,
                            child: Container(
                              height: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha inferior
                          Positioned(
                            bottom: 8,
                            left: 5,
                            right: 5,
                            child: Container(
                              height: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha esquerda
                          Positioned(
                            top: 5,
                            bottom: 5,
                            left: 12,
                            child: Container(
                              width: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha direita
                          Positioned(
                            top: 5,
                            bottom: 5,
                            right: 12,
                            child: Container(
                              width: 2,
                              color: Colors.white54,
                            ),
                          ),

                          // Linha central
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 26,
                            child: Container(
                              width: 2,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // VALIDADE
                  const Positioned(
                    top: 88,
                    left: 0,
                    child: Text(
                      'Validade 12/28',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  // NOME DO CLIENTE
                  const Positioned(
                    bottom: 42,
                    left: 0,
                    child: Text(
                      'FLAVIO BUENO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  // CONTA
                  const Positioned(
                    bottom: 22,
                    left: 0,
                    child: Text(
                      'Conta: 12345678-9',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  // LOGO DECORATIVO
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: SizedBox(
                      width: 55,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE53935),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFB300),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
