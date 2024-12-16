import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            OptionCard(
              icon: Icons.transfer_within_a_station,
              label: 'Transferir',
              onPressed: () {
                // Navegar a la pantalla de agregar datos para realizar una transferencia
                Navigator.pushNamed(context, '/add');
              },
              color: Colors.blue,
            ),
            OptionCard(
              icon: Icons.account_balance_wallet,
              label: 'Ver Cuenta',
              onPressed: () {
                // Puedes agregar la funcionalidad para ver la cuenta aquí.
              },
              color: Colors.green,
            ),
            OptionCard(
              icon: Icons.help_outline,
              label: 'Ayuda',
              onPressed: () {
                // Funcionalidad para la pantalla de ayuda
              },
              color: Colors.orange,
            ),
            OptionCard(
              icon: Icons.settings,
              label: 'Configuración',
              onPressed: () {
                // Funcionalidad para configuración
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const OptionCard({
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
