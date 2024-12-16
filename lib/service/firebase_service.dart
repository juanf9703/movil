import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final CollectionReference _personCollection =
      FirebaseFirestore.instance.collection('people');

  Future<void> addPerson(Map<String, dynamic> personaData) async {
    try {
      // Añadir los datos a la colección "people" en Firebase
      await _personCollection.add(personaData);
    } catch (e) {
      throw Exception('Error al guardar los datos en Firebase: $e');
    }
  }
}
