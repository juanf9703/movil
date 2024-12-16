import 'package:flutter/material.dart';
import 'package:firebase_crud/service/firebase_service.dart';

class Aggnombre extends StatefulWidget {
  const Aggnombre({super.key});

  @override
  State<Aggnombre> createState() => _AggnombreState();
}

class _AggnombreState extends State<Aggnombre> {
  final TextEditingController rutController = TextEditingController();
  final TextEditingController cuentaController = TextEditingController();

  Future<void> saveData() async {
    String rut = rutController.text.trim();
    String cuenta = cuentaController.text.trim();

    // Validación para asegurarse de que los campos no estén vacíos
    if (rut.isEmpty || cuenta.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, completa todos los campos.')),
      );
      return;
    }

    // Crear el mapa con los datos a guardar
    Map<String, dynamic> personaData = {
      'rut': rut,
      'numero_cuenta': cuenta,
    };

    try {
      // Llamar a FirebaseService para guardar los datos
      await FirebaseService().addPerson(personaData);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Datos guardados correctamente')),
      );
      Navigator.pop(context); // Volver a la pantalla anterior
    } catch (e) {
      // Manejar cualquier error que ocurra durante el proceso de guardado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al guardar los datos: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AGREGAR CUENTA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: rutController,
              decoration: const InputDecoration(
                hintText: 'Ingresa RUT',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: cuentaController,
              decoration: const InputDecoration(
                hintText: 'Ingresa número de cuenta',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: saveData,
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
