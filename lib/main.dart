import 'package:firebase_crud/firebase_options.dart';
import 'package:firebase_crud/pages/aggnombre.dart';
import 'package:firebase_crud/pages/home.dart';
import 'package:firebase_crud/pages/pantalla1.dart';
import 'package:firebase_crud/pages/transferencia_exitosa.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banco Estado',
      theme: ThemeData(
        // Definir el color primario
        primaryColor: Colors.deepPurple, 
        // Crear una paleta de colores complementarios
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
            .copyWith(secondary: Colors.orange),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.lightBlue[50], // Fondo suave para la app

        // Estilos globales para los textos
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        
        // Personalización de los botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Color de texto del botón
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
        
        // Personalización del AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Color del AppBar
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      home: const Pantalla1(), // Pantalla inicial
      initialRoute: '/', 
      routes: {
        '/home': (context) => const Home(),
        '/add': (context) => const Aggnombre(),
        '/transferencia_exitosa': (context) => const TransferenciaExitosa(),
      },
    );
  }
}
