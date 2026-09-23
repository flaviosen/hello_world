import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class DistanciaCasaPage extends StatefulWidget {
  const DistanciaCasaPage({super.key});

  @override
  State<DistanciaCasaPage> createState() => _DistanciaCasaPageState();
}

class _DistanciaCasaPageState extends State<DistanciaCasaPage> {
  String distancia = 'Calculando...';

  // Coloque aqui as coordenadas da sua casa
  final double latitudeCasa = -21.46129194165774;
  final double longitudeCasa = -46.99454750435257;

  @override
  void initState() {
    super.initState();
    calcularDistancia();
  }

  Future<void> calcularDistancia() async {
    bool servicoAtivo = await Geolocator.isLocationServiceEnabled();

    if (!servicoAtivo) {
      setState(() {
        distancia = 'Ative o GPS do celular.';
      });
      return;
    }

    LocationPermission permissao = await Geolocator.checkPermission();

    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
    }

    if (permissao == LocationPermission.denied ||
        permissao == LocationPermission.deniedForever) {
      setState(() {
        distancia = 'Permissão de localização negada.';
      });
      return;
    }

    // Obtém a localização atual
    Position escola = await Geolocator.getCurrentPosition();

    // Calcula a distância em metros
    double distanciaMetros = Geolocator.distanceBetween(
      escola.latitude,
      escola.longitude,
      latitudeCasa,
      longitudeCasa,
    );

    // Converte para quilômetros
    double distanciaKm = distanciaMetros / 1000;

    setState(() {
      distancia = '${distanciaKm.toStringAsFixed(2)} km';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Distância até em casa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 80, color: Colors.red),
            const SizedBox(height: 20),
            const Text(
              'Distância entre a escola e minha casa:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              distancia,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: calcularDistancia,
              child: const Text('Calcular novamente'),
            ),
          ],
        ),
      ),
    );
  }
}
