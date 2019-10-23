import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/login.dart';
import 'package:hola/opiniones.dart';
import 'package:hola/perfil.dart';
import 'package:hola/preguntas.dart';
import 'package:hola/vistaProducto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        VistaProducto.ruta: (context) => VistaProducto(), 
        Opinion.ruta: (context) => Opinion(),
        Pregunta.ruta: (context) => Pregunta(),
        Perfil.ruta: (context) => Perfil(),
      },
      theme: new ThemeData(primarySwatch: Colors.brown),
      title: "Mercado de cosas",
      home: Scaffold(
        appBar: AppBar(title: Text("Mercado de cosas")),
        body: LoginScreen(),
      ),
    );
  }
}

