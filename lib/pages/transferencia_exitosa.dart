import 'package:flutter/material.dart';

class TransferenciaExitosa extends StatelessWidget {
  const TransferenciaExitosa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferencia Exitosa'),
        backgroundColor: Colors.green, // Color de la barra superior
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100, // Tamaño grande para destacar el ícono
            ),
            const SizedBox(height: 20),
            const Text(
              '¡La transferencia se ha realizado con éxito!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24, // Tamaño grande para el texto
                fontWeight: FontWeight.bold,
                color: Colors.green, // Color del texto
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Color del botón
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ), // Tamaño del botón
              ),
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla anterior
              },
              child: const Text(
                'Volver',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
